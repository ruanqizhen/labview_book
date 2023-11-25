<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="11008008">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Demo.vi" Type="VI" URL="../Demo.vi"/>
		<Item Name="My Algorithm Library.lvlibp" Type="LVLibp" URL="../../My Algorithm Library/builds/My Algorithm Library.lvlibp">
			<Item Name="Factorial.vi" Type="VI" URL="../../My Algorithm Library/builds/My Algorithm Library.lvlibp/Factorial.vi"/>
			<Item Name="Private.vi" Type="VI" URL="../../My Algorithm Library/builds/My Algorithm Library.lvlibp/Private.vi"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="My Application" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{90FA7167-C933-411D-B8F3-84978FEFF8BF}</Property>
				<Property Name="App_INI_GUID" Type="Str">{70A9A34F-2434-4717-90AB-3F12C1DF9AAB}</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{FF235239-F685-4178-A393-BE8A6708B13D}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">My Application</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../Using Packed Library/builds</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{930E0F72-4398-465F-B3C4-2D4A8D91180D}</Property>
				<Property Name="Destination[0].destName" Type="Str">demo.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Using Packed Library/builds/demo.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Using Packed Library/builds/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{AAF58362-46F7-4407-8768-BC11F6A9ADF9}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Demo.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">National Instruments</Property>
				<Property Name="TgtF_fileDescription" Type="Str">My Application</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">My Application</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright ?2011 National Instruments</Property>
				<Property Name="TgtF_productName" Type="Str">My Application</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{1F651AC5-F198-4562-BAFA-1965106E595C}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">demo.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
