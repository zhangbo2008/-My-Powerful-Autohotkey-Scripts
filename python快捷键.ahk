;����ȫ�ֶ���Ҫд�����д����ǰ����������д���������.
SetCapsLockState , AlwaysOff
SetNumlockState, AlwaysOn

SetTitleMatchMode, 2
SetTitleMatchMode, slow

#b::


run https://www.google.com/
return

;��Ҫдһ�����������ƶ����Ĺ���,��cv��,��ȻphotoshopҲ����ʹ��.


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






;���ѡ�й�굱ǰ��.����ģ�������2�µĲ���.



/*

LCtrl & LShift::
Send #{Space}
return
*/

^b::


run http://www.baidu.com/

/*
linux�µ��Ի�����gdb

������autohotkey�����ư�,û�ҵ�linux���������ݼ��ķ���

*/








/*
$+9::  ;��Ϊ���shift�����뷨�ĳ�ͻ����û���,ֻ�ܽ����ѹ����뷨���л���Ӣ�ĸĳ�ctrl����.
SetKeyDelay, 30  ;ֻҪ���������йؾͱ��������������
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




$+9::  ;��Ϊ���shift�����뷨�ĳ�ͻ����û���,ֻ�ܽ����ѹ����뷨���л���Ӣ�ĸĳ�ctrl����.
SetKeyDelay, 20  ;ֻҪ���������йؾͱ��������������
SaveOldData=%clipboard%
clipboard=    ;����ǿ���ֶ���ռ�����
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

;��ȡ67699721������뷨����
return 
*/


/*
^t::
ime_status:=DllCall("GetKeyboardLayout","int",0,UInt)
msgbox, %ime_status%

;��ȡ67699721������뷨�����134481924
return 
*/














/*ע��dll�����ֿ��ܸ�windowsapi�������ֲ�һ��,0��ʾ��ָ��,����ע��һ��Ҫ��*б�ܵ���дһ������,ͦbug
*/

/*
����windows Api .��һ�������Ǻ�����,������type�Ͳ���ֵ.

^t::
DllCall("CreateDirectory", "Str", "dsaf",Ptr, 0)
return 


*/

;�������insert������Ĺ���,����û�ҵ�api,������Ϊ��Щ���insert���������insert�෴,���Ի��Ǳ����Ű�,
;����ҵ��˵ײ�api�������Ͼͺ���








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
If WinActive("����Ա: C:\windows\SYSTEM32\cmd.exe")  {
switchime(0)
WinMinimize,A

return 
}

If WinExist("����Ա: C:\windows\SYSTEM32\cmd.exe")
{


WinActivate
switchime(0) ;д�ڼ���ĺ������.
return 
}

else
{


run, cmd
switchime(0)
a=%clipboard%
sleep, 200
MouseClick, left, A_ScreenWidth/2, A_ScreenHeight/2   ;���е�һ��

send,{enter}  ;�����һ�²��������clipborad,���¸�ֵһ�¼���.��
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
  ;Ϊ�˷�ֹalt�㿪�˵���
return
}

return



#q::
SetKeyDelay, 1
If WinActive("����Ķ���")  {
WinMinimize,A
return 
}
If WinExist("����Ķ���"){
WinActivate 

return
}
else{
run  "C:\Program Files (x86)\Foxit Software\Foxit Reader\FoxitReader.exe"
  ;Ϊ�˷�ֹalt�㿪�˵���
return
}

return










