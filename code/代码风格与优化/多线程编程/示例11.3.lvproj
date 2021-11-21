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
		<Item Name="单循环.vi" Type="VI" URL="../单循环.vi"/>
		<Item Name="时间顺序结构.vi" Type="VI" URL="../时间顺序结构.vi"/>
		<Item Name="双循环.vi" Type="VI" URL="../双循环.vi"/>
		<Item Name="Call DLL SubVI.vi" Type="VI" URL="../Call DLL SubVI.vi"/>
		<Item Name="Get Windows API Error.vi" Type="VI" URL="../Get Windows API Error.vi"/>
		<Item Name="testclnstrucutrue.dll" Type="Document" URL="../testclnstrucutrue.dll"/>
		<Item Name="Thread Swiching.vi" Type="VI" URL="../Thread Swiching.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="kernel32.DLL" Type="Document" URL="kernel32.DLL">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="GDI32.DLL" Type="Document" URL="GDI32.DLL">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
