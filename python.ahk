

;注意输入括号时候, 会跟搜狗shift切换中英文bug, 所以把搜狗切换中英文快捷键设置为无就行勒
global Netdelay:=500        ; 不写global, 函数穿透不进去

global  sousuo="www.baidu.com"














;这种全局定义要写在所有代码的前面才能让所有代码起作用.
SetCapsLockState , AlwaysOff
SetNumlockState, AlwaysOn
GroupAdd, DisableBracketAuto , PyCharm   ;注意这种语句要放最前面才起作用
GroupAdd, DisableBracketAuto , 牛客网   ;注意这种语句要放最前面才起作用
GroupAdd, DisableBracketAuto , IDEA   ;注意这种语句要放最前面才起作用
GroupAdd, DisableBracketAuto , GoLand   ;注意这种语句要放最前面才起作用
GroupAdd, DisableBracketAuto , Android Studio   ;注意这种语句要放最前面才起作用
GroupAdd, DisableBracketAuto , Xshell   ;注意这种语句要放最前面才起作用
GroupAdd, DisableBracketAuto , Evaluate   ;注意这种语句要放最前面才起作用
GroupAdd, DisableBracketAuto , SunAwtFrame   ;注意这种语句要放最前面才起作用
GroupAdd, DisableBracketAuto , rider   ;注意这种语句要放最前面才起作用
;GroupAdd, DisableBracketAuto , wpf   ;注意这种语句要放最前面才起作用
GroupAdd, DisableBracketAuto , 微信开发者工具   ;注意这种语句要放最前面才起作用
GroupAdd, DisableBracketAuto , CLion    ;注意这种语句要放最前面才起作用
GroupAdd, DisableBracketAuto , clion64    ;注意这种语句要放最前面才起作用
GroupAdd, DisableBracketAuto ,SunAwtFrame;注意这种语句要放最前面才起作用
GroupAdd, DisableBracketAuto , clion    ;注意这种语句要放最前面才起作用
GroupAdd, DisableBracketAuto , .cpp    ;注意这种语句要放最前面才起作用
GroupAdd, DisableBracketAuto , .c    ;注意这种语句要放最前面才起作用
GroupAdd, DisableBracketAuto , VNC    ;注意这种语句要放最前面才起作用
GroupAdd, DisableBracketAuto , bash      ;注意这种语句要放最前面才起作用
GroupAdd, DisableBracketAuto , cmd      ;注意这种语句要放最前面才起作用
GroupAdd, DisableBracketAuto , Microsoft Visual Studio      ;注意这种语句要放最前面才起作用
;GroupAdd, DisableBracketAuto , @      ;注意这种语句要放最前面才起作用


GroupAdd, docker , Xshell    ;注意这种语句要放最前面才起作用
GroupAdd, docker , cmd    ;注意这种语句要放最前面才起作用
GroupAdd, docker , bash    ;注意这种语句要放最前面才起作用


GroupAdd, CopyEnable , Xshell    ;注意这种语句要放最前面才起作用
;GroupAdd, CopyEnable , VNC    ;注意这种语句要放最前面才起作用
GroupAdd, CopyEnable , cmd    ;注意这种语句要放最前面才起作用
GroupAdd, CopyEnable , bash      ;注意这种语句要放最前面才起作用
;GroupAdd, CopyEnable , Chrome      ;注意这种语句要放最前面才起作用
;GroupAdd, CopyEnable , PyCharm      ;注意这种语句要放最前面才起作用
GroupAdd, game , 星际争霸      ;注意这种语句要放最前面才起作用
GroupAdd, game , Warcraft      ;注意这种语句要放最前面才起作用

SetTitleMatchMode, 2

SetTitleMatchMode, slow



































CapsLock & 7::SendInput ^{w}



CapsLock & f::SendInput 210102198908124112


;变量的计算复制用:=   不用=



;今天又进行了优化. 剪贴板里面如果有github.com也直接进入网址!



