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
		<Item Name="棋盘" Type="Folder">
			<Item Name="step 1.vi" Type="VI" URL="../Chess Interface/step 1.vi"/>
			<Item Name="step 2.vi" Type="VI" URL="../Chess Interface/step 2.vi"/>
			<Item Name="step 3.vi" Type="VI" URL="../Chess Interface/step 3.vi"/>
			<Item Name="step 4.vi" Type="VI" URL="../Chess Interface/step 4.vi"/>
			<Item Name="step 5.vi" Type="VI" URL="../Chess Interface/step 5.vi"/>
			<Item Name="step 6.vi" Type="VI" URL="../Chess Interface/step 6.vi"/>
			<Item Name="step 7.vi" Type="VI" URL="../Chess Interface/step 7.vi"/>
			<Item Name="step 8.vi" Type="VI" URL="../Chess Interface/step 8.vi"/>
			<Item Name="Get All Chess.vi" Type="VI" URL="../Chess Interface/Get All Chess.vi"/>
			<Item Name="irregular shape background.vi" Type="VI" URL="../Chess Interface/irregular shape background.vi"/>
			<Item Name="chess without border.ctl" Type="VI" URL="../Chess Interface/chess without border.ctl"/>
			<Item Name="chess with shade.ctl" Type="VI" URL="../Chess Interface/chess with shade.ctl"/>
			<Item Name="Initialize.vi" Type="VI" URL="../Chess Interface/Initialize.vi"/>
			<Item Name="Pict Ring Chess.ctl" Type="VI" URL="../Chess Interface/Pict Ring Chess.ctl"/>
			<Item Name="step 9.vi" Type="VI" URL="../Chess Interface/step 9.vi"/>
			<Item Name="pic 1.vi" Type="VI" URL="../Chess Interface/pic 1.vi"/>
			<Item Name="Set Chess Position.vi" Type="VI" URL="../Chess Interface/Set Chess Position.vi"/>
		</Item>
		<Item Name="半透明界面.vi" Type="VI" URL="../半透明界面.vi"/>
		<Item Name="不规则窗口.vi" Type="VI" URL="../不规则窗口.vi"/>
		<Item Name="动画窗口.vi" Type="VI" URL="../动画窗口.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="LVPoint32TypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPoint32TypeDef.ctl"/>
				<Item Name="Read PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Read PNG File.vi"/>
				<Item Name="Check Path.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Path.vi"/>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Directory of Top Level VI.vi"/>
				<Item Name="Create Mask By Alpha.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Create Mask By Alpha.vi"/>
				<Item Name="Bit-array To Byte-array.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Bit-array To Byte-array.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="Draw Flattened Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Flattened Pixmap.vi"/>
				<Item Name="FixBadRect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/FixBadRect.vi"/>
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
			</Item>
			<Item Name="user32.dll" Type="Document" URL="user32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Get Control.vi" Type="VI" URL="Program Files (x86)/National Instruments/LabVIEW 8.6/resource/importtools/Common/VI Scripting/VI/Front Panel/Method/Get Control.vi"/>
			<Item Name="Object Class.ctl" Type="VI" URL="Program Files (x86)/National Instruments/LabVIEW 8.6/resource/importtools/Common/VI Scripting/Type Define/Object Class.ctl"/>
		</Item>
		<Item Name="程序生成规范" Type="Build"/>
	</Item>
</Project>
