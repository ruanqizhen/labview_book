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
		<Item Name="窗格.vi" Type="VI" URL="../窗格.vi"/>
		<Item Name="程序停止.vi" Type="VI" URL="../程序停止.vi"/>
		<Item Name="电话号码控件.vi" Type="VI" URL="../电话号码控件.vi"/>
		<Item Name="加法事件循环.vi" Type="VI" URL="../加法事件循环.vi"/>
		<Item Name="事件处理界面.vi" Type="VI" URL="../事件处理界面.vi"/>
		<Item Name="事件处理子VI.vi" Type="VI" URL="../事件处理子VI.vi"/>
		<Item Name="用户自定义事件.vi" Type="VI" URL="../用户自定义事件.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="LVPoint32TypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPoint32TypeDef.ctl"/>
			</Item>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
