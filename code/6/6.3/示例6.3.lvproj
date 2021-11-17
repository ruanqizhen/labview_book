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
		<Item Name="四种子VI调用节点.vi" Type="VI" URL="../四种子VI调用节点.vi"/>
		<Item Name="使用通过引用节点调用动态调用.vi" Type="VI" URL="../使用通过引用节点调用动态调用.vi"/>
		<Item Name="使用通过运行VI方法动态调用.vi" Type="VI" URL="../使用通过运行VI方法动态调用.vi"/>
		<Item Name="框架插件式程序.vi" Type="VI" URL="../框架插件式程序.vi"/>
		<Item Name="阶乘循环算法.vi" Type="VI" URL="../阶乘循环算法.vi"/>
		<Item Name="递归计算阶乘.vi" Type="VI" URL="../递归计算阶乘.vi"/>
		<Item Name="后台任务.lvproj" Type="Document" URL="../后台任务/后台任务.lvproj"/>
		<Item Name="Splash Screen.vi" Type="VI" URL="../启动画面/Splash Screen.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Merge Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Merge Errors.vi"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
			</Item>
			<Item Name="任务B.vi" Type="VI" URL="../插件/任务B.vi"/>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
