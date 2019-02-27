set -e
echo "shell-proxy for Windows"
echo "请输入代理地址"
read url
touch ~/.bash_profile
echo "
# 代理设置
# github.com/lishude/shell-proxy
export http_proxy=$url
export https_proxy=$url
export alias poff='unset http_proxy;unset https_proxy'" >> ~/.bash_profile
echo "配置代理成功，请退出当前 Shell，然后运行 test-proxy.sh 进行测试即可"
