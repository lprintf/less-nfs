# less-nfs

note： 试验自动构建image，并上传到github

应该没人用这东西写docker-compose，这里也不写了。

有机会会固定rpc.mount等端口。


# 使用方法

```
# 配置要分享的目录
echo '/share *(rw,no_subtree_check)'>> ./exports
# 进行分享
docker run --rm -it \
-v ${PWD}/share:/share \
-v ${PWD}/exports:/etc/exports \
--privileged=true lprintf/less-nfs:v0.0
```

运行后可以看到容器ip
