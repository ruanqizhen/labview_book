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
		<Item Name="SubVIs" Type="Folder">
			<Item Name="Toolbar Event Callback.vi" Type="VI" URL="../Toolbar Event Callback.vi"/>
			<Item Name="shzh_Toolbar_Initialize.vi" Type="VI" URL="../shzh_Toolbar_Initialize.vi"/>
		</Item>
		<Item Name="NISAST Event.lvclass" Type="LVClass" URL="../../../../../../../../../Program Files (x86)/National Instruments/LabVIEW 8.6/resource/importtools/Common/Event/NISAST Event.lvclass"/>
		<Item Name="Toolbar Demo.vi" Type="VI" URL="../Toolbar Demo.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="MS_Toolbar_Insert Item.vi" Type="VI" URL="../Low Level/MS_Toolbar_Insert Item.vi"/>
			<Item Name="MS_Toolbar_Initialize.vi" Type="VI" URL="../Low Level/MS_Toolbar_Initialize.vi"/>
			<Item Name="MS_Toolbar_Clear Items.vi" Type="VI" URL="../Low Level/MS_Toolbar_Clear Items.vi"/>
			<Item Name="NISAST Event.lvclass" Type="LVClass" URL="../../../../../../../../Program Files (x86)/National Instruments/LabVIEW 8.6/resource/importtools/Common/Event/NISAST Event.lvclass"/>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
