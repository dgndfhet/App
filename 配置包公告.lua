local version=getInt("xx12d配置包版本",0)

-- 获取当前时间戳
local time = math.floor(os.time())
--获取上次显示时间
local last_time=getInt(version.."消息弹窗",0)
--获取时间差
local time_difference=time-last_time
--如果时间差大于1天 显示弹窗
if  time_difference>86400 then
--记录本次时间
setInt(version.."消息弹窗",time)
diaLogs("欢迎使用","配置包只设置了基础数据，如有更新可自行阅读配置包修改，添加，如果不懂到地方加群了解")

.setNeutralButton("加入Q群",
"openUrl('https://qm.qq.com/q/iYruxxYiyI')")

.setNegativeButton("复制群号",
"copy('869436540')"
.."Toast('已复制')")

.setPositiveButton("关闭")
.show()
end

if version<13 then
local dialogs=diaLogs("配置包发现新版本","")

dialogs.setNeutralButton("加入Q群",
"openUrl('https://qm.qq.com/q/iYruxxYiyI')")

dialogs.setNegativeButton("下载","openUrl('')")

dialogs.setPositiveButton("关闭")
if getAppVersion()>56 then
--57版本新增方法
dialogs.setPopupClosable(false)
end
dialogs.show()
else
--未发现新版本
Toast("未发现新版本")
end