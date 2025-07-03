# ���û�����־�ļ���
$summaryLog = "compile_summary.log"
if (Test-Path $summaryLog) {
    Remove-Item $summaryLog -Force
}

# ��ȡ���� .tex �ļ�
$texFiles = Get-ChildItem -Filter *.tex
Write-Host "�ҵ� $($texFiles.Count) �� .tex �ļ���"
Add-Content $summaryLog "�ҵ� $($texFiles.Count) �� .tex �ļ���`n"

# ����һ���������ڴ洢�����ļ���
$failedFiles = @()

# ����ÿ�� .tex �ļ�
foreach ($file in $texFiles) {
    $msg = "���ڱ���: $($file.Name)..."
    Write-Host $msg
    Add-Content $summaryLog $msg

    # ִ�� pdflatex��ѹ�����
    pdflatex -interaction=nonstopmode $file.FullName > $null 2>&1

    # ����Ƿ���� Fatal error
    $logFile = "$($file.BaseName).log"
    $hasError = $false
    if (Test-Path $logFile) {
        $hasError = Select-String -Path $logFile -Pattern "Fatal error" -Quiet -Encoding UTF8
    }

    if ($hasError) {
        $msg = "����ʧ��: $($file.Name)"
        Write-Host $msg -ForegroundColor Red
        Add-Content $summaryLog $msg
        $failedFiles += $file.Name

        # ɾ�������м��ļ�
        Remove-Item "$($file.BaseName).out", "$($file.BaseName).toc" -Force -ErrorAction SilentlyContinue
    }
    else {
        $msg = "����ɹ�: $($file.Name)"
        Write-Host $msg -ForegroundColor Green
        Add-Content $summaryLog $msg

        # ɾ���м��ļ�
        Remove-Item "$($file.BaseName).aux", "$($file.BaseName).log", "$($file.BaseName).out", "$($file.BaseName).toc" -Force -ErrorAction SilentlyContinue
    }

    Add-Content $summaryLog ""
}

# ���ձ���
if ($failedFiles.Count -eq 0) {
    $msg = "`n�����ļ�����ɹ���"
    Write-Host $msg
    Add-Content $summaryLog $msg
}
else {
    $msg = "`n�����ļ��ڱ���ʱ����(��־�ļ� .log �ѱ�������"
    Write-Host $msg -ForegroundColor Yellow
    Add-Content $summaryLog $msg

    foreach ($f in $failedFiles) {
        Write-Host $f -ForegroundColor Yellow
        Add-Content $summaryLog $f
    }
}
