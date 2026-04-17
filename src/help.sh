show_help() {
    [[ $1 ]] && warn "未知选项 '$1'"
    msg "$is_core_name script $is_sh_ver by $author"
    msg "Usage: $is_core [command]"
    msg
    local help_info=(
        "常用:"
        " v2ray                 打开精简菜单"
        " v2ray add [ss]        新增 Shadowsocks（默认 aes-128-gcm）"
        " v2ray change [file]   修改 Shadowsocks 配置"
        " v2ray ss              查看 Shadowsocks 信息"
        " v2ray ssqr            显示 Shadowsocks 二维码"
        " v2ray status          查看运行状态"
        " v2ray start|stop|restart"
        " v2ray log             查看访问日志"
        " v2ray logerr          查看错误日志"
        " v2ray bbr             启用 BBR"
        " v2ray update core     更新 V2Ray Core"
        " v2ray uninstall       卸载"
        ""
        "说明:"
        " - 已精简为 Shadowsocks + BBR"
        " - 默认加密方式: aes-128-gcm"
        " - 首次安装会自动创建 Shadowsocks 并显示链接/二维码"
        ""
        "仓库:"
        " https://github.com/osirzzzz/ss"
    )
    for v in "${help_info[@]}"; do
        msg "$v"
    done
}
about() {
    msg "Github: $(msg_ul https://github.com/osirzzzz/ss)"
    msg "$is_core_name core: $(msg_ul https://github.com/${is_core_repo})"
}