#x::
SetKeyDelay, 1
If WinActive("�ʼ�.txt")  {
WinMinimize,A

return 
}
If WinExist("�ʼ�.txt"){

WinActivate

return
}
else{
run   D:\zhangbo340\Desktop\�ʼ�.txt
  ;Ϊ�˷�ֹalt�㿪�˵���
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












































; �л���sougou   ���������������switchime(1)
; �л���Ӣ��  ��������������� switchime(0)




















/*

;gc��¡����


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

�����^g��Ϊ��git����д��,Ϊ���ܻع���֮ǰ����һ���ύ,���Լ�����tag��ǩ,
���tag�����ǩ�����ظ�,����idea�Ͳ��ܱ���״̬,������һ����ǰʱ������������ȥ.


�����Լ�дpush��,Ҳд��.

*/

^g:: 
switchime(0)
x=%clipboard%
FormatTime, now_date, %A_Now%, yyyy-MM-dd ;��ʽ����ǰʱ��
d=git add . && git commit -am "" &&git tag %A_Now%&&git push
SetKeyDelay, 100
clipboard = %d%

Send +{insert}
SetKeyDelay, 0.1
Send {LEFT 36}

return













!g::
run D:\zhangbo340\Desktop\������Ϣ.txt

return






















;ͨ��if else�Ѿ�����������alt+x �����ʼǺ���С���ʼ�,����ʼ���.





























;������Ҫʵ�ֵĹ���������һ�λ����Ҽ�����,ֻ��Ҫѡ����λ�֮����shift+9����.�Ⱥ��ұߵı�����Ҫ��˫%,��ʵ������bug����
;�����������ݺ�ѡ��������ͬʱ����bug,���������Ҫ����һ�λ���һ���µط����Ҽ�������.���ȸ��ƻ�,Ȼ������������ճ������.˳���˾ͳ�����.Ŀǰֻ�����һ��bug




















$+[::  ;��Ϊ���shift�����뷨�ĳ�ͻ����û���,ֻ�ܽ����ѹ����뷨���л���Ӣ�ĸĳ�ctrl����.
SetKeyDelay, 20  ;ֻҪ���������йؾͱ��������������
SaveOldData=%clipboard%
clipboard=    ;����ǿ���ֶ���ռ�����
send , ^c

x=%clipboard%

y=%clipboard%
send {{}
send {}}
send {left}
send , ^v
clipboard=%SaveOldData%



return



$[::  ;��Ϊ���shift�����뷨�ĳ�ͻ����û���,ֻ�ܽ����ѹ����뷨���л���Ӣ�ĸĳ�ctrl����.
SetKeyDelay, 20  ;ֻҪ���������йؾͱ��������������
SaveOldData=%clipboard%
clipboard=    ;����ǿ���ֶ���ռ�����
send , ^c

x=%clipboard%

y=%clipboard%
send {[}
send {]}
send {left}
send , ^v
clipboard=%SaveOldData%



return




$'::  ;��Ϊ���shift�����뷨�ĳ�ͻ����û���,ֻ�ܽ����ѹ����뷨���л���Ӣ�ĸĳ�ctrl����.
SetKeyDelay, 20  ;ֻҪ���������йؾͱ��������������
SaveOldData=%clipboard%
clipboard=    ;����ǿ���ֶ���ռ�����
send , ^c

x=%clipboard%

y=%clipboard%
send {'}
send {'}
send {left}
send , ^v
clipboard=%SaveOldData%



return



$"::  ;��Ϊ���shift�����뷨�ĳ�ͻ����û���,ֻ�ܽ����ѹ����뷨���л���Ӣ�ĸĳ�ctrl����.
SetKeyDelay, 20  ;ֻҪ���������йؾͱ��������������
SaveOldData=%clipboard%
clipboard=    ;����ǿ���ֶ���ռ�����
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


;��;p���滻��д��������ʹ,��Ϊ�������ַ��滻���ܻ�bug
; caplock��ʾ��,ctrl+caplock�л���Сд
;CapsLock::SendInput {Right}    ;�����ľͱ����ͻ��
CapsLock & l::Send {Right}
CapsLock & i::SendInput {up}
CapsLock & j::SendInput {left}
CapsLock & k::SendInput {down}
CapsLock & y::send print(type()){left 2}




CapsLock & h::Send {home}
CapsLock::Send {right}
CapsLock & `;::Send {end}             ;����`��ʾautohotkey�����ת���ַ�





CapsLock & m::Send import{space}

;send���ȵ�д����ÿ��sendһ���ַ�












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
;����汾�Ѿ������޸����������ŵ�shift���л���Ӣ�����뷨֮��ĳ�ͻ
#s::Suspend  ; ��һ���ȼ�ָ������Ŀ��ع��ܡ�


CapsLock & t::send 15122306087
CapsLock & f::send 210102198908124112
CapsLock & b::

send,break

return

















































!p::
IfWinExist, �ޱ��� - ��ͼ     ;ע��������ı������־��Ǵ򿪳�������д�ı���,ע���м���ո�.;����д�Ϳ����˳��򿪹�.

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
sleep,0.1  ; ò�ƿ��Է�ֹ������ճ������

clipboard=%x%
send {left 3}

send {enter}
send {enter}
send {up}

return





$^v::
tmp1=%clipboard%

asdf:=0=RegExMatch(tmp1, "����������������(.*)\r\n��Ȩ����(.*)\r\nԭ�����ӣ�(.*)")


If %asdf%
{

send, ^v
return 
}
else
{

tmp1 := RegExReplace(tmp1, "����������������(.*)\r\n��Ȩ����(.*)\r\nԭ�����ӣ�(.*)", "")   
clipboard=%tmp1%
send,^v
return 

}


















;ʹ�÷���������,xunȻ��ո�

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
























;����Ϊ��java�����:
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
FormatTime, d, LongDate,yyyy-MM-dd,H��mm
sleep ,30
clipboard = %d%
sleep ,30
Send ^v
sleep,30
clipboard=%x%
return





;�������sql��ݼ�


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



/*�Զ���������
*/












CapsLock & p::send print(){left}





#IfWinActive  Xshell 6 ;��仰��ʾ��shell�����������������Ч,����Ϊʲô������ݼ���ʧЧ,��shellʱ��?
;��ʼ�ܼ�,ֻ��Ҫ�����If���صĴ���д����󼴿�.�������ж�֮ǰǰ��Ŀ�ݼ��Ѿ�����Ч��.

;��Ϊxshell����ճ����shift+insert����Ҳ�����ĳ�ctrl+v
^v::send,+{insert}

:*:;cm::cmake .&&make{enter}
:*:;ls::lsof -i:

^b::^b
return 
;vim�Ľ�  ���ڿ��ٱ�����߹ر�vim�ļ�.
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

;����find����
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

