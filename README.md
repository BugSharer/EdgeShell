# Edge Shell

Edge浏览器套壳程序，用于使能配置项：`始终在新选项卡中打开收藏夹`

> 请移步右侧 Releases 板块下载已打包好的可执行程序

# 程序说明

示例代码是AutoHotkey脚本，用于演示，程序原理很简单：即调用原Edge浏览器可执行程序，并通过命令行参数`--enable-features=msFavoritesOpenInNewTabSetting`使能`始终在新选项卡中打开收藏夹`配置项，同时将其它外部传入的命令行参数全部转发给原Edge浏览器可执行程序，目的是适配所有应用场景(如点击网址链接弹出浏览器)

> 用户也可以根据程序原理利用自己擅长的编程语言自行编写套壳程序
