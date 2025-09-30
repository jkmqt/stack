# COOL语言栈数据结构实现

本仓库包含使用COOL（Classroom Object-Oriented Language）实现栈数据结构的代码及实验报告，用于演示面向对象编程在数据结构实现中的应用。

## 仓库内容
- `stack.cl`：COOL语言实现的栈代码，包含栈的初始化、压栈（push）、弹栈（pop）、取栈顶（top）和判空（is_empty）等操作。
- `stack_experiment_report.pdf`：实验报告，详细说明设计思路、实现过程及测试结果。
- `README.md`：项目说明及运行指南。


### 编译与运行步骤
1. 克隆本仓库到本地：
   ```bash
   git clone https://github.com/jkmqt/stack.git
   cd 你的仓库名
2.使用 coolc 编译 stack.cl 文件，生成 MIPS 汇编代码（.s 文件）：
coolc stack.cl
3.使用 spim 模拟器运行汇编代码：spim -file stack.s
4.观察输出结果，验证栈的各项功能是否正常（测试内容包含在 stack.cl 的 Main 类中）。