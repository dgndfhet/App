if getAppVersion()<61 then
local dialogs=diaLogs("发现新版本","<img src='https://fs-im-kefu.7moor-fs1.com/ly/4d2c3f00-7d4c-11e5-af15-41bf63ae4ea0/1736878187897/l.png'/><br/>"
.."<b>1.</b>优化初次使用配置包报错<br/><b>2.</b>优化配置包报错弹窗大量弹出，现在会一个一个展示<br/><b>3.</b>修复配置包贴花节点关键词重复")

dialogs.setNegativeButton("下载","openUrl('https://fs-im-kefu.7moor-fs1.com/ly/4d2c3f00-7d4c-11e5-af15-41bf63ae4ea0/1737047438230/RWMOD_11.4.apk')")

dialogs.setPositiveButton("关闭")
if getAppVersion()>56 then
--57版本新增方法
dialogs.setPopupClosable(false)
dialogs.setHtmlLoad(true)
end

dialogs.show()
end