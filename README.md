# Ansible Prestodb

Prestodb 环境安装脚本，包含下列组件：

- jdk
- supervisord
- hdfs
- mysql
- hive
- prestodb
- metabase
- zeppellin

需求：
    
- 三台 Centos6.5 裸机
- 一个私有的 Yum 源

安装命令：

```
ansible-playbook -i test/inventory site.yml
```