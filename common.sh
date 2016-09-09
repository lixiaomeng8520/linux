# 添加lxm用户到www组
usermod -a -G www lxm

# 安装deb包
dpkg -i xxx.deb

# iptables ------------------------------------------------------
# 列出所有规则，编号
iptables -L -n --line-number # list
#默认将所有请求丢弃
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT DROP
#删除.列出规则编号后，可以根据编号进行删除
iptables -D INPUT 2
#保存
service iptables save # centos
#开放环回接口
iptables -A INPUT -i lo -j ACCEPT
#允许已建立的连接接收数据
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
#允许80端口新建立数据
iptables -A INPUT -p tcp --dport 80 -m state --state NEW -j ACCEPT
#脚本
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT
iptables -A INPUT -i lo -j ACCEPT