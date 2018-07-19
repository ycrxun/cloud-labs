# TiDB

## 多节点集群

### 7台主机上部署一个TiDB集群

|主机名|IP|部署服务|数据盘挂载|
|--|--|--|--|
|tdb|192.168.1.101|TiDB|-|
|pd1|192.168.1.102|PD1|/data|
|pd2|192.168.1.103|PD2|/data|
|pd3|192.168.1.104|PD3|/data|
|tikv1|192.168.1.105|TiKV1|/data|
|tikv2|192.168.1.106|TiKV2|/data|
|tikv3|192.168.1.107|TiKV3|/data|

### Docker stack

[tidb.yml](./tidb.yml)