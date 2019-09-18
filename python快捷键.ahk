;这种全局定义要写在所有代码的前面才能让所有代码起作用.
SetCapsLockState , AlwaysOff
SetNumlockState, AlwaysOn

SetTitleMatchMode, 2
SetTitleMatchMode, slow

#b::


run https://www.google.com/
return

;需要写一个按照像素移动鼠标的功能,做cv用,当然photoshop也可以使用.


CapsLock & Up::
MouseMove, 0, -1, 100, R
return


CapsLock & Down::
MouseMove, 0, 1, 100, R
return


CapsLock & Left::
MouseMove, -1, 0, 100, R
return


CapsLock & Right::
MouseMove, 1, 0, 100, R
return


CapsLock & 9::
send ,{PgUp}
return

CapsLock & 0::
send ,{PgDn}
return



CapsLock & u::
send ,{backspace}
return


CapsLock & o::
send ,{del}
return






;如何选中光标当前字.就是模拟鼠标敲2下的操作.



/*

LCtrl & LShift::
Send #{Space}
return
*/

^b::


run http://www.baidu.com/

/*
linux下调试还是用gdb

还是用autohotkey来控制吧,没找到linux设置输入快捷键的方法

*/








/*
$+9::  ;因为这个shift跟输入法的冲突至今还没解决,只能进入搜狗输入法把切换中英文改成ctrl即可.
SetKeyDelay, 30  ;只要跟剪贴板有关就必须设置这个参数
t=%clipboard%
clipboard=
x=%clipboard%

y=%clipboard%
send {(}
send {)}
send {left}

clipboard=%t%
return



*/




$+9::  ;因为这个shift跟输入法的冲突至今还没解决,只能进入搜狗输入法把切换中英文改成ctrl即可.
SetKeyDelay, 20  ;只要跟剪贴板有关就必须设置这个参数
SaveOldData=%clipboard%
clipboard=    ;必须强制手动清空剪贴板
send , ^c

x=%clipboard%

y=%clipboard%
send +9
send +0
send {left}
send , ^v
clipboard=%SaveOldData%



return





























/*
^t::
ime_status:=DllCall("GetKeyboardLayout","int",0,UInt)
msgbox, %ime_status%

;获取67699721这个输入法代码
return 
*/


/*
^t::
ime_status:=DllCall("GetKeyboardLayout","int",0,UInt)
msgbox, %ime_status%

;获取67699721这个输入法代码和134481924
return 
*/














/*注意dll的名字可能跟windowsapi里面名字不一样,0表示空指针,并且注释一定要把*斜杠单独写一样才行,挺bug
*/

/*
调用windows Api .第一个参数是函数名,后面是type和参数值.

^t::
DllCall("CreateDirectory", "Str", "dsaf",Ptr, 0)
return 


*/

;好想废了insert这个建的功能,但是没找到api,但是因为有些软件insert跟其他软件insert相反,所以还是保留着吧,
;如果找到了底层api能锁定上就好了








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
}}










#f::
If WinActive("Everything"){
WinMinimize,A
return
}
Run "C:\Program Files\Everything\Everything.exe"

return






#c::
SetKeyDelay, 1
If WinActive("管理员: C:\windows\SYSTEM32\cmd.exe")  {
switchime(0)
WinMinimize,A

return 
}

If WinExist("管理员: C:\windows\SYSTEM32\cmd.exe")
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



