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
		<Item Name="动态改变界面.vi" Type="VI" URL="../动态改变界面.vi"/>
		<Item Name="改变VI标题.vi" Type="VI" URL="../改变VI标题.vi"/>
		<Item Name="从VI得到控件.vi" Type="VI" URL="../从VI得到控件.vi"/>
		<Item Name="设置界面修饰物的属性.vi" Type="VI" URL="../设置界面修饰物的属性.vi"/>
		<Item Name="得到通用属性.vi" Type="VI" URL="../得到通用属性.vi"/>
		<Item Name="修改簇中的元素的属性.vi" Type="VI" URL="../修改簇中的元素的属性.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="NISAST Event.lvclass" Type="LVClass" URL="../../../../../../../../Program Files (x86)/National Instruments/LabVIEW 8.6/resource/importtools/Common/Event/NISAST Event.lvclass"/>
			<Item Name="NISAST VI Scripting.lvlib" Type="Library" URL="../../../../../../../../Program Files (x86)/National Instruments/LabVIEW 8.6/resource/importtools/Common/VI Scripting/NISAST VI Scripting.lvlib"/>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
