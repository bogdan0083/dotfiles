; Recommended, but not required:
SendMode Input
#NoEnv
#SingleInstance force
#HotkeyModifierTimeout 1000
; #InstallKeybdHook

#Include dual.ahk
dual := new Dual

#Include defaults.ahk
#If true ; Override defaults.ahk. There will be "duplicate hotkey" errors otherwise.

!u::Suspend  ; Assign the toggle-suspend function to a hotkey.

!j::
Send {Down}
return

!k::
Send {Up}
return

!Space::
Send {Enter}
return

; BigCtrl-like.
*Space::
*Space UP::dual.combine("RCtrl", A_ThisHotkey, { timeout: 200, delay: 50 })

; *Esc::
; *Esc UP::dual.combine("RAlt", A_ThisHotkey)

; Steve Losh shift buttons.
; *LShift::
; *LShift UP::dual.combine(A_ThisHotkey, "~")

#If
*ScrollLock::dual.reset()
