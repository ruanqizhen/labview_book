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
		<Item Name="并行执行相同子VI.vi" Type="VI" URL="../并行执行相同子VI.vi"/>
		<Item Name="总延时时间.vi" Type="VI" URL="../总延时时间.vi"/>
		<Item Name="运行次数.vi" Type="VI" URL="../运行次数.vi"/>
		<Item Name="测试运行次数.vi" Type="VI" URL="../测试运行次数.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="简单运算.vi" Type="VI" URL="../简单运算.vi"/>
			<Item Name="延时子VI.vi" Type="VI" URL="../延时子VI.vi"/>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
