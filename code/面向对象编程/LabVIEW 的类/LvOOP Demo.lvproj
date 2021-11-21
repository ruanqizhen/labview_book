<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="8608001">
	<Property Name="NI.Project.Description" Type="Str">这是一个用于演示 LvClass 的程序。

需要详细资料请参考我的 blog：
http://ruanqizhen.spaces.live.com/blog/cns!5852D4F797C53FB6!3213.entry</Property>
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
		<Item Name="Animal.lvclass" Type="LVClass" URL="../Animal/Animal.lvclass"/>
		<Item Name="Dog.lvclass" Type="LVClass" URL="../Dog/Dog.lvclass"/>
		<Item Name="Chicken.lvclass" Type="LVClass" URL="../Chicken/Chicken.lvclass"/>
		<Item Name="Demo Dynamic Dispatching.vi" Type="VI" URL="../Demo Dynamic Dispatching.vi"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
