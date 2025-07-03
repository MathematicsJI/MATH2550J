# 设置汇总日志文件名
$summaryLog = "compile_summary.log"
if (Test-Path $summaryLog) {
    Remove-Item $summaryLog -Force
}

# 获取所有 .tex 文件
$texFiles = Get-ChildItem -Filter *.tex
Write-Host "找到 $($texFiles.Count) 个 .tex 文件。"
Add-Content $summaryLog "找到 $($texFiles.Count) 个 .tex 文件。`n"

# 创建一个数组用于存储出错文件名
$failedFiles = @()

# 编译每个 .tex 文件
foreach ($file in $texFiles) {
    $msg = "正在编译: $($file.Name)..."
    Write-Host $msg
    Add-Content $summaryLog $msg

    # 执行 pdflatex，压制输出
    pdflatex -interaction=nonstopmode $file.FullName > $null 2>&1

    # 检查是否包含 Fatal error
    $logFile = "$($file.BaseName).log"
    $hasError = $false
    if (Test-Path $logFile) {
        $hasError = Select-String -Path $logFile -Pattern "Fatal error" -Quiet -Encoding UTF8
    }

    if ($hasError) {
        $msg = "编译失败: $($file.Name)"
        Write-Host $msg -ForegroundColor Red
        Add-Content $summaryLog $msg
        $failedFiles += $file.Name

        # 删除部分中间文件
        Remove-Item "$($file.BaseName).out", "$($file.BaseName).toc" -Force -ErrorAction SilentlyContinue
    }
    else {
        $msg = "编译成功: $($file.Name)"
        Write-Host $msg -ForegroundColor Green
        Add-Content $summaryLog $msg

        # 删除中间文件
        Remove-Item "$($file.BaseName).aux", "$($file.BaseName).log", "$($file.BaseName).out", "$($file.BaseName).toc" -Force -ErrorAction SilentlyContinue
    }

    Add-Content $summaryLog ""
}

# 最终报告
if ($failedFiles.Count -eq 0) {
    $msg = "`n所有文件编译成功。"
    Write-Host $msg
    Add-Content $summaryLog $msg
}
else {
    $msg = "`n以下文件在编译时出错(日志文件 .log 已保留）："
    Write-Host $msg -ForegroundColor Yellow
    Add-Content $summaryLog $msg

    foreach ($f in $failedFiles) {
        Write-Host $f -ForegroundColor Yellow
        Add-Content $summaryLog $f
    }
}
