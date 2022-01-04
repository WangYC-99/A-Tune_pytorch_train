> by WangYC_99
>
> @NWPU changan Dec.31st 2021



## Dataset:CIFAR-10

https://www.cs.toronto.edu/~kriz/cifar.html



## Module Structure

https://www.researchgate.net/profile/Yiren_Zhou/publication/312170477/figure/download/fig2/AS:448817725218817@1484017892180/Structure-of-CIFAR10-quick-model.png



## Pytorch

https://pytorch.org



## Conv Explain

Conv-2d: https://pytorch.org/docs/stable/generated/torch.nn.Conv2d.html#torch.nn.Conv2d

Conv-graph: https://github.com/vdumoulin/conv_arithmetic/blob/master/README.md

## install a-tune:
### 安装依赖软件包
yum install -y golang-bin python3 perf sysstat hwloc-gui
​
### 安装A-Tune服务的依赖包
yum install -y python3-dict2xml python3-flask-restful python3-pandas python3-scikit-optimize python3-xgboost python3-pyyaml
​
### 安装数据库依赖包
yum install -y python3-sqlalchemy python3-cryptography
yum install -y python3-psycopg2
​
### 下载源码并编译安装
git clone https://gitee.com/openeuler/A-Tune.git    # 使用git命令克隆远程gitee仓库到openEuler服务器
cd A-Tune
make models -i
make
make collector-install
make install


cat /etc/atuned/atuned.cnf  # 查看配置文件

systemctl daemon-reload # 加载服务
systemctl start atuned  # 启动服务
systemctl start atune-engine
systemctl status atuned # 查看服务状态