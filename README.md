# 在命令行工具中使用代理
公司内网以及部分网络代理的时候，一些 GUI 的工具并不能为命令行工具进行代理，这个时候就需要我们手动进行。

- [x] Readme
- [x] ShellTool

## 原理
linux 以及 Mac 在命令行中使用的代理的方式很简单，就是给 `http_proxy` 以及 `https_proxy` 初始化即可。关于 Windows PowerShell 我还没找到好的方式，不过使用 Git Bash 即可替代。

## 步骤
特别简单，只要在用户家目录下的 `.bashrc` 或 `.bash_profile` （ZSH 对应 `.zshrc` 以及 `.zsh_profile`）输入一下内容即可。其中 `$url` 就是代理地址。

```bash
# 代理设置
# github.com/lishude/shell-proxy
export http_proxy=$url
export https_proxy=$url
export alias poff='unset http_proxy;unset https_proxy
```

如果你觉得麻烦可以使用本库提供的脚本。

## 使用
### Mac & Linux
```bash
git clone https://github.com/islishude/shell-proxy.git ~/shell-proxy
cd ~/shell-proxy
# 可能需要管理员权限
sudo sh add-proxy.sh
# 测试
sh test-proxy.sh
```

### Windows
需要打开 Git Bash 使用

```bash
# Window
git clone https://github.com/islishude/shell-proxy.git ~/shell-proxy
cd ~/shell-proxy
sh windows-proxy.sh
# 测试
sh test-proxy.sh
```

# 说明
## Git for windows
下载地址：https://git-scm.com/

## `.bashrc` 与 `.bash_profile` 不同点
`.bashrc` 在每次打开命令行工具时就加载，而 `.bash_profile` 仅在用户登录时候加载一次。

## Windows 设置
在 Windows 下使用 Git Bash 的时候要注意，每次打开 Git Bash 的行为就是登录用户，如果你留意的话，在每次打开 Git Bash 的时候回一闪而过 login 的字样，所以上面的步骤需要在用户家目录新建 `.bash_profile` 并写入，单独使用 `.bashrc` 会报错。

## Windows IDE 中使用 Git bash
目前最常用的编辑器就属 VS Code 了，在 Code Windows 下默认使用 PowerShell 或者 CMD 命令工具，当然如果我们安装了其它 shell 也是可以进行设置默认 shell 的。方法很简单，使用快捷键 <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>p</kbd>，然后输入 `shell` 选择默认 shell 命令即可。