fun(x)
{


try{

If RegExMatch(x, "^www")
{

 run %x%
}


else if  RegExMatch(x, "^http")
{

 run %x%
}

else if  RegExMatch(x, "^https")
{

 run %x%
}


else if  RegExMatch(x, "^github.com")
{

DRIVE_LETTER=www.


a= %DRIVE_LETTER%%x%


 run  %a%
}



else{


run %sousuo%

sleep %Netdelay%

Send ^v
Send {enter}
}

}catch 
{run %sousuo%
}






    return   ; "Return" 期望 表达式.
}



;今天又进行了优化. 剪贴板里面如果有github.com也直接进入网址!



fun2(x)
{


try{

If RegExMatch(x, "^www")
{

 run %x%
}


else if  RegExMatch(x, "^http")
{

 run %x%
}

else if  RegExMatch(x, "^https")
{

 run %x%
}


else if  RegExMatch(x, "^github.com")
{

DRIVE_LETTER=www.


a= %DRIVE_LETTER%%x%


 run  %a%
}



else{


run %sousuo%

sleep %Netdelay%

Send ^v


}

}catch 
{run %sousuo%
}






    return   ; "Return" 期望 表达式.
}


#IfWinActive  ahk_group CopyEnable

^b::

Send ^{insert}
x=%clipboard%

fun2(x)
return 






#IfWinNotActive  ahk_group CopyEnable

^b::

Send ^c
x=%clipboard%
fun(x)

return 



:*:whiel::while
return 



 
#IFWinNotActive eoiuolkdjakfja;dsjfdsf   ;作为上面星际结束符.













CapsLock & p::send print(){left}
:*:;d::

SetKeyDelay, 90
sleep ,30
x=%clipboard%
sleep ,30
FormatTime, d, LongDate,yyyy-MM-dd,H点mm
sleep ,30
clipboard = %d%
sleep ,30
Send ^v
sleep,30
clipboard=%x%
return


#b::

Send ^c
run https://www.google.com/
sleep %Netdelay%
Send ^v
Send {enter}
return

















;需要写一个按照像素移动鼠标的功能,做cv用,当然photoshop也可以使用.


CapsLock & Up::
MouseMove, 0, -1, 10, R
return


CapsLock & Down::
MouseMove, 0, 1, 10, R
return


CapsLock & Left::
MouseMove, -1, 0, 10, R
return


CapsLock & Right::
MouseMove, 1, 0, 10, R
return


CapsLock & 9::
send ,{PgUp}
return

CapsLock & 0::
send ,{PgDn}
return









;如何选中光标当前字.就是模拟鼠标敲2下的操作.







/*
linux下调试还是用gdb

还是用autohotkey来控制吧,没找到linux设置输入快捷键的方法

*/








/*
$+9::  
SetKeyDelay, 30  
t=%clipboard%
clipboard=
x=%clipboard%


send {(}
send {)}
send {left}

clipboard=%t%
return



*/


































/*
^t::
ime_status:=DllCall("GetKeyboardLayout","int",0,UInt)  ;返回值的低位字包含了输入语言的语言标识符，高位字包含了键盘物理布局的句柄。


;获取67699721这个输入法代码
return 
*/


/*
^t::
ime_status:=DllCall("GetKeyboardLayout","int",0,UInt)


;获取67699721这个输入法代码和134481924
return 
*/














/*注意dll的名字可能跟windowsapi里面名字不一样,0表示空指针,并且注释一定要把*斜杠单独写一样才行,挺bug
*/

/*
调用windows Api .第一个参数是函数名,后面是type和参数值.
;下面这个是创建文件夹的.
^t::
DllCall("CreateDirectory", "Str", "dsaf",Ptr, 0)
return 


*/

;好想废了insert这个建的功能,但是没找到api,但是因为有些软件insert跟其他软件insert相反,所以还是保留着吧,
;如果找到了底层api能锁定上就好了




; 这个函数 是修改输入法



switchime(ime )
{
    if (ime = 1){
        DllCall("SendMessage", UInt, WinActive("A"), UInt, 80, UInt, 1, UInt, DllCall("LoadKeyboardLayout", Str,"00000804", UInt, 1))
    }else if (ime = 0)
    {
        DllCall("SendMessage", UInt, WinActive("A"), UInt, 80, UInt, 1, UInt, DllCall("LoadKeyboardLayout", Str,, UInt, 1))
    }else if (ime = "A")
    {
        ;ime_status:=DllCall("GetKeyboardLayout","int",0,UInt)
        Send, #{Space}
		
		
}
}


