# 功能
实现批量远程部署、更新nuls2.0节点程序
# 配置
conf.ini 为配置文件
配置要操作的主机信息，多个用逗号隔开，脚本所在服务器必须可以通过rsa密钥免密登录目标服务器
```
call.ips=root@192.168.1.115 
```

# 使用
初始化并启动钱包
```
./call init start
```
更新程序并重启钱包
```
./call update start
```
更新程序、清除data、重新启动
```
./call update clean start
```