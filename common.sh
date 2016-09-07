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
service iptables save