/*
;下面写一个读取输入法的.

^t::
ime_status:=DllCall("GetKeyboardLayout","int",0,UInt)
StringLeft, ime_status, ime_status, 1  ;

if (%ime_status%=="1"){

}
else
{

}

return 



^y::
ime_status:=DllCall("LoadKeyboardLayout", Str,, "67699721", 1)
if (%ime_status%>99999999){

}

return 

*/











#f::
If WinActive("Everything"){
WinMinimize,A
return
}
Run "C:\Program Files\Everything\Everything.exe"

return



;注意11平台会禁止用win见.注意一下别大惊小怪.


#c::
SetKeyDelay, 1
switchime(0)
If WinActive("cmd.exe")  {
switchime(0)
WinMinimize,A


return 
}

If WinExist("cmd.exe")
{


WinActivate
switchime(0) ;写在激活的后面才行.
return 
}

else
{


run, cmd
switchime(0)
a=%clipboard%
sleep, 200
MouseClick, left, A_ScreenWidth/2, A_ScreenHeight/2   ;居中点一下

send,{enter}  ;这个点一下操作会清空clipborad,重新赋值一下即可.简单
clipboard=%a%
return
}
return


!c::
run cmd
return 













#a::
SetKeyDelay, 1
If WinActive("360")  {
WinMinimize,A
return 
}
If WinExist("360"){
WinActivate 

return
}
else{
run  "C:\Users\zhangbo340\AppData\Roaming\360se6\Application\360se.exe"
  ;为了防止alt点开菜单栏
return
}

return





;下面部署多环境切换.因为公司电脑的配置和自己电脑不同,所以用逻辑判断来兼容.














!b::


if FileExist("D:\zhangbo340\Desktop\gapa.exe")
{run   D:\zhangbo340\Desktop\gapa.exe
}

else if FileExist("C:\Users\Administrator\Desktop\gapa.exe"){
run C:\Users\Administrator\Desktop\gapa.exe
}


else if FileExist("C:\Users\Administrator\Desktop\Gamma Panel.exe"){
run C:\Users\Administrator\Desktop\Gamma Panel.exe
}


return 





#x::

SetKeyDelay, 1
If WinActive("笔记.txt")  {
WinMinimize,A

return 
}
If WinExist("笔记.txt"){

WinActivate

return
}
else{

if FileExist("D:\zhangbo340\Desktop\笔记.txt")
{run   D:\zhangbo340\Desktop\笔记.txt
WinActivate ,Notepad
}

else{
run C:\Users\Administrator\Desktop\笔记.txt
sleep 300 ; 不sleep的话,电脑容易反应不过来下面的代码
WinActivate ,Notepad
}


  ;为了防止alt点开菜单栏
WinActivate

return
}

return





;!x用来记录一些村文本. #x用来记录笔记
!x::

SetKeyDelay, 1
If WinActive("Notepad")  {
WinMinimize,A

return 
}
If WinExist("Notepad"){

WinActivate

return
}
else{

if FileExist("D:\zhangbo340\Desktop\笔记.txt")
{run   notepad++
WinActivate ,Notepad
}

else{
run notepad++
sleep 300 ; 不sleep的话,电脑容易反应不过来下面的代码
WinActivate ,Notepad
}


  ;为了防止alt点开菜单栏
WinActivate

return
}

return











































^u::
SetKeyDelay, 30

send, ^c
x = %clipboard%
StringUpper, x, x
clipboard = %x%
send, ^v

return 


#z::
SetKeyDelay, 1
switchime(0)
If WinActive("Xshell"){
WinMinimize,A
return 
}
If WinExist("Xshell"){

WinActivate
switchime(0)

}
else{

Run "C:\Program Files (x86)\NetSarang\Xmanager Enterprise 5\Xshell.exe"
switchime(0)

}


return 





!z::
SetKeyDelay, 1
switchime(0)
If WinActive("Xshell"){
WinMinimize,A
return 
}
If WinExist("Xshell"){

WinActivate
switchime(0)

}
else{

Run "C:\Program Files (x86)\NetSarang\Xshell 6\Xshell.exe"
switchime(0)

}


