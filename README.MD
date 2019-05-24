# 功能
实现批量远程部署、更新nuls2.0节点程序
# 条件
1.控制机器必须能通过rsa密钥免密登录目标机器
2.目标机器必须安装git,jdk11,maven,并将操作命令加入到环境变量中
# 配置
conf.ini 为配置文件
```
call.ips=root@192.168.1.115  #目标机器列表，多个列表用逗号隔开
```

XXX.param 参数对应给具体脚本传入的参数，多个参数空格隔开，call脚本会把这些参数透传给具体脚本
```
init.param  初始化命令参数配置
    p1 分支名称  
    p2 除基础模块外额外需要打包启动的模块，多个用逗号隔开
示例： init.param=develop api-module,smart-contract
start.param 启动命令参数配置
    p1 启动脚本 选填 默认 start-mykernel
    p2 钱包所在目录对于用户目录的相对路径 选填 默认 nuls-v2/NULS-Wallet-linux64-alpha2
    p3 启动使用的配置文件 选填 默认 nuls.ncf
shutdown.param 停止命令参数
    p1 停止脚本 选填 默认 start-mykernel
    p2 钱包所在目录对于用户目录的相对路径 选填 默认 nuls-v2/NULS-Wallet-linux64-alpha2
update.param 更新命令参数    
    p1 分支名称  
    p2 停止脚本 选填 默认 start-mykernel
    p3 钱包所在目录对于用户目录的相对路径 选填 默认 nuls-v2/NULS-Wallet-linux64-alpha2
clean.param 清除数据命令参数
    p1 停止脚本 选填 默认 start-mykernel
    p2 钱包所在目录对于用户目录的相对路径 选填 默认 nuls-v2/NULS-Wallet-linux64-alpha2
```

# 使用
./call 脚本为远程执行脚本，参数为要在远程执行的具体脚本，可以跟多个，随意组合。

几种常见组合如下：


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