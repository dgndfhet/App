local updateHistory=[[
text="11.1\n\n1.修复部位ini文件代码高亮失败\n2.修复代码中图像/音响无法快速预览\n\n\n"
.."11.0版本\n\n1.修复外部打开数据载入不全\n2.修复多选状态下越界无法扩选\n3.自定义关键词高亮语法重新修改\n4.移除未及时删除的调试功能"

diaLogs("更新历史",text)
.setNeutralButton("加入Q群","openUrl('https://qm.qq.com/q/iYruxxYiyI')")
.setPositiveButton("关闭")
.show()
]]

if getAppVersion()<58 then
diaLogs("发现新版本","1.修复部位ini文件代码高亮失败\n2.修复代码中图像/音响无法快速预览")

.setNeutralButton("历史更新",updateHistory)

.setNegativeButton("下载","openUrl('https://fs-im-kefu.7moor-fs1.com/ly/4d2c3f00-7d4c-11e5-af15-41bf63ae4ea0/1736868863967/RWMOD_11.1.apk')")

.setPositiveButton("关闭")

.show()

end