#!/usr/bin/env bash
echo "测试连接谷歌中，如果显示 200 HTTP code，则证明设置代理成功"
curl -I https://google.com