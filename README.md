<!-- https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet -->
<!-- https://stackedit.io/editor -->
<!-- http://www.emoji-cheat-sheet.com/ -->

qdGit
=================
This is a quick and dirty Git management script. Use it if you need to git things done quickly and don't care about the mess you leave behind. The script will add and push all changes in one commit entry so its not recommended for projects where bug tracking and detailed version control is important.

> :paperclip: **Note:** this project is still it its development life cycle. Don't run the script without first reviewing the source files. Damages to your git repo and computer is unlikely using this script, but still... Murphy's Law.


### How to use
Just run in terminal using the dot-slash expression. If you get a permission error, copy-pasta this `chmod +x gitInit.sh` into your terminal, then run it using `./gitInit.sh`.


### Script Summary

|  Name        | Description           |
| ------------- |:--------------------:|
| qdGit.sh     | menu assisted setup script |
| gitInit.sh     | initial setup routine |
| gitSetup.sh   | additional setup routines |
| push.py      | add, commit, and push all changes to git repo |
| pull.py      | synchronizes your local copy with remote copy |
| status.py      | displays all changes made to the repo |