return 







































; 切换至sougou   调用这个函数即可switchime(1)
; 切换至英文  调用这个函数即可 switchime(0)




















/*

;gc克隆代码


*/




:*:;gc::
SetKeyDelay, 30
x=%clipboard%
d=%x%
clipboard=git clone %d%
Send, +{Ins}
sleep,0.01
clipboard=%x%
Send {enter}
return









































!g::
run D:\zhangbo340\Desktop\个人信息.txt

return






















;通过if else已经完美的利用alt+x 启动笔记和最小化笔记,唤起笔记了.





























;下面我要实现的功能是想在一段话左右加括号,只需要选中这段话之后按下shift+9就行.等号右边的变量需要加双%,其实还是有bug存在
;当剪贴板内容和选择内容相同时候有bug,所以如果你要复制一段话到一个新地方并且加上括号.就先复制话,然后输入括号再粘贴即可.顺序反了就出不来.目前只有这个一个bug
























#IFWinNotActive Xshell;dsjfdsf





CapsLock & n::SendInput {_}




CapsLock & ,::SendInput {+}
CapsLock & .::SendInput {=}


;用;p来替换书写经常不好使,因为输入多个字符替换可能会bug
; caplock表示右,ctrl+caplock切换大小写
CapsLock::SendInput {Right}    ;这样改就避免冲突了









; 下面写这个使用方法: 加f 表示词跳转, 加shift表示连续选择, 松开表示不加这些东西.


CapsLock & f:: flag_C=1 ;小写d代替control键，实现跨词移动
CapsLock & f UP:: flag_C=0
CapsLock & shift:: flag_S=1 ;小写d代替control键，实现跨词移动
CapsLock & shift UP:: flag_S=0

shift & CapsLock:: flag_S=1 ;小写d代替control键，实现跨词移动
shift & CapsLock UP:: flag_S=0


;/**************CapsLock + j：左移************************/
CapsLock & j:: 
if flag_C 
{ 
if flag_S 
Send, ^+{Left} 
else 
Send, ^{Left} 
return 
} 
else 
{ 
if flag_S 
Send, +{Left} 
else 
Send, {Left} 
} 
return


;/**************CapsLock + l：右移************************/
CapsLock & l:: 
if flag_C 
{ 
if flag_S 
Send, ^+{Right} 
else 
Send, ^{Right} 
return 
} 
else 
{ 
if flag_S 
Send, +{Right} 
else 
Send, {Right} 
} 
return

;/**************CapsLock + i：上移************************/
CapsLock & i:: 
if flag_C 
{ 
if flag_S 
Send, +{Up} 
else 
Send, {Up} 
return 
} 
else 
{ 
if flag_S 
Send, +{Up} 
else 
Send, {Up} 
} 
return

;/**************CapsLock + k：下移************************/
CapsLock & k:: 
if flag_C 
{ 
if flag_S 
Send, +{Down} 
else 
Send, {Down} 
return 
} 
else 
{ 
if flag_S 
Send, +{Down} 
else 
Send, {Down} 
} 
return

;/**************CapsLock + h：句首************************/
CapsLock & h:: 
if flag_C 
{ 
if flag_S 
Send, {home}
else 
Send, {home} 
return 
} 
else 
{ 
if flag_S 
Send, {home} 
else 
Send, {home} 
} 
return

;/**************CapsLock + ;,句尾************************/
CapsLock & `;:: 
if flag_C 
{ 
if flag_S 
Send, {end} 
else 
Send, {end} 
return 
} 
else 
{ 
if flag_S 
Send, {end} 
else 
Send, {end} 
} 
return


;/**************CapsLock + u,shanchu************************/
CapsLock & u:: 
if flag_C 
{ 
Send, ^{backspace} 
 
return 
} 
else 
{ 

Send, {backspace} 
return 
} 
return


;/**************CapsLock + o,shanchu************************/
CapsLock & o:: 
if flag_C 
{ 
Send, ^{del} 
 
return 
} 
else 
{ 

Send, {del} 
return 
} 
return


















CapsLock & y::send print(type()){left 2}






























CapsLock & m::Send import{space}

;send最稳的写法是每次send一个字符



























CapsLock & r::send return{space}


CapsLock & 7::send ^{Backspace}
CapsLock & 8::send ^{del}








CapsLock & e::send exit(){enter}



CapsLock & c::send continue


SetWinDelay, 10
#ClipboardTimeout 2000
;这个版本已经基本修复了输入括号等shift与切换中英文输入法之间的冲突
^`::Suspend  ; 给一个热键指定挂起的开关功能。


