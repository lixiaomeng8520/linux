# 克隆一个远程仓库
git clone https://github.com/lixiaomeng8520/linux.git

# 初始化一个本地仓库
mkdir project
cd  project
git init

# 提交
git add xxx.txt
git add a.txt b.txt
git add . #添加所有改动文件
git commit -m 'message'

# 查看状态
git status

# 文件改动比较
git diff controller/index.php

git diff # 查看没有add的内容修改
git diff --cached #是查看index file与commit的差别的。
git diff HEAD # 是查看working tree和commit的差别的。
git diff HEAD^ HEAD # 查看两个版本之间的差异

# 更改项目user的信息
git config user.name 'lixiaomeng'
git config user.email 'lixiaomeng8520@163.com'
# 更改全局user的信息，如果项目信息不足，会用全局
git config --global user.name 'lixiaomeng'
git config --global user.email 'lixiaomeng8520@163.com'
# 打印用户信息
git config user.name
git config user.email

# 推送到远程主分支
git push origin master

# 忽略用户权限检查
git config --add core.filemode false

# 重新设置远程仓库地址
git remote set-url origin https://lixiaomeng:meng880520@gitlab.dahe.cn/lixiaomeng/vote.git


# HEAD指向的版本就是当前版本，因此，Git允许我们在版本的历史之间穿梭，使用命令git reset --hard commit_id
git reset --hard HEAD^ # 回到上个版本

# 日志
git log # --pretty=oneline 一条一行

# 最近一次提交打包
git archive -o updated.zip HEAD $(git diff --name-only HEAD^ HEAD)