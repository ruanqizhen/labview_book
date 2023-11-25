<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="8608001">
	<Item Name="我的电脑" Type="My Computer">
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="主界面.vi" Type="VI" URL="../主界面.vi"/>
		<Item Name="读数据.vi" Type="VI" URL="../读数据.vi"/>
		<Item Name="存数据.vi" Type="VI" URL="../存数据.vi"/>
		<Item Name="字符串至数值转换.vi" Type="VI" URL="../字符串至数值转换.vi"/>
		<Item Name="使用DLL.vi" Type="VI" URL="../使用DLL.vi"/>
		<Item Name="数据类型.vi" Type="VI" URL="../数据类型.vi"/>
		<Item Name="不同状态的基准路径.vi" Type="VI" URL="../不同状态的基准路径.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Open Config Data.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Open Config Data.vi"/>
				<Item Name="Config Data Open Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Open Reference.vi"/>
				<Item Name="Config Data Registry.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Registry.vi"/>
				<Item Name="Config Data RefNum" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data RefNum"/>
				<Item Name="Config Data.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data.ctl"/>
				<Item Name="Config Data Section.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Section.ctl"/>
				<Item Name="Config Data Registry Functions.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Registry Functions.ctl"/>
				<Item Name="Config Data Set File Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Set File Path.vi"/>
				<Item Name="Config Data Modify.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Modify.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Info From Config Data.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Info From Config Data.vi"/>
				<Item Name="Config Data Modify Functions.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Modify Functions.ctl"/>
				<Item Name="Config Data Read From File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Read From File.vi"/>
				<Item Name="Config Data Get File Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Get File Path.vi"/>
				<Item Name="String to Config Data.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/String to Config Data.vi"/>
				<Item Name="Invalid Config Data Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Invalid Config Data Reference.vi"/>
				<Item Name="Config Data Close Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Close Reference.vi"/>
				<Item Name="Config Data Get Key Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Get Key Value.vi"/>
				<Item Name="Read Key (I32).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Read Key (I32).vi"/>
				<Item Name="Close Config Data.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Close Config Data.vi"/>
				<Item Name="Config Data Write To File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Write To File.vi"/>
				<Item Name="Config Data to String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data to String.vi"/>
				<Item Name="Add Quotes.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Add Quotes.vi"/>
				<Item Name="Write Key (I32).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Write Key (I32).vi"/>
			</Item>
			<Item Name="SharedLib.dll" Type="Document" URL="../../builds/发布项目/共享库 DLL/SharedLib.dll"/>
		</Item>
		<Item Name="程序生成规范" Type="Build">
			<Item Name="应用程序" Type="EXE">
				<Property Name="App_applicationGUID" Type="Str">{582EFAF9-F16F-4DB6-AB3F-2A990AA6ADA5}</Property>
				<Property Name="App_applicationName" Type="Str">TestDir.exe</Property>
				<Property Name="App_companyName" Type="Str">National Instruments</Property>
				<Property Name="App_fileDescription" Type="Str">应用程序</Property>
				<Property Name="App_fileVersion.major" Type="Int">1</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{4633C65D-9DBB-473E-AD12-6188C30A9C30}</Property>
				<Property Name="App_INI_GUID" Type="Str">{67ED5198-F170-495D-AE72-5FFBBD9CCA09}</Property>
				<Property Name="App_internalName" Type="Str">应用程序</Property>
				<Property Name="App_legalCopyright" Type="Str">版权 2008 National Instruments</Property>
				<Property Name="App_productName" Type="Str">应用程序</Property>
				<Property Name="Bld_buildSpecName" Type="Str">应用程序</Property>
				<Property Name="Bld_defaultLanguage" Type="Str">ChineseS</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Destination[0].destName" Type="Str">TestDir.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../9.3/应用程序/internal.llb</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">支持目录</Property>
				<Property Name="Destination[1].path" Type="Path">../9.3/应用程序/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_actXinfo_enumCLSID[0]" Type="Str">{1129BBA1-E1FD-42D0-BC0B-572F8B0B552F}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[1]" Type="Str">{D8F56F7E-6BEA-4AB8-BF91-03BED8214E86}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[10]" Type="Str">{04F45A5F-04BD-4E72-A3FB-F114EDB5DA51}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[11]" Type="Str">{09955554-75B3-4D13-AEA5-37DACF120D38}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[12]" Type="Str">{325E5491-0957-4284-96CE-12582B18D530}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[13]" Type="Str">{3B0E6483-0567-453C-832E-41E72A469D7F}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[14]" Type="Str">{200AE82F-3A68-4F17-909A-D7F968AFFA71}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[15]" Type="Str">{F498EF33-4FEE-4D87-BFF8-42C81CDA1881}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[16]" Type="Str">{4A678822-A1AF-43BC-BBED-808AF7533CF9}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[2]" Type="Str">{36004F48-7C77-4BD0-BA49-DA0EE72F252E}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[3]" Type="Str">{4BA9C0AE-2620-4836-95FF-66605C2D8714}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[4]" Type="Str">{CE9B422B-4230-448B-8E6E-76A9F33892AE}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[5]" Type="Str">{94FD25CC-8581-4343-A50D-492F3BD21D5B}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[6]" Type="Str">{9DC294A4-B1E1-479A-88F0-B90A0A3C2737}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[7]" Type="Str">{2C6FDBBA-A039-432E-914B-8BE791C1FD70}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[8]" Type="Str">{88B7AA7A-1321-4442-9777-1FF7237A17F3}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[9]" Type="Str">{E7173CB1-7984-4513-8DBA-556FFC7B7CA7}</Property>
				<Property Name="Exe_actXinfo_enumCLSIDsCount" Type="Int">17</Property>
				<Property Name="Exe_actXinfo_majorVersion" Type="Int">5</Property>
				<Property Name="Exe_actXinfo_minorVersion" Type="Int">5</Property>
				<Property Name="Exe_actXinfo_objCLSID[0]" Type="Str">{5103A7C8-9384-4A2C-8C51-550662C53C58}</Property>
				<Property Name="Exe_actXinfo_objCLSID[1]" Type="Str">{E5ED6A00-2649-495D-A759-1BF048309E38}</Property>
				<Property Name="Exe_actXinfo_objCLSID[2]" Type="Str">{62D6E718-62C9-42D7-BBA7-4779A4C556B1}</Property>
				<Property Name="Exe_actXinfo_objCLSID[3]" Type="Str">{C79AB981-5575-4A2A-8FD9-B6377FD302C7}</Property>
				<Property Name="Exe_actXinfo_objCLSID[4]" Type="Str">{A3756DE5-F85C-40C1-B928-BF0D889656D8}</Property>
				<Property Name="Exe_actXinfo_objCLSID[5]" Type="Str">{1761A8B3-2888-4B79-8C15-353A0322FDB1}</Property>
				<Property Name="Exe_actXinfo_objCLSIDsCount" Type="Int">6</Property>
				<Property Name="Exe_actXinfo_progIDPrefix" Type="Str">TestDir</Property>
				<Property Name="Exe_actXServerName" Type="Str">TestDir</Property>
				<Property Name="Exe_actXServerNameGUID" Type="Str">{6841FC45-E046-459B-A08A-C14BBA604E99}</Property>
				<Property Name="Source[0].itemID" Type="Str">{C4FC8B36-F9CC-4540-BF39-0FCC28954BD6}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/我的电脑/主界面.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
			</Item>
			<Item Name="共享库 DLL" Type="DLL">
				<Property Name="App_applicationGUID" Type="Str">{F158BDBF-9457-4154-9265-4B6F48BE040C}</Property>
				<Property Name="App_applicationName" Type="Str">SharedLib.dll</Property>
				<Property Name="App_companyName" Type="Str">National Instruments</Property>
				<Property Name="App_fileDescription" Type="Str">共享库 DLL</Property>
				<Property Name="App_fileVersion.major" Type="Int">1</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{3CA2B301-E4F9-4C56-81F5-B611AFB840D2}</Property>
				<Property Name="App_INI_GUID" Type="Str">{29BE4439-5FCA-468E-B844-009408CCAA5C}</Property>
				<Property Name="App_internalName" Type="Str">共享库 DLL</Property>
				<Property Name="App_legalCopyright" Type="Str">版权 2009 National Instruments</Property>
				<Property Name="App_productName" Type="Str">共享库 DLL</Property>
				<Property Name="Bld_buildSpecName" Type="Str">共享库 DLL</Property>
				<Property Name="Bld_defaultLanguage" Type="Str">ChineseS</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Destination[0].destName" Type="Str">SharedLib.dll</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/共享库 DLL/internal.llb</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">支持目录</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/共享库 DLL/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Dll_delayOSMsg" Type="Bool">true</Property>
				<Property Name="Dll_headerGUID" Type="Str">{CAF0CF1D-C309-4305-8A30-58AECE3CDCCA}</Property>
				<Property Name="Dll_libGUID" Type="Str">{7A49FFCB-8668-4FD0-BBB8-72315AA59650}</Property>
				<Property Name="Source[0].itemID" Type="Str">{1D5CAA21-0F3C-41CB-AD1A-DA1D5861AA9F}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]VIProtoName" Type="Str">返回值</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[1]VIProtoDir" Type="Int">0</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[1]VIProtoInputIdx" Type="Int">11</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[1]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[1]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[1]VIProtoName" Type="Str">InputString</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[1]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[1]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[2]CallingConv" Type="Int">1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[2]Name" Type="Str">StringToNumber</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[2]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[2]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[2]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[2]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[2]VIProtoName" Type="Str">OutputNumber</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[2]VIProtoOutputIdx" Type="Int">3</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[2]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfoCPTM" Type="Bin">#'#!!1!!!!1!"!!!!!N!#A!%SPX8VA!!%%!Q`````Q&lt;8VL@\N+Y!!$Q!]!!-!!!!!!!!!!%!!!!!!!!!!!!!!!!!!!!#!A!!?!!!!!!!!!E!!!!!!!!!!!!!!!!!!!!)!!!!!!%!!Q</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfoVIProtoItemCount" Type="Int">3</Property>
				<Property Name="Source[1].itemID" Type="Ref">/我的电脑/字符串至数值转换.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[0]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[0]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[0]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[0]VIProtoName" Type="Str">返回值</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[0]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[0]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[1]VIProtoDir" Type="Int">0</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[1]VIProtoInputIdx" Type="Int">2</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[1]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[1]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[1]VIProtoName" Type="Str">_2</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[1]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[1]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[2]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[2]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[2]VIProtoLenInput" Type="Int">3</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[2]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[2]VIProtoName" Type="Str">_3</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[2]VIProtoOutputIdx" Type="Int">3</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[2]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[3]VIProtoDir" Type="Int">3</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[3]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[3]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[3]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[3]VIProtoName" Type="Str">len</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[3]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[3]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[4]CallingConv" Type="Int">1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[4]Name" Type="Str">_</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[4]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[4]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[4]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[4]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[4]VIProtoName" Type="Str">errorOut</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[4]VIProtoOutputIdx" Type="Int">1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfo[4]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfoCPTM" Type="Bin">#'#!!1!!!!A!"!!!!!R!)1:T&gt;'&amp;U&gt;8-!!!N!!Q!%9W^E:1!!%%!Q`````Q:T&lt;X6S9W5!!":!5!!$!!%!!A!$#76S=G^S)'^V&gt;!!+1#%%MLSW_Q!!%%!Q`````Q&lt;8VL@\N+Y!!$Q!]!!-!!!!"!!&amp;!!9!!!!!!!!!!!!!!!!!!!!!!A!!?!!!#1!)!!E!!!!!!!!!!!!!!!!!!!!!!!!!!!%!"Q</Property>
				<Property Name="Source[2].ExportedVI.VIProtoInfoVIProtoItemCount" Type="Int">5</Property>
				<Property Name="Source[2].itemID" Type="Ref">/我的电脑/数据类型.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">ExportedVI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
			</Item>
			<Item Name="我的源代码发布" Type="Source Distribution">
				<Property Name="Bld_buildSpecName" Type="Str">我的源代码发布</Property>
				<Property Name="Bld_defaultLanguage" Type="Str">ChineseS</Property>
				<Property Name="Bld_excludedDirectory[0]" Type="Path">vi.lib</Property>
				<Property Name="Bld_excludedDirectory[0].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[1]" Type="Path">resource/objmgr</Property>
				<Property Name="Bld_excludedDirectory[1].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[2]" Type="Path">instr.lib</Property>
				<Property Name="Bld_excludedDirectory[2].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[3]" Type="Path">user.lib</Property>
				<Property Name="Bld_excludedDirectory[3].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectoryCount" Type="Int">4</Property>
				<Property Name="Destination[0].destName" Type="Str">目标目录</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/我的源代码发布</Property>
				<Property Name="Destination[1].destName" Type="Str">支持目录</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/我的源代码发布/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{C4FC8B36-F9CC-4540-BF39-0FCC28954BD6}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/我的电脑/主界面.vi</Property>
				<Property Name="Source[1].properties[0].type" Type="Str">Allow debugging</Property>
				<Property Name="Source[1].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[1].properties[1].type" Type="Str">Auto error handling</Property>
				<Property Name="Source[1].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[1].properties[2].type" Type="Str">Password</Property>
				<Property Name="Source[1].properties[2].value" Type="Str">bmkuY29t</Property>
				<Property Name="Source[1].propertiesCount" Type="Int">3</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/我的电脑/读数据.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/我的电脑/存数据.vi</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].type" Type="Str">VI</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/我的电脑/字符串至数值转换.vi</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[4].type" Type="Str">VI</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref">/我的电脑/使用DLL.vi</Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[5].type" Type="Str">VI</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref">/我的电脑/数据类型.vi</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[6].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">7</Property>
			</Item>
			<Item Name="我的Web服务" Type="RESTful WS">
				<Property Name="Bld_buildSpecName" Type="Str">我的Web服务</Property>
				<Property Name="Bld_defaultLanguage" Type="Str">ChineseS</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Destination[0].destName" Type="Str">WebService.lvws</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/我的Web服务/internal.llb</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">支持目录</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/我的Web服务/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="RESTfulWebSrvc_routingTemplateCount" Type="Int">0</Property>
				<Property Name="Source[0].itemID" Type="Str">{C0CCABBF-D156-4CED-9175-0EBC3DD50071}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/我的电脑/字符串至数值转换.vi</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/我的电脑/主界面.vi</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="WebSrvc_serviceGUID" Type="Str">{C4B9B1D6-7D0C-4A28-A41A-7E199D5DD6D6}</Property>
				<Property Name="WebSrvc_serviceName" Type="Str">WebService</Property>
				<Property Name="WebSrvc_webServer[0]" Type="Str">default</Property>
				<Property Name="WebSrvc_webServerCount" Type="Int">1</Property>
			</Item>
			<Item Name="我的安装程序" Type="Installer">
				<Property Name="arpCompany" Type="Str">National Instruments</Property>
				<Property Name="arpURL" Type="Str">http://www.NationalInstruments.com/</Property>
				<Property Name="AutoIncrement" Type="Bool">true</Property>
				<Property Name="BuildLabel" Type="Str">我的安装程序</Property>
				<Property Name="BuildLocation" Type="Path">../../Builds/发布项目/我的安装程序</Property>
				<Property Name="DirInfo.Count" Type="Int">1</Property>
				<Property Name="DirInfo.DefaultDir" Type="Str">{9F7B9D20-0448-4850-BA09-34039DEB473E}</Property>
				<Property Name="DirInfo[0].DirName" Type="Str">发布项目</Property>
				<Property Name="DirInfo[0].DirTag" Type="Str">{9F7B9D20-0448-4850-BA09-34039DEB473E}</Property>
				<Property Name="DirInfo[0].ParentTag" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="DistID" Type="Str">{D8AF835E-B448-4127-BAD2-D9796FC24C92}</Property>
				<Property Name="DistParts.Count" Type="Int">1</Property>
				<Property Name="DistPartsInfo[0].FlavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPartsInfo[0].ProductID" Type="Str">{2CA542BC-E002-4064-84DB-49B3E558A26D}</Property>
				<Property Name="DistPartsInfo[0].ProductName" Type="Str">LabVIEW运行引擎8.6</Property>
				<Property Name="DistPartsInfo[0].UpgradeCode" Type="Str">{7975A1CC-5DCA-4997-EE8C-C1903BA18512}</Property>
				<Property Name="InstSpecVersion" Type="Str">8608001</Property>
				<Property Name="Language" Type="Int">2052</Property>
				<Property Name="LicenseFile" Type="Ref"></Property>
				<Property Name="OSCheck" Type="Int">0</Property>
				<Property Name="OSCheck_Vista" Type="Bool">false</Property>
				<Property Name="ProductName" Type="Str">发布项目</Property>
				<Property Name="ProductVersion" Type="Str">1.0.0</Property>
				<Property Name="ReadmeFile" Type="Ref"></Property>
				<Property Name="UpgradeCode" Type="Str">{C87A77D0-0BE8-4AB6-B903-EFCDCA3BB920}</Property>
			</Item>
			<Item Name="我的Zip文件" Type="Zip File">
				<Property Name="Absolute[0]" Type="Bool">false</Property>
				<Property Name="BuildName" Type="Str">我的Zip文件</Property>
				<Property Name="Comments" Type="Str"></Property>
				<Property Name="DestinationID[0]" Type="Str">{9DD379DA-0999-4A54-BF5B-FFFFE43548C8}</Property>
				<Property Name="DestinationItemCount" Type="Int">1</Property>
				<Property Name="DestinationName[0]" Type="Str">Destination Directory</Property>
				<Property Name="IncludedItemCount" Type="Int">1</Property>
				<Property Name="IncludedItems[0]" Type="Ref">/我的电脑/程序生成规范/应用程序</Property>
				<Property Name="IncludeProject" Type="Bool">false</Property>
				<Property Name="Path[0]" Type="Path">../../builds/发布项目/我的Zip文件/发布项目.zip</Property>
				<Property Name="ZipBase" Type="Str">NI_zipbasedefault</Property>
			</Item>
		</Item>
	</Item>
</Project>