#q::
SetKeyDelay, 1
If WinActive("福昕阅读器")  {
WinMinimize,A
return 
}
If WinExist("福昕阅读器"){
WinActivate 

return
}
else{
run  "C:\Program Files (x86)\Foxit Software\Foxit Reader\FoxitReader.exe"
  ;为了防止alt点开菜单栏
return
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
run   D:\zhangbo340\Desktop\笔记.txt
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
If WinActive("ahk_class Xshell6::MainFrame_0"){
WinMinimize,A
return 
}
If WinExist("ahk_class Xshell6::MainFrame_0"){

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





























/*

下面的^g是为了git命令写的,为了能回滚到之前任意一次提交,所以加入了tag标签,
如果tag里面标签内容重复,好像idea就不能保存状态,所以用一个当前时间作参数穿进去.


懒得自己写push了,也写上.

*/

^g:: 
switchime(0)
x=%clipboard%
FormatTime, now_date, %A_Now%, yyyy-MM-dd ;格式化当前时间
d=git add . && git commit -am "" &&git tag %A_Now%&&git push
SetKeyDelay, 100
clipboard = %d%

Send +{insert}
SetKeyDelay, 0.1
Send {LEFT 36}

return













!g::
run D:\zhangbo340\Desktop\个人信息.txt

return






















;通过if else已经完美的利用alt+x 启动笔记和最小化笔记,唤起笔记了.





























;下面我要实现的功能是想在一段话左右加括号,只需要选中这段话之后按下shift+9就行.等号右边的变量需要加双%,其实还是有bug存在
;当剪贴板内容和选择内容相同时候有bug,所以如果你要复制一段话到一个新地方并且加上括号.就先复制话,然后输入括号再粘贴即可.顺序反了就出不来.目前只有这个一个bug




















$+[::  ;因为这个shift跟输入法的冲突至今还没解决,只能进入搜狗输入法把切换中英文改成ctrl即可.
SetKeyDelay, 20  ;只要跟剪贴板有关就必须设置这个参数
SaveOldData=%clipboard%
clipboard=    ;必须强制手动清空剪贴板
send , ^c

x=%clipboard%

y=%clipboard%
send {{}
send {}}
send {left}
send , ^v
clipboard=%SaveOldData%



return



$[::  ;因为这个shift跟输入法的冲突至今还没解决,只能进入搜狗输入法把切换中英文改成ctrl即可.
SetKeyDelay, 20  ;只要跟剪贴板有关就必须设置这个参数
SaveOldData=%clipboard%
clipboard=    ;必须强制手动清空剪贴板
send , ^c

x=%clipboard%

y=%clipboard%
send {[}
send {]}
send {left}
send , ^v
clipboard=%SaveOldData%



return




$'::  ;因为这个shift跟输入法的冲突至今还没解决,只能进入搜狗输入法把切换中英文改成ctrl即可.
SetKeyDelay, 20  ;只要跟剪贴板有关就必须设置这个参数
SaveOldData=%clipboard%
clipboard=    ;必须强制手动清空剪贴板
send , ^c

x=%clipboard%

y=%clipboard%
send {'}
send {'}
send {left}
send , ^v
clipboard=%SaveOldData%



return



$"::  ;因为这个shift跟输入法的冲突至今还没解决,只能进入搜狗输入法把切换中英文改成ctrl即可.
SetKeyDelay, 20  ;只要跟剪贴板有关就必须设置这个参数
SaveOldData=%clipboard%
clipboard=    ;必须强制手动清空剪贴板
send , ^c

x=%clipboard%

y=%clipboard%
send {"}
send {"}
send {left}
send , ^v
clipboard=%SaveOldData%



return













CapsLock & n::SendInput {_}




CapsLock & ,::SendInput {+}
CapsLock & .::SendInput {=}


;用;p来替换书写经常不好使,因为输入多个字符替换可能会bug
; caplock表示右,ctrl+caplock切换大小写
;CapsLock::SendInput {Right}    ;这样改就避免冲突了
CapsLock & l::Send {Right}
CapsLock & i::SendInput {up}
CapsLock & j::SendInput {left}
CapsLock & k::SendInput {down}
CapsLock & y::send print(type()){left 2}




CapsLock & h::Send {home}
CapsLock::Send {right}
CapsLock & `;::Send {end}             ;加入`表示autohotkey里面的转义字符





CapsLock & m::Send import{space}

;send最稳的写法是每次send一个字符












!b::
run D:\zhangbo340\Desktop\gapa.exe
return
















CapsLock & r::send return{space}


CapsLock & 7::send ^{Backspace}
CapsLock & 8::send ^{del}








CapsLock & e::send exit(){enter}



CapsLock & c::send continue


SetWinDelay, 10
#ClipboardTimeout 2000
;这个版本已经基本修复了输入括号等shift与切换中英文输入法之间的冲突
#s::Suspend  ; 给一个热键指定挂起的开关功能。


CapsLock & t::send 15122306087
CapsLock & f::send 210102198908124112
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

















































:*:;m::15122306087@163.com
^NumpadAdd::SoundSet , +1, WAVE
^NumpadSub::SoundSet , -1, WAVE























F3::
SetKeyDelay, 100
x=%clipboard%
d=.append()
clipboard=%d%
Send ^v
sleep,0.01
Send, {Left}
clipboard=%x%
return




F4::

SetKeyDelay, 50
x=%clipboard%
SetKeyDelay, 50
d=''''''
clipboard=%d%
Send ^v
sleep,0.1  ; 貌似可以防止剪贴板粘贴错误

clipboard=%x%
send {left 3}

send {enter}
send {enter}
send {up}

return





$^v::
tmp1=%clipboard%

asdf:=0=RegExMatch(tmp1, "————————(.*)\r\n版权声明(.*)\r\n原文链接：(.*)")


If %asdf%
{

send, ^v
return 
}
else
{

tmp1 := RegExReplace(tmp1, "————————(.*)\r\n版权声明(.*)\r\n原文链接：(.*)", "")   
clipboard=%tmp1%
send,^v
return 

}


















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
CapsLock & s::
SetKeyDelay, 100
x=%clipboard%
d=System.out.println();
clipboard=%d%
Send ^v
sleep,0.01
Send, {Left 2}
clipboard=%x%
return






:*:'::
SetKeyDelay, 100
x=%clipboard%
d=''
clipboard=%d%
Send ^v
Send {Left}
sleep,0.01

clipboard=%x%
return







:*:;d::

SetKeyDelay, 100
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





;下面添加sql快捷键


:*:;sql::
switchime(0)
x=%clipboard%
d=select * from ();
SetKeyDelay, 100
clipboard = %d%
SetKeyDelay, 1
Send ^v

Send {LEFT 2}
Send {ENTER 2}
Send {UP}
clipboard=%x%
return



/*自动复制搜索
*/












CapsLock & p::send print(){left}





#IfWinActive  Xshell 6 ;这句话表示在shell里面这里面的语句才有效,但是为什么其他快捷键都失效,当shell时候?
;起始很简单,只需要把这个If挂载的代码写在最后即可.这样在判断之前前面的快捷键已经都生效了.

;因为xshell里面粘贴是shift+insert所以也给他改成ctrl+v
^v::send,+{insert}

:*:;cm::cmake .&&make{enter}
:*:;ls::lsof -i:

^b::^b
return 
;vim改建  用于快速保存或者关闭vim文件.
^q::
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

;超级find命令
:*:;f::find / -name   {space}




return

#IfWinNotActive  shell



^b::


run http://www.baidu.com/

return
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


F1::
SetKeyDelay, 100
x=%clipboard%
d=for i in :
clipboard = %d%
  
Send ^v
Send {LEFT 1}
Send {space}

clipboard=%x%
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



F1::
SetKeyDelay, 100
x=%clipboard%
d=for i in :
clipboard = %d%
  
Send ^v
Send {LEFT 1}

clipboard=%x%
return

