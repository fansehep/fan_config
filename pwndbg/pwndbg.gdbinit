source /usr/share/pwndbg/gdbinit.py
source /home/fanr/Github/splitmind/gdbinit.py


python
import splitmind
(splitmind.Mind()
  .tell_splitter(show_titles=False)
  .above(of = "main", display="code", size= "75%", banner="true")
  .right(of = "code", display="disasm", size = "45%")
  .below(of = "disasm", display="backtrace", size = "30%")
  .below(of = "disasm", display="stack", size = "25%")
).build(nobanner=True)
end


set context-clear-screen on
set context-source-code-lines 95

set highlight-color bold,green
set highlight-pc yes

set context-flag-set-color green,bold
set context-flag-unset-color light-red
set context-flag-value-color light-cyan
set context-flag-bracket-color white,bold
set context-register-color green
set context-register-changed-color red,bold
set context-register-changed-marker *

set backtrace-prefix —►
set backtrace-prefix-color red,bold
set backtrace-address-color yellow
set backtrace-symbol-color red
set backtrace-frame-label-color green
set backtrace-frame-label ''

set nearpc-symbol-color gray
set nearpc-address-color gray
set nearpc-argument green
set nearpc-syscall-name-color red,bold
set nearpc-prefix —►
set nearpc-prefix-color red
set nearpc-branch-marker '    ↓'
set nearpc-branch-marker-color yellow,bold
set nearpc-branch-marker-contiguous

set memory-stack blue
set memory-heap yellow
set memory-rodata green
set memory-data purple

set disasm-branch-color red,bold

set hexdump-normal-color light-gray
set hexdump-separator-color blue
set hexdump-printable-color light-yellow
set hexdump-zero-color green
set hexdump-special-color red
set hexdump-offset-color yellow
set hexdump-address-color green

set telescope-register-color yellow
set telescope-offset-color green
set telescope-offset-separator ''
set telescope-offset-delimiter-color blue
set telescope-offset-delimiter :
set telescope-repeating-marker '... ↓'
set telescope-repeating-marker-color yellow,bold

set chain-arrow-left ◂—
set chain-arrow-right —▸
set chain-arrow-color light-yellow,bold
set chain-contiguous-marker ...
set chain-contiguous-marker-color yellow,bold

set enhance-integer-value-color light-cyan
set enhance-string-value-color cyan
set enhance-comment-color gray
set enhance-unknown-color red

set banner-separator ─
set banner-color blue
set banner-title-position right
set banner-title-surrounding-left "────[ "
set banner-title-surrounding-right " ]────"
set banner-title-color light-red,bold

set code-prefix —►
# 箭头颜色
set code-prefix-color blue

#
set context-flag-changed-color purple


# 注释颜色
set comment-color green

