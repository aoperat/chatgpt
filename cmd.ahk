
; Create the popup menu by adding some items to it.
Menu, ����޴�, Add, Ʋ�������ġ��, fƲ�������ġ��
Menu, ����޴�, Add, �ܾ� �̾ӽ� ����, f�ܾ�̾ӽ�����
Menu, ����޴�, Add, ���� �н��ڷ� ����, f�����н��ڷ����
Menu, ����޴�, Add, �𸣴� ǥ�� ����, f�𸣴�ǥ������

Menu, MyMenu, Add, ����, :����޴�

; Create another menu destined to become a submenu of the above menu.
Menu, ��α׸޴�, Add, ����ۼ�, f����ۼ�
Menu, ��α׸޴�, Add, ���, f���

; Create a submenu in the first menu (a right-arrow indicator). When the user selects it, the second menu is displayed.
Menu, MyMenu, Add, ��α�, :��α׸޴�

Menu, MyMenu, Add  ; Add a separator line below the submenu.

return  ; End of script's auto-execute section.

MenuHandler:
MsgBox You selected %A_ThisMenuItem% from the menu %A_ThisMenu%.
return

fƲ�������ġ��:
text = is this Correct the following sentence :
temp_clipboard(text)
Return

f�ܾ�̾ӽ�����:
text = What are the differences betwwen A and B? Explain it to me as if i were a child, and translate it into korean
temp_clipboard(text)
Return

f�����н��ڷ����:
text = write a dialogue between two people at a grocery store
Return

f�𸣴�ǥ������:
text = What does ��taking the bull by the horns�� mean here?
temp_clipboard(text)
Return


f����ۼ�:
text = Write a long blog articles in markdown format. and include subtitles and detail description, bullet points. The title of the blog is:
temp_clipboard(text)
Return

f���:
text = summarize this blog article above in 20 words and reply text only. Don't write a description.:
temp_clipboard(text)
Return

#z::Menu, MyMenu, Show  ; i.e. press the Win-Z hotkey to show the menu.



temp_clipboard(param){
    temp := Clipboard
    Clipboard := param
    sleep,100
    send,^v
    sleep,100
    Clipboard := temp
    return
}