CapsLock & t::send 15122306087
;CapsLock & ::send 210102198908124112
CapsLock & b::

send,break

return

















































!p::
IfWinExist, 无标题 - 画图     ;注意这里面的标题名字就是打开程序里面写的标题,注意中间带空格.;这样写就控制了程序开关.

{
    
    WinClose
    return 
}
else
{
run mspaint
return
}













!j::run calc
return
















































:*:;m::15122306087@163.com
^NumpadAdd::SoundSet , +0.5, WAVE
^NumpadSub::SoundSet , -0.5, WAVE




















#IFWinNotActive  星际争霸


F3::
SetKeyDelay, 30
x=%clipboard%
d=.append()
clipboard=%d%
Send ^v
sleep,0.01
Send, {Left}
clipboard=%x%
return


#IFWinNotActive  星际争霸

F4::

SetKeyDelay, 10
x=%clipboard%
SetKeyDelay, 10
d=''''''
clipboard=%d%
Send ^v
sleep,0.1  ; 貌似可以防止剪贴板粘贴错误


send {left 3}

send {enter}
send {enter}
send {up}
clipboard=%x%
return


#IFWinActive  星际争霸

F3::F3
F4::F4
















;使用方法是输入,xun然后空格

:*:lsit::list
:*:braek::break
:*:berak::break
:*:,rr::return{space}
:*:dfe::def
:*:retrun::return 
:*:retunr::return
:*:calss::class

:*:slef::self
:*:slfe::self
:*:apend::append
:*:appedn::append
:*:contiune::continue
:*:contnue::continue
























;下面为了java扩充的:
#IfWinActive idea
CapsLock & s::
SetKeyDelay, 30
x=%clipboard%
d=System.out.println();
clipboard=%d%
Send ^v
sleep,0.01
Send, {Left 2}
clipboard=%x%
return






:*:'::
SetKeyDelay, 30
x=%clipboard%
d=''
clipboard=%d%
Send ^v
Send {Left}
sleep,0.01

clipboard=%x%
return





return 






;下面添加sql快捷键


:*:;sql::
switchime(0)
x=%clipboard%
d=select * from ();
SetKeyDelay, 20
clipboard = %d%
SetKeyDelay, 1
Send ^v

Send {LEFT 2}
Send {ENTER 2}
Send {UP}
clipboard=%x%
return

:*:;id::
switchime(0)
x=%clipboard%
d=210102198908124112
SetKeyDelay, 20
clipboard = %d%
SetKeyDelay, 1
Send ^v


clipboard=%x%
return

/*自动复制搜索
*/















#IfwinActive , ahk_class ConsoleWindowClass

:*:;w::
switchime(0 )
SetKeyDelay, 0
send, nohup wget    -t0 --timeout=9999999 &{left 25}


return 


CapsLock & 7::send ^{w}


:*:;t::
switchime(0 )
SetKeyDelay, 0
send, tail -fn 2000{space}


return 

^t::
switchime(0 )
SetKeyDelay, 0
send, tar -xvzf {space}


return 

:*:;r::
switchime(0 )
SetKeyDelay, 0
send, docker run -ti --user root  /bin/bash
send, {left 10} 

return 


:*:;y::
switchime(0 )
SetKeyDelay, 0
send, yum install -y {space}


return 





#IfwinActive , ahk_group copyEnable

:*:;w::
switchime(0 )
SetKeyDelay, 0
send, nohup wget    -t0 --timeout=9999999 &{left 25}


return 


CapsLock & 7::send ^{w}


:*:;t::
switchime(0 )
SetKeyDelay, 0
send, tail -fn 2000{space}


return 

^t::
switchime(0 )
SetKeyDelay, 0
send, tar -xvzf {space}


return 

