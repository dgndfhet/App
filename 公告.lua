local updateHistory=[[

html="<img src='https://fs-im-kefu.7moor-fs1.com/ly/4d2c3f00-7d4c-11e5-af15-41bf63ae4ea0/1736878187897/l.png'/>"
.."<h3>11.1版本<h3/>1.修复部位ini文件代码高亮失败<br/>2.修复代码中图像/音响无法快速预览<br/><br/><br/>"
.."<h3>11.0版本</h3>1.修复外部打开数据载入不全<br/>2.修复多选状态下越界无法扩选<br/>3.自定义关键词高亮语法重新修改<br/>4.移除未及时删除的调试功能"

text="11.1\n1.修复部位ini文件代码高亮失败\n2.修复代码中图像/音响无法快速预览\n\n\n"
.."11.0版本\n1.修复外部打开数据载入不全\n2.修复多选状态下越界无法扩选\n3.自定义关键词高亮语法重新修改\n4.移除未及时删除的调试功能"

message=text

if getAppVersion()>56 then
message=html
end

local dialogs=diaLogs("更新历史",message)
dialogs.setNeutralButton("加入Q群","openUrl('https://qm.qq.com/q/iYruxxYiyI')")
.setNegativeButton("下载新版","openUrl('https://fs-im-kefu.7moor-fs1.com/ly/4d2c3f00-7d4c-11e5-af15-41bf63ae4ea0/1736878602374/RWMOD_11.1.apk')")
dialogs.setPositiveButton("关闭")
if getAppVersion()>56 then
--57版本新增方法
dialogs.setHtmlLoad(true)
dialogs.setTextIsSelectable(true)
dialogs.setPopupClosable(false)
end
dialogs.show()
]]

if getAppVersion()<57 then
diaLogs("发现新版本","1.修复部位ini文件代码高亮失败\n2.修复代码中图像/音响无法快速预览")

.setNeutralButton("历史更新",updateHistory)

.setNegativeButton("下载","openUrl('https://fs-im-kefu.7moor-fs1.com/ly/4d2c3f00-7d4c-11e5-af15-41bf63ae4ea0/1736878602374/RWMOD_11.1.apk')")

.setPositiveButton("关闭")

.show()
end