import csv
import os
from typing import List, Tuple

def validate_student_id(student_id: str) -> str:
    """
    验证并标准化学号
    如果是4位简写，则在前面加上52437091
    """
    student_id = student_id.strip()
    
    if len(student_id) == 4 and student_id.isdigit():
        # 4位简写，加上前缀
        return "52437091" + student_id
    elif len(student_id) == 12 and student_id.isdigit():
        # 12位全写
        return student_id
    else:
        raise ValueError("学号格式不正确，应为4位或12位数字")

def validate_scores(scores: List[str]) -> List[float]:
    """
    验证分数格式并转换为浮点数
    """
    if len(scores) != 8:
        raise ValueError("必须输入8个题目的分数")
    
    validated_scores = []
    for i, score in enumerate(scores):
        try:
            score_float = float(score.strip())
            if score_float < 0:
                raise ValueError(f"第{i+1}题分数不能为负数")
            validated_scores.append(score_float)
        except ValueError:
            raise ValueError(f"第{i+1}题分数格式不正确：{score}")
    
    return validated_scores

def parse_input_line(line: str) -> Tuple[str, List[float]]:
    """
    解析输入行，返回学号和分数列表
    """
    parts = line.strip().split()
    
    if len(parts) != 9:
        raise ValueError("输入格式错误，应为：学号 题1分数 题2分数 ... 题8分数（共9个数据）")
    
    student_id = validate_student_id(parts[0])
    scores = validate_scores(parts[1:])
    
    return student_id, scores

def save_to_csv(student_id: str, scores: List[float], total_score: float, filename: str = "grades.csv"):
    """
    将成绩记录保存到CSV文件
    """
    file_exists = os.path.exists(filename)
    
    with open(filename, 'a', newline='', encoding='utf-8') as csvfile:
        fieldnames = ['学号'] + [f'第{i}题' for i in range(1, 9)] + ['总分']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        
        # 如果文件不存在，写入表头
        if not file_exists:
            writer.writeheader()
        
        # 写入数据
        row_data = {'学号': student_id, '总分': total_score}
        for i, score in enumerate(scores):
            row_data[f'第{i+1}题'] = score
        
        writer.writerow(row_data)

def main():
    """
    主程序
    """
    print("=== 学生成绩录入系统 ===")
    print("输入格式：学号 题1分数 题2分数 题3分数 ... 题8分数")
    print("学号可以是4位简写或12位全写")
    print("输入 'quit' 或 'exit' 退出程序")
    print("=" * 40)
    
    while True:
        try:
            # 获取用户输入
            user_input = input("\n请输入学生成绩（学号 + 8个题目分数）：").strip()
            
            # 检查是否要退出
            if user_input.lower() in ['quit', 'exit', '退出']:
                print("程序已退出")
                break
            
            if not user_input:
                print("输入不能为空，请重新输入")
                continue
            
            # 解析输入
            student_id, scores = parse_input_line(user_input)
            
            # 计算总分
            total_score = sum(scores)
            
            # 保存到CSV文件
            save_to_csv(student_id, scores, total_score)
            
            # 显示结果
            print(f"\n录入成功！")
            print(f"{student_id}：{', '.join(map(str, scores))}：{total_score}")
            
        except ValueError as e:
            print(f"输入错误：{e}")
            print("请按照正确格式重新输入")
        except KeyboardInterrupt:
            print("\n\n程序被用户中断")
            break
        except Exception as e:
            print(f"发生错误：{e}")
            print("请重新输入")

if __name__ == "__main__":
    main()