:*:;r::
switchime(0 )
SetKeyDelay, 0
send, docker run -ti --user root  /bin/bash
send, {left 10} 

return 


:*:;y::
switchime(0 )
SetKeyDelay, 0
send, yum install -y {space}


return 









;因为xshell里面粘贴是shift+insert所以也给他改成ctrl+v



;/**************CapsLock + u,shanchu************************/
CapsLock & u:: 
if flag_C 
{ 
Send, ^w 
 
return 
} 
else 
{ 

Send, {backspace} 
return 
} 
return


;/**************CapsLock + o,shanchu************************/
CapsLock & o:: 
if flag_C 
{ 
Send, ^{del} 
 
return 
} 
else 
{ 

Send, {del} 
return 
} 
return















:*:;cm::cmake .&&make{enter}
:*:;ls::lsof -i:


;vim改建  用于快速保存或者关闭vim文件.


;超级find命令
:*:;f::
switchime(0 )
send ,find / -name   {space}

return 


#IfwinActive ahk_class ConsoleWindowClass

:*:;cm::cmake .&&make{enter}
:*:;ls::lsof -i:

;超级find命令
:*:;f::
switchime(0 )
send ,find / -name   {space}

return 


#IfwinNotActive , ahk_group DisableBracketAuto





:*:;f::
switchime(0 )
send ,find / -name   {space}

return 




:*:;r::
switchime(0 )
SetKeyDelay, 0
send, docker run -ti --user root  /bin/bash
send, {left 10} 

return 

















;Edit_GetSel	Gets the starting and ending character positions of the current selection in an edit or rich edit control. You can use this macro or send the EM_GETSEL message explicitly.

;https://docs.microsoft.com/zh-cn/windows/win32/controls/em-getsel




;ime_status:=DllCall("SetClipboardData","int",CF_UNICODETEXT,UInt)







#IfwinActive , ahk_group CopyEnable
           ;因为bash不好使,所以强制加进去一个class

$+9::  

SetKeyDelay, 20  

SaveOldData=%clipboard%
clipboard=    ;必须强制手动清空剪贴板


x=%clipboard%


send +9
send +0
send {left}
sleep,40

clipboard=%SaveOldData%

return




