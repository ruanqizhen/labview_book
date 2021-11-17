<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="8608001">
	<Item Name="我的电脑" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">我的电脑/VI服务器</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">我的电脑/VI服务器</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="低效率存文件.vi" Type="VI" URL="../低效率存文件.vi"/>
		<Item Name="改进存文件.vi" Type="VI" URL="../改进存文件.vi"/>
		<Item Name="高效率存文件.vi" Type="VI" URL="../高效率存文件.vi"/>
		<Item Name="低效率显示波形.vi" Type="VI" URL="../低效率显示波形.vi"/>
		<Item Name="高效率显示波形.vi" Type="VI" URL="../高效率显示波形.vi"/>
		<Item Name="低效率创建树.vi" Type="VI" URL="../低效率创建树.vi"/>
		<Item Name="高效率创建树.vi" Type="VI" URL="../高效率创建树.vi"/>
		<Item Name="设置曲线名称颜色.vi" Type="VI" URL="../设置曲线名称颜色.vi"/>
		<Item Name="低效率循环运算.vi" Type="VI" URL="../低效率循环运算.vi"/>
		<Item Name="高效率循环运算.vi" Type="VI" URL="../高效率循环运算.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="Some Math.vi" Type="VI" URL="../Some Math.vi"/>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
