<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="8608001">
	<Property Name="varPersistentID:{5BBD8B87-B0CC-4712-A36E-313AA606C314}" Type="Ref">/我的电脑/外部设备.lvlib/共享变量</Property>
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
		<Item Name="子VI文件夹" Type="Folder">
			<Item Name="子VI.vi" Type="VI" URL="../自定义X控件/子VI.vi"/>
		</Item>
		<Item Name="同步文件夹" Type="Folder" URL="../同步文件夹">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="新文件夹" Type="Folder"/>
		<Item Name="主VI.vi" Type="VI" URL="../主VI.vi"/>
		<Item Name="自定义普通控件.ctl" Type="VI" URL="../自定义普通控件.ctl"/>
		<Item Name="数据文件.lvlib" Type="Library" URL="../数据文件.lvlib"/>
		<Item Name="外部设备.lvlib" Type="Library" URL="../外部设备.lvlib"/>
		<Item Name="演示类.lvclass" Type="LVClass" URL="../演示类.lvclass"/>
		<Item Name="自定义X控件.xctl" Type="XControl" URL="../自定义X控件/自定义X控件.xctl"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="XControlSupport.lvlib" Type="Library" URL="/&lt;vilib&gt;/_xctls/XControlSupport.lvlib"/>
				<Item Name="Version To Dotted String.vi" Type="VI" URL="/&lt;vilib&gt;/_xctls/Version To Dotted String.vi"/>
			</Item>
		</Item>
		<Item Name="程序生成规范" Type="Build">
			<Item Name="我的应用程序" Type="EXE">
				<Property Name="App_applicationGUID" Type="Str">{11466E80-8098-4812-A063-B63C24A2370A}</Property>
				<Property Name="App_applicationName" Type="Str">应用程序.exe</Property>
				<Property Name="App_companyName" Type="Str">National Instruments</Property>
				<Property Name="App_fileDescription" Type="Str">我的应用程序</Property>
				<Property Name="App_fileVersion.major" Type="Int">1</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{1C0A40AB-91AB-4EB2-8B70-48FAD1F1FF8E}</Property>
				<Property Name="App_INI_GUID" Type="Str">{8C2E8DD0-9B2B-4F1D-88EA-BD1F897DBECB}</Property>
				<Property Name="App_internalName" Type="Str">我的应用程序</Property>
				<Property Name="App_legalCopyright" Type="Str">版权 2008 National Instruments</Property>
				<Property Name="App_productName" Type="Str">我的应用程序</Property>
				<Property Name="Bld_buildSpecName" Type="Str">我的应用程序</Property>
				<Property Name="Bld_defaultLanguage" Type="Str">ChineseS</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Destination[0].destName" Type="Str">应用程序.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/我的应用程序/internal.llb</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">支持目录</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/我的应用程序/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{53B0F0C1-475D-4F3A-BF2E-EE837EC35D78}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">1</Property>
			</Item>
		</Item>
	</Item>
</Project>
