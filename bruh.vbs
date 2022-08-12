' Set WshShell = CreateObject("WScript.Shell")
' WshShell.SendKeys(chr(&hAD))

Dim a : a = 50
         For i = 0 to a Step 1 'i is the counter variable and it is incremented by 2
            Set WshShell = CreateObject("WScript.Shell")
            WshShell.SendKeys(chr(&hAF))
         Next



Set Sound = CreateObject("WMPlayer.OCX.7")
Sound.URL = "bruh.mp3"
Sound.Controls.play
do while Sound.currentmedia.duration = 0
wscript.sleep 100
loop
wscript.sleep (int(Sound.currentmedia.duration)+1)*1000

Dim b : b = 25
         For i = 0 to b Step 1 'i is the counter variable and it is incremented by 2
            Set WshShell = CreateObject("WScript.Shell")
            WshShell.SendKeys(chr(&hAE))
         Next