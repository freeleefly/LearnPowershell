借助 PowerShell 中的 Where-Object cmdlet，可以测试管道中的每个对象，并沿管道仅传递满足特定测试条件的对象。 将从管道中删除未通过测试的对象。 测试条件以 FilterScript 参数值的形式提供。

FilterScript 值是计算结果为 True 或 False 的脚本块 ，即由大括号 ({}) 括起来的一个或多个 PowerShell 命令。 

出于分析考虑，<、> 和 = 等符号不用作比较运算符。 相反，比较运算符由字母组成。 下表中列出了基本比较运算符。

比较运算符	|含义|	示例（返回 True）
:-:|:-:|:-:
-eq	|等于|	1 -eq 1
-ne	|不等于|	1 -ne 2
-lt	|小于|	1 -lt 2
-le	|小于或等于|	1 -le 2
-gt	|大于|	2 -gt 1
-ge	|大于或等于|	2 -ge 1
-like	|相似（文本的通配符比较）|	"file.doc" -like "f*.do?"
-notlike	|不相似（文本的通配符比较）|	"file.doc" -notlike "p*.doc"
-contains|	包含|	1,2,3 -contains 1
-notcontains	|不包含|	1,2,3 -notcontains 4

 `-and` 逻辑运算符
