# 检出
svn checkout svn://192.168.1.213:10240/svnbang

# 添加文件
svn add *.php

# 提交
svn commit -m 'msg' test.php

# 更新
svn update #如果后面没有目录，默认将当前目录以及子目录下的所有文件都更新到最新版本。
svn update -r 200 test.php #将版本库中的文件test.php还原到版本200

# 状态
svn status path -v #目录下的文件和子目录的状态，正常状态不显示

# 删除
svn delete path -m 'delete test fle' # 可以直接删除远程目录

# 日志
svn log path
svn log -r 14:15 #对比两个版本

# 文件详细信息
svn info path

# 比较
svn diff path #将修改的文件与基础版本比较
svn diff -r m:n path #对版本m和版本n比较差异

