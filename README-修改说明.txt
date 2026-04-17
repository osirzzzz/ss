这个压缩包只包含已修改的文件：
1. install.sh
2. src/core.sh

已按需求修改：
- 仅保留 Shadowsocks 协议入口
- 保留 BBR 功能入口
- 默认加密方式为 aes-128-gcm
- 安装完成后默认自动创建 Shadowsocks
- 创建后自动显示配置信息，并在安装了 qrencode 时显示二维码
- 主菜单精简为 SS / BBR / 运行管理 / 更新 / 卸载 / 帮助

使用方式：
- 用压缩包内的 install.sh 替换原仓库同名文件
- 用压缩包内的 src/core.sh 替换原仓库同名文件

注意：
- 官方 update 可能覆盖本地修改
- 如果系统未安装 qrencode，则不会直接显示终端二维码
