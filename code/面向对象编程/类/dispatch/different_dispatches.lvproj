<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="21008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Child.lvclass" Type="LVClass" URL="../Child/Child.lvclass"/>
		<Item Name="Parent.lvclass" Type="LVClass" URL="../Parent/Parent.lvclass"/>
		<Item Name="test2.vi" Type="VI" URL="../Child/test2.vi"/>
		<Item Name="test_data.vi" Type="VI" URL="../test_data.vi"/>
		<Item Name="test_default_value.vi" Type="VI" URL="../test_default_value.vi"/>
		<Item Name="test_methods.vi" Type="VI" URL="../test_methods.vi"/>
		<Item Name="test_property_node.vi" Type="VI" URL="../test_property_node.vi"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
