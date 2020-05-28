#!/usr/bin/env expect
# https://stackoverflow.com/questions/2563632/how-can-i-merge-two-commits-into-one-if-i-already-started-rebase/48635637#48635637
spawn git rebase -i HEAD~2

# change the second "pick" to "squash"
# down, delete word, insert 's' (for squash), Escape, save and quit
send "jdwis \033:wq\r"

expect "# This is a"

# skip past first commit message (assumed to be one line), delete rest of file
# down 4, delete remaining lines, save and quit
send "4jdG\r:wq\r"

interact
