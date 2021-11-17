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
		<Item Name="顺序执行.vi" Type="VI" URL="../顺序执行.vi"/>
		<Item Name="并列执行.vi" Type="VI" URL="../并列执行.vi"/>
		<Item Name="层叠式顺序结构.vi" Type="VI" URL="../层叠式顺序结构.vi"/>
		<Item Name="平铺式顺序结构.vi" Type="VI" URL="../平铺式顺序结构.vi"/>
		<Item Name="测试应用程序1.vi" Type="VI" URL="../测试应用程序1.vi"/>
		<Item Name="测试应用程序2.vi" Type="VI" URL="../测试应用程序2.vi"/>
		<Item Name="测试应用程序3.vi" Type="VI" URL="../测试应用程序3.vi"/>
		<Item Name="延时子VI.vi" Type="VI" URL="../延时子VI.vi"/>
		<Item Name="测试应用程序4.vi" Type="VI" URL="../测试应用程序4.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Merge Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Merge Errors.vi"/>
			</Item>
			<Item Name="子VI2.vi" Type="VI" URL="../子VI2.vi"/>
			<Item Name="子VI1.vi" Type="VI" URL="../子VI1.vi"/>
			<Item Name="读仪器数据.vi" Type="VI" URL="../读仪器数据.vi"/>
			<Item Name="设置仪器.vi" Type="VI" URL="../设置仪器.vi"/>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
