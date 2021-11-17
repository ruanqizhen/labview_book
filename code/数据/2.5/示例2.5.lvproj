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
		<Item Name="字符串公式求值.vi" Type="VI" URL="../字符串公式求值.vi"/>
		<Item Name="字符串至布尔数组.vi" Type="VI" URL="../字符串至布尔数组.vi"/>
		<Item Name="程序运行时，改变控件标题.vi" Type="VI" URL="../程序运行时，改变控件标题.vi"/>
		<Item Name="禁用枚举中的某些项.vi" Type="VI" URL="../禁用枚举中的某些项.vi"/>
		<Item Name="在字符串中显示多种字体.vi" Type="VI" URL="../在字符串中显示多种字体.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="NI_Gmath.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_Gmath.lvlib"/>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="../../../../../../../../Program Files (x86)/National Instruments/LabVIEW 8.6/resource/lvanlys.dll"/>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
