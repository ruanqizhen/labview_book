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
		<Item Name="表示法转换.vi" Type="VI" URL="../表示法转换.vi"/>
		<Item Name="数值与布尔转换.vi" Type="VI" URL="../数值与布尔转换.vi"/>
		<Item Name="格式化时间.vi" Type="VI" URL="../格式化时间.vi"/>
		<Item Name="变体数据类型转换.vi" Type="VI" URL="../变体数据类型转换.vi"/>
		<Item Name="平化至字符串.vi" Type="VI" URL="../平化至字符串.vi"/>
		<Item Name="平化至XML.vi" Type="VI" URL="../平化至XML.vi"/>
		<Item Name="强制类型转换DBL to I64.vi" Type="VI" URL="../强制类型转换DBL to I64.vi"/>
		<Item Name="布尔与U8之间转换.vi" Type="VI" URL="../布尔与U8之间转换.vi"/>
		<Item Name="字符串与U8数组之间转换.vi" Type="VI" URL="../字符串与U8数组之间转换.vi"/>
		<Item Name="时间与数值的转换.vi" Type="VI" URL="../时间与数值的转换.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
			</Item>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
