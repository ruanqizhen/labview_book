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
		<Item Name="使用搜索（源数据仅传入）.vi" Type="VI" URL="../使用搜索（源数据仅传入）.vi"/>
		<Item Name="使用移位寄存器优化内存使用.vi" Type="VI" URL="../使用移位寄存器优化内存使用.vi"/>
		<Item Name="使用元素同址操作结构.vi" Type="VI" URL="../使用元素同址操作结构.vi"/>
		<Item Name="输出参数接线端.vi" Type="VI" URL="../输出参数接线端.vi"/>
		<Item Name="输入参数接线端.vi" Type="VI" URL="../输入参数接线端.vi"/>
		<Item Name="搜索（源数据传入传出）.vi" Type="VI" URL="../搜索（源数据传入传出）.vi"/>
		<Item Name="搜索（源数据仅传入）.vi" Type="VI" URL="../搜索（源数据仅传入）.vi"/>
		<Item Name="Array.vi" Type="VI" URL="../Array.vi"/>
		<Item Name="内存泄漏.vi" Type="VI" URL="../内存泄漏.vi"/>
		<Item Name="使用搜索（源数据传入传出）.vi" Type="VI" URL="../使用搜索（源数据传入传出）.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="NI_XML.lvlib" Type="Library" URL="/&lt;vilib&gt;/xml/NI_XML.lvlib"/>
			</Item>
			<Item Name="nixerces27.dll" Type="Document" URL="../../../../../../../../Program Files (x86)/National Instruments/LabVIEW 8.6/resource/nixerces27.dll"/>
			<Item Name="DOMUserDefRef.dll" Type="Document" URL="DOMUserDefRef.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
