## 编译流程
- 预处理
- 编译
- 汇编
- 链接

### 预处理
- 宏展开和头文件替换
`gcc -E main.c -o main.i`

### 编译
- c代码转成汇编代码
`gcc -fno-asynchronous-unwind-tables -S main.i`

### 汇编
- 汇编代码转成对应的二进制形势的cpu指令
`gcc -c main.s`

### 链接
- 代码之间的引用关系管理起来，生成程序
`gcc main.o`
