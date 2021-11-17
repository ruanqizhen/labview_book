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
		<Item Name="OneStep.vi" Type="VI" URL="../OneStep.vi"/>
		<Item Name="SimpleModel.vi" Type="VI" URL="../SimpleModel.vi"/>
		<Item Name="PipelineModel.vi" Type="VI" URL="../PipelineModel.vi"/>
		<Item Name="QueueModel.vi" Type="VI" URL="../QueueModel.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="daq.vi" Type="VI" URL="../daq.vi"/>
			<Item Name="procress.vi" Type="VI" URL="../procress.vi"/>
			<Item Name="display.vi" Type="VI" URL="../display.vi"/>
			<Item Name="save.vi" Type="VI" URL="../save.vi"/>
			<Item Name="exit.vi" Type="VI" URL="../exit.vi"/>
			<Item Name="InQueue.vi" Type="VI" URL="../InQueue.vi"/>
			<Item Name="OutQueue.vi" Type="VI" URL="../OutQueue.vi"/>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
