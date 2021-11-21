<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="8608001">
	<Property Name="NI.Project.Description" Type="Str">这个程序演示利用队列来实现数据的传引用。

需要详细资料请参考：
http://ruanqizhen.spaces.live.com/blog/cns!5852D4F797C53FB6!3193.entry</Property>
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
		<Item Name="Initialize Data.vi" Type="VI" URL="../Initialize Data.vi"/>
		<Item Name="Set Name.vi" Type="VI" URL="../Set Name.vi"/>
		<Item Name="Release Data.vi" Type="VI" URL="../Release Data.vi"/>
		<Item Name="Set Number.vi" Type="VI" URL="../Set Number.vi"/>
		<Item Name="Get Data.vi" Type="VI" URL="../Get Data.vi"/>
		<Item Name="自定义引用句柄.ctl" Type="VI" URL="../自定义引用句柄.ctl"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Merge Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Merge Errors.vi"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
