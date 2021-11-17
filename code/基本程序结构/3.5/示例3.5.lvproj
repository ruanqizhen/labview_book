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
		<Item Name="循环结构.vi" Type="VI" URL="../循环结构.vi"/>
		<Item Name="循环隧道.vi" Type="VI" URL="../循环隧道.vi"/>
		<Item Name="二维数组处理.vi" Type="VI" URL="../二维数组处理.vi"/>
		<Item Name="进度条.vi" Type="VI" URL="../进度条.vi"/>
		<Item Name="相连的隧道.vi" Type="VI" URL="../相连的隧道.vi"/>
		<Item Name="移位寄存器.vi" Type="VI" URL="../移位寄存器.vi"/>
		<Item Name="相连的移位寄存器.vi" Type="VI" URL="../相连的移位寄存器.vi"/>
		<Item Name="未初始化移位寄存器.vi" Type="VI" URL="../未初始化移位寄存器.vi"/>
		<Item Name="多个左侧移位寄存器.vi" Type="VI" URL="../多个左侧移位寄存器.vi"/>
		<Item Name="反馈节点.vi" Type="VI" URL="../反馈节点.vi"/>
		<Item Name="条件结束.vi" Type="VI" URL="../条件结束.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
			</Item>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
