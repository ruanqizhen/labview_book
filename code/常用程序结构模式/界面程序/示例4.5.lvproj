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
		<Item Name="SubVI" Type="Folder">
			<Item Name="运算耗时约1秒.vi" Type="VI" URL="../运算耗时约1秒.vi"/>
		</Item>
		<Item Name="一般界面程序的框图.vi" Type="VI" URL="../一般界面程序的框图.vi"/>
		<Item Name="改进的界面程序.vi" Type="VI" URL="../改进的界面程序.vi"/>
		<Item Name="初始化事件.vi" Type="VI" URL="../初始化事件.vi"/>
		<Item Name="单事件创建事件.vi" Type="VI" URL="../单事件创建事件.vi"/>
		<Item Name="单用户自定义事件界面程序.vi" Type="VI" URL="../单用户自定义事件界面程序.vi"/>
		<Item Name="处理耗时分支.vi" Type="VI" URL="../处理耗时分支.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
				<Item Name="Merge Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Merge Errors.vi"/>
			</Item>
			<Item Name="自定义事件.vi" Type="VI" URL="../自定义事件.vi"/>
			<Item Name="NISAST Event.lvclass" Type="LVClass" URL="../../../../../../../../Program Files (x86)/National Instruments/LabVIEW 8.6/resource/importtools/Common/Event/NISAST Event.lvclass"/>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
