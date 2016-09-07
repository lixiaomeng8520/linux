# clone a remote res
git clone https://github.com/lixiaomeng8520/linux.git

# init a local res
mkdir project
cd  project
git init

# commit
git add xxx.txt
git add a.txt b.txt
git commit -m 'message'

# status
git status

# diff
git diff controller/index.php

# add project user
git config user.name 'lixiaomeng'
git config user.email 'lixiaomeng8520@163.com'
# add global user
git config --global user.name 'lixiaomeng'
git config --global user.email 'lixiaomeng8520@163.com'
# print user
git config user.name
git config user.email

# push to remote res's master branch
git push origin master