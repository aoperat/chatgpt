
; Create the popup menu by adding some items to it.
Menu, 영어메뉴, Add, 틀린문장고치기, f틀린문장고치기
Menu, 영어메뉴, Add, 단어 늬앙스 설명, f단어늬앙스설명
Menu, 영어메뉴, Add, 영어 학습자료 생성, f영어학습자료생성
Menu, 영어메뉴, Add, 모르는 표현 묻기, f모르는표현묻기

Menu, MyMenu, Add, 영어, :영어메뉴

; Create another menu destined to become a submenu of the above menu.
Menu, 블로그메뉴, Add, 긴글작성, f긴글작성
Menu, 블로그메뉴, Add, 요약, f요약

; Create a submenu in the first menu (a right-arrow indicator). When the user selects it, the second menu is displayed.
Menu, MyMenu, Add, 블로그, :블로그메뉴

Menu, MyMenu, Add  ; Add a separator line below the submenu.

return  ; End of script's auto-execute section.

MenuHandler:
MsgBox You selected %A_ThisMenuItem% from the menu %A_ThisMenu%.
return

f틀린문장고치기:
text = is this Correct the following sentence :
temp_clipboard(text)
Return

f단어늬앙스설명:
text = What are the differences betwwen A and B? Explain it to me as if i were a child, and translate it into korean
temp_clipboard(text)
Return

f영어학습자료생성:
text = write a dialogue between two people at a grocery store
Return

f모르는표현묻기:
text = What does ‘taking the bull by the horns’ mean here?
temp_clipboard(text)
Return


f긴글작성:
text = Write a long blog articles in markdown format. and include subtitles and detail description, bullet points. The title of the blog is:
temp_clipboard(text)
Return

f요약:
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