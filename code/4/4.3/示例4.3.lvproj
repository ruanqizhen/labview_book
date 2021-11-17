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
		<Item Name="顺序测试.vi" Type="VI" URL="../顺序测试.vi"/>
		<Item Name="定制测试顺序.vi" Type="VI" URL="../定制测试顺序.vi"/>
		<Item Name="使用状态机的测试程序.vi" Type="VI" URL="../使用状态机的测试程序.vi"/>
		<Item Name="队列状态机.vi" Type="VI" URL="../队列状态机.vi"/>
		<Item Name="Light.lvsc" Type="LVStatechart" URL="../Light.lvsc"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="InstanceName.ctl" Type="VI" URL="/&lt;vilib&gt;/Statechart/Common/InstanceName.ctl"/>
			</Item>
			<Item Name="初始化测试.vi" Type="VI" URL="../初始化测试.vi"/>
			<Item Name="任务A.vi" Type="VI" URL="../任务A.vi"/>
			<Item Name="任务B.vi" Type="VI" URL="../任务B.vi"/>
			<Item Name="任务C.vi" Type="VI" URL="../任务C.vi"/>
			<Item Name="任务D.vi" Type="VI" URL="../任务D.vi"/>
			<Item Name="关闭测试.vi" Type="VI" URL="../关闭测试.vi"/>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
