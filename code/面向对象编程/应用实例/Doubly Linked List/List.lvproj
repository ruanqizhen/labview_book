<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="21008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="demo.vi" Type="VI" URL="../demo.vi"/>
		<Item Name="IList.lvclass" Type="LVClass" URL="../IList/IList.lvclass"/>
		<Item Name="DoublyLinkedList.lvclass" Type="LVClass" URL="../DoublyLinkedList/DoublyLinkedList.lvclass"/>
		<Item Name="IDoublyNode.lvclass" Type="LVClass" URL="../IDoublyNode/IDoublyNode.lvclass"/>
		<Item Name="DoublyNode.lvclass" Type="LVClass" URL="../DoublyNode/DoublyNode.lvclass"/>
		<Item Name="Iterator.lvclass" Type="LVClass" URL="../Iterator/Iterator.lvclass"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