$+[::  
SetKeyDelay, 20  
SaveOldData=%clipboard%
clipboard=    ;必须强制手动清空剪贴板


x=%clipboard%


send {{}
send {}}
send {left}
sleep,40

clipboard=%SaveOldData%



return



$[::  
SetKeyDelay, 20  
SaveOldData=%clipboard%
clipboard=    ;必须强制手动清空剪贴板


x=%clipboard%


send {[}
send {]}
send {left}
sleep,40
clipboard=%SaveOldData%



return




$'::  
SetKeyDelay, 20  
SaveOldData=%clipboard%
clipboard=    ;必须强制手动清空剪贴板

x=%clipboard%


send {'}


sleep,40
clipboard=%SaveOldData%



return



$"::  
SetKeyDelay, 20  
SaveOldData=%clipboard%
clipboard=    ;必须强制手动清空剪贴板

x=%clipboard%


send {"}
send {"}
send {left}
sleep,40
clipboard=%SaveOldData%



return








#IfwinActive , ahk_class ConsoleWindowClass
           ;因为bash不好使,所以强制加进去一个class

$+9::  

SetKeyDelay, 20  
SaveOldData=%clipboard%
clipboard=    ;必须强制手动清空剪贴板


x=%clipboard%


send +9
send +0
send {left}
sleep,40

clipboard=%SaveOldData%

return




$+[::  
SetKeyDelay, 20  
SaveOldData=%clipboard%
clipboard=    ;必须强制手动清空剪贴板


x=%clipboard%


send {{}
send {}}
send {left}
sleep,40

clipboard=%SaveOldData%



return



$[::  
SetKeyDelay, 20  
SaveOldData=%clipboard%
clipboard=    ;必须强制手动清空剪贴板


x=%clipboard%


send {[}
send {]}
send {left}
sleep,40
clipboard=%SaveOldData%



return




$'::  
SetKeyDelay, 20  
SaveOldData=%clipboard%
clipboard=    ;必须强制手动清空剪贴板

x=%clipboard%


send {'}
send {'}
send {left}
sleep,40
clipboard=%SaveOldData%



return



$"::  
SetKeyDelay, 20  
SaveOldData=%clipboard%
clipboard=    ;必须强制手动清空剪贴板

x=%clipboard%


send {"}
send {"}
send {left}
sleep,40
clipboard=%SaveOldData%



return




















;注意要删除pycharm 里面 copy 的 ctrl+insert这个快捷键.
;然后开启pycharm自带的补全.
;#IfWinNotActive ahk_exe clion
#IfwinNotActive , ahk_group DisableBracketAuto

$+9::  

SetKeyDelay, 30
t:=ClipboardAll

sleep,30
clipboard=

send, ^c

send, +9
send, +0

send {left}

send , ^v
sleep,400
clipboard:=t



return




$+[::  
SetKeyDelay, 10  
t:=ClipboardAll   


clipboard=

send , ^c

send +[
send +]

send {left}
sleep, 10
send , ^v
clipboard:=t

return



$[::  
SetKeyDelay, 10  
t:=ClipboardAll   


clipboard=

send , ^c

send [
send ]

send {left}
sleep, 10
send , ^v
clipboard:=t

return




$'::  
SetKeyDelay, 10  
t:=ClipboardAll   


clipboard=

send , ^c

send '
send '

send {left}
sleep, 10
send , ^v
clipboard:=t


return



$"::  
SetKeyDelay, 10  
t:=ClipboardAll   


clipboard=

send , ^c

send "
send "

send {left}
sleep, 10
send , ^v
clipboard:=t


return










#IfwinActive , ahk_group CopyEnable



^v::send,+{insert}
return 

#IfwinActive , ahk_class ConsoleWindowClass


^v::

;MouseMove,  A_ScreenWidth/2  , A_ScreenHeight/2 -10  ;居中点一下
MouseClick, right,  A_ScreenWidth/2  , A_ScreenHeight/2 -10  ;居中点一下
return 


;ime_status:=DllCall("GetClipboardData","int",CF_UNICODETEXT,UInt)











#IfWinNotActive  ahk_group game
F1::
SetKeyDelay, 30

x=%clipboard%
d=for i in : 
clipboard=%d%
Send ^v
sleep,0.01
Send, {Left 1}
clipboard=%x%
return






#IfWinActive  pycharm 

^F1::
SetKeyDelay, 30
x=%clipboard%
d=for i in range(len()):
clipboard=%d%
Send ^v
sleep,0.01
Send, {Left 4}
clipboard=%x%
return


#IfWinActive  pycharm 
F1::
SetKeyDelay, 30

x=%clipboard%
d=for i in : 
clipboard=%d%
Send ^v
sleep,0.01
Send, {Left 1}
Send,{space}
clipboard=%x%
return









#IFWinNotActive  星际争霸









#IfWinActive  Xshell

#q::
send,{Esc}
switchime(0 )
send,:q+1
send,{enter}
send,{enter}
return 

^s::
send,{Esc}
switchime(0 )
send,:x
send,{enter}
send,{enter}
return 


#IfWinNotActive  pycharm


^F1::
SetKeyDelay, 30
x=%clipboard%
d=for i in range(len()):
clipboard=%d%
Send ^v
sleep,0.01
Send, {Left 3}
clipboard=%x%
return


#IfWinActive  Xshell


:*:;g::

SetKeyDelay, 30
sendinput ,gcc main.cpp && ./a.out 
return







GroupAdd, StarCraft , StarCraft II




#IFWinNotActive eoiuolkdjakfja;dsjfdsf   ;作为上面星际结束符.

^g:: 
switchime(0)
x=%clipboard%
FormatTime, now_date, %A_Now%, yyyy-MM-dd ;格式化当前时间
d=git add . && git commit -am "no_comment" &&git tag %A_Now%&&git push
SetKeyDelay, 10

clipboard = %d%

Send +{insert}
SetKeyDelay, 0.1
Send {LEFT 36}
clipboard = %x%
sleep 30
Send {Enter}
return







:*:;id::
switchime(0)
x=%clipboard%
d=210102198908124112
SetKeyDelay, 20
clipboard = %d%
SetKeyDelay, 1
Send ^v


clipboard=%x%
return













