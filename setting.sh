# 代理设置
purl=http://127.0.0.1:1080
# 有时候 Shadowsock 会失效那么可以运行 poff 断开代理，然后重启 Shadowsock 即可
alias poff='unset http_proxy;unset https_proxy'
# 运行 pon 即可快捷打开代理
alias pon='export http_proxy=$purl; export https_proxy=$purl'
