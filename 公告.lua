
if getAppVersion()<56 then
diaLogs("发现新版本","1.修复外部打开数据载入不全\n2.修复多选状态下越界无法扩选\n3.自定义关键词高亮语法重新修改")
.setNegativeButton("下载","openUrl('https://fs-im-kefu.7moor-fs1.com/ly/4d2c3f00-7d4c-11e5-af15-41bf63ae4ea0/1736751427433/RWMOD_10.9.apk')")
--点击“关闭”不执行任何事件
.setPositiveButton("关闭")
.show()

end


