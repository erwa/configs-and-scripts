#!/usr/bin/env expect
# https://stackoverflow.com/questions/2563632/how-can-i-merge-two-commits-into-one-if-i-already-started-rebase/48635637#48635637
spawn git rebase -i HEAD~2

# down, delete word, insert 's' (for squash), Escape, save and quit
send "jdwis \033:wq\r"

expect "# This is a"

# down 4, delete 3 lines, save and quit
send "4j3d\r:wq\r"

interact
