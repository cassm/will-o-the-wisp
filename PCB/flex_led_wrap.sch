<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="16" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="14" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="57" name="tCAD" color="7" fill="1" visible="no" active="no"/>
<layer number="59" name="tCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="60" name="bCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="yes" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="16" fill="1" visible="yes" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="tplace-old" color="10" fill="1" visible="yes" active="yes"/>
<layer number="109" name="ref-old" color="11" fill="1" visible="yes" active="yes"/>
<layer number="110" name="fp0" color="7" fill="1" visible="yes" active="yes"/>
<layer number="111" name="LPC17xx" color="7" fill="1" visible="yes" active="yes"/>
<layer number="112" name="tSilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="113" name="IDFDebug" color="4" fill="1" visible="yes" active="yes"/>
<layer number="114" name="Badge_Outline" color="7" fill="1" visible="yes" active="yes"/>
<layer number="115" name="ReferenceISLANDS" color="7" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="yes" active="yes"/>
<layer number="118" name="Rect_Pads" color="7" fill="1" visible="yes" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="128" name="_bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="129" name="Mask" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="153" name="FabDoc1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="154" name="FabDoc2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="155" name="FabDoc3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="2" fill="10" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="3" fill="10" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="4" fill="10" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="5" fill="10" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="6" fill="10" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="10" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="8" fill="10" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="9" fill="10" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="18" fill="1" visible="no" active="no"/>
<layer number="218" name="218bmp" color="19" fill="1" visible="no" active="no"/>
<layer number="219" name="219bmp" color="20" fill="1" visible="no" active="no"/>
<layer number="220" name="220bmp" color="21" fill="1" visible="no" active="no"/>
<layer number="221" name="221bmp" color="22" fill="1" visible="no" active="no"/>
<layer number="222" name="222bmp" color="23" fill="1" visible="no" active="no"/>
<layer number="223" name="223bmp" color="24" fill="1" visible="no" active="no"/>
<layer number="224" name="224bmp" color="25" fill="1" visible="no" active="no"/>
<layer number="225" name="225bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="226" name="226bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="227" name="227bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="228" name="228bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="229" name="229bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="230" name="230bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="231" name="231bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="248" name="Housing" color="7" fill="1" visible="yes" active="yes"/>
<layer number="249" name="Edge" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
<layer number="255" name="routoute" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="SparkFun-LED">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find discrete LEDs for illumination or indication, but no displays.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="WS2812B">
<description>&lt;b&gt;Intelligent control LED with integrated light source&lt;/b&gt;&lt;p&gt;
WS2812B&lt;br&gt;
source: http://www.world-semi.com/uploads/soft/130904/1_1500205981.pdf</description>
<smd name="1" x="-2.577" y="1.6" dx="1.651" dy="1" layer="1"/>
<smd name="4" x="2.577" y="1.6" dx="1.651" dy="1" layer="1"/>
<smd name="3" x="2.577" y="-1.6" dx="1.651" dy="1" layer="1"/>
<smd name="2" x="-2.577" y="-1.6" dx="1.651" dy="1" layer="1"/>
<wire x1="-2.5" y1="2.5" x2="-2.5" y2="-2.5" width="0.127" layer="51"/>
<wire x1="-2.5" y1="-2.5" x2="2.5" y2="-2.5" width="0.127" layer="51"/>
<wire x1="2.5" y1="-2.5" x2="2.5" y2="2.5" width="0.127" layer="51"/>
<wire x1="2.5" y1="2.5" x2="-2.5" y2="2.5" width="0.127" layer="51"/>
<text x="4.254" y="1.2" size="1.016" layer="25">&gt;NAME</text>
<text x="4.254" y="-1.6" size="0.6096" layer="27">&gt;VALUE</text>
<wire x1="-2.4892" y1="2.362203125" x2="-2.4892" y2="2.616203125" width="0.2032" layer="21"/>
<wire x1="-2.4892" y1="2.616203125" x2="-2.4384" y2="2.616203125" width="0.2032" layer="21"/>
<wire x1="-2.4384" y1="2.616203125" x2="-2.4384" y2="2.611121875" width="0.2032" layer="21"/>
<wire x1="-2.4384" y1="2.611121875" x2="2.512059375" y2="2.611121875" width="0.2032" layer="21"/>
<wire x1="2.512059375" y1="2.611121875" x2="2.512059375" y2="2.37998125" width="0.2032" layer="21"/>
<wire x1="-2.50951875" y1="-2.319021875" x2="-2.50951875" y2="-2.5908" width="0.2032" layer="21"/>
<wire x1="-2.50951875" y1="-2.5908" x2="-2.45871875" y2="-2.5908" width="0.2032" layer="21"/>
<wire x1="-2.45871875" y1="-2.5908" x2="-2.45871875" y2="-2.593340625" width="0.2032" layer="21"/>
<wire x1="-2.45871875" y1="-2.593340625" x2="2.50951875" y2="-2.593340625" width="0.2032" layer="21"/>
<wire x1="2.50951875" y1="-2.593340625" x2="2.50951875" y2="-2.36728125" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.8128" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0.8636" x2="2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-0.8636" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="0" y2="-2.54" width="0.2032" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="WS2812B">
<description>&lt;b&gt;Intelligent control LED with integrated light source&lt;/b&gt;&lt;p&gt;
WS2812B&lt;br&gt;
source: http://www.world-semi.com/uploads/soft/130904/1_1500205981.pdf</description>
<pin name="VDD" x="-5.08" y="5.08" length="short" direction="pwr"/>
<pin name="DOUT" x="-5.08" y="-2.54" length="short" direction="out"/>
<pin name="VSS" x="17.78" y="-2.54" length="short" direction="pwr" rot="R180"/>
<pin name="DIN" x="17.78" y="5.08" length="short" direction="in" rot="R180"/>
<wire x1="-2.54" y1="7.62" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="15.24" y2="-5.08" width="0.254" layer="94"/>
<wire x1="15.24" y1="-5.08" x2="15.24" y2="7.62" width="0.254" layer="94"/>
<wire x1="15.24" y1="7.62" x2="-2.54" y2="7.62" width="0.254" layer="94"/>
<text x="-2.286" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="WS2812B" prefix="D" uservalue="yes">
<description>&lt;b&gt;WS2812B&lt;/b&gt; - Intelligent control LED integrated light source

&lt;p&gt;Technical Specifications:
&lt;ul&gt;
&lt;li&gt;Power Supply Voltage (VDD): 3.5 to 5.3 V&lt;/li&gt;
&lt;li&gt;Input Voltage (VI): -0.5 to VDD+0.5 V&lt;/li&gt;
&lt;li&gt;Operating Junction Temperature (Topt): -25°C to +80°C&lt;/li&gt;
&lt;li&gt;Storage Temperature Range (Tstg): -55°C to +150°C&lt;/li&gt;
&lt;/ul&gt;
&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="WS2812B" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="WS2812B">
<connects>
<connect gate="G$1" pin="DIN" pad="4"/>
<connect gate="G$1" pin="DOUT" pad="2"/>
<connect gate="G$1" pin="VDD" pad="1"/>
<connect gate="G$1" pin="VSS" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-12503"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Capacitors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find resistors, capacitors, inductors, test points, jumper pads, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="CAP-PTH-SMALL">
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="0.7" diameter="1.651"/>
<pad name="2" x="2.54" y="0" drill="0.7" diameter="1.651"/>
<text x="0.508" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="0.254" y="-1.524" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="CAP-PTH-SMALL2">
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="3.81" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="-1.27" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="1.27" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="0.7" diameter="1.651"/>
<pad name="2" x="2.54" y="0" drill="0.7" diameter="1.651"/>
<text x="-1.27" y="1.905" size="0.6096" layer="25">&gt;Name</text>
<text x="-1.27" y="-2.54" size="0.6096" layer="27">&gt;Value</text>
</package>
<package name="0805">
<wire x1="-0.3" y1="0.6" x2="0.3" y2="0.6" width="0.1524" layer="21"/>
<wire x1="-0.3" y1="-0.6" x2="0.3" y2="-0.6" width="0.1524" layer="21"/>
<smd name="1" x="-0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<text x="-0.762" y="0.8255" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.016" y="-1.397" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="CAP-PTH-LARGE">
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.2032" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="0" y1="0" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.2032" layer="21"/>
<pad name="1" x="-4.826" y="0" drill="0.9" diameter="1.905"/>
<pad name="2" x="4.572" y="0" drill="0.9" diameter="1.905"/>
<text x="-0.762" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.016" y="-1.524" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="GRM43D">
<wire x1="2.25" y1="1.6" x2="1.1" y2="1.6" width="0.127" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1.1" y2="1.6" width="0.127" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-2.25" y2="1.6" width="0.127" layer="51"/>
<wire x1="-2.25" y1="1.6" x2="-2.25" y2="-1.6" width="0.127" layer="51"/>
<wire x1="-2.25" y1="-1.6" x2="-1.1" y2="-1.6" width="0.127" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="1.1" y2="-1.6" width="0.127" layer="51"/>
<wire x1="1.1" y1="-1.6" x2="2.25" y2="-1.6" width="0.127" layer="51"/>
<wire x1="2.25" y1="-1.6" x2="2.25" y2="1.6" width="0.127" layer="51"/>
<wire x1="1.1" y1="1.6" x2="1.1" y2="-1.6" width="0.127" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.1" y2="-1.6" width="0.127" layer="51"/>
<wire x1="-2.3" y1="1.8" x2="2.3" y2="1.8" width="0.127" layer="21"/>
<wire x1="-2.3" y1="-1.8" x2="2.3" y2="-1.8" width="0.127" layer="21"/>
<smd name="A" x="1.927" y="0" dx="3.2" dy="1.65" layer="1" rot="R90"/>
<smd name="C" x="-1.927" y="0" dx="3.2" dy="1.65" layer="1" rot="R90"/>
<text x="-2" y="2" size="0.4064" layer="25">&gt;NAME</text>
<text x="0" y="-2" size="0.4064" layer="27" rot="R180">&gt;VALUE</text>
<rectangle x1="-2.2" y1="-1.6" x2="-1.1" y2="1.6" layer="51"/>
<rectangle x1="1.1" y1="-1.6" x2="2.2" y2="1.6" layer="51"/>
</package>
<package name="0603-CAP">
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<wire x1="0" y1="0.027940625" x2="0" y2="-0.027940625" width="0.381" layer="21"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="0402-CAP">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="0" y1="0.0305" x2="0" y2="-0.0305" width="0.4064" layer="21"/>
<smd name="1" x="-0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<smd name="2" x="0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<text x="-0.889" y="0.6985" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.0795" y="-1.143" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="CAP-PTH-5MM">
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="-2.5" y="0" drill="0.7" diameter="1.651"/>
<pad name="2" x="2.5" y="0" drill="0.7" diameter="1.651"/>
<text x="-0.762" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.016" y="-1.524" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="AXIAL-5MM">
<wire x1="-1.14" y1="0.762" x2="1.14" y2="0.762" width="0.2032" layer="21"/>
<wire x1="1.14" y1="0.762" x2="1.14" y2="0" width="0.2032" layer="21"/>
<wire x1="1.14" y1="0" x2="1.14" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="1.14" y1="-0.762" x2="-1.14" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-1.14" y1="-0.762" x2="-1.14" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.14" y1="0" x2="-1.14" y2="0.762" width="0.2032" layer="21"/>
<wire x1="1.14" y1="0" x2="1.394" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.14" y1="0" x2="-1.394" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-2.5" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="2.5" y="0" drill="0.9" diameter="1.8796"/>
<text x="-2.54" y="1.17" size="0.4" layer="25">&gt;Name</text>
<text x="-1.032" y="-0.208" size="0.4" layer="21" ratio="15">&gt;Value</text>
</package>
<package name="1210">
<wire x1="-1.6" y1="1.3" x2="1.6" y2="1.3" width="0.127" layer="51"/>
<wire x1="1.6" y1="1.3" x2="1.6" y2="-1.3" width="0.127" layer="51"/>
<wire x1="1.6" y1="-1.3" x2="-1.6" y2="-1.3" width="0.127" layer="51"/>
<wire x1="-1.6" y1="-1.3" x2="-1.6" y2="1.3" width="0.127" layer="51"/>
<wire x1="-1.6" y1="1.3" x2="1.6" y2="1.3" width="0.2032" layer="21"/>
<wire x1="-1.6" y1="-1.3" x2="1.6" y2="-1.3" width="0.2032" layer="21"/>
<smd name="1" x="-1.6" y="0" dx="1.2" dy="2" layer="1"/>
<smd name="2" x="1.6" y="0" dx="1.2" dy="2" layer="1"/>
<text x="-0.8" y="0.5" size="0.4064" layer="25">&gt;NAME</text>
<text x="-0.9" y="-0.7" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1206">
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.143" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.397" y="-1.524" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="CTZ3">
<description>CTZ3 Series land pattern for variable capacitor - CTZ3E-50C-W1-PF</description>
<wire x1="-1.6" y1="1.4" x2="-1.6" y2="-2.25" width="0.127" layer="51"/>
<wire x1="-1.6" y1="-2.25" x2="1.6" y2="-2.25" width="0.127" layer="51"/>
<wire x1="1.6" y1="1.4" x2="1.6" y2="-2.25" width="0.127" layer="51"/>
<wire x1="-0.5" y1="0" x2="0.5" y2="0" width="0.127" layer="51"/>
<wire x1="-1.6" y1="1.4" x2="-1" y2="2.2" width="0.127" layer="51"/>
<wire x1="1.6" y1="1.4" x2="1" y2="2.2" width="0.127" layer="51"/>
<wire x1="-1" y1="2.2" x2="1" y2="2.2" width="0.127" layer="51"/>
<wire x1="0" y1="0.8" x2="0" y2="-0.8" width="0.127" layer="51"/>
<wire x1="-0.8" y1="0" x2="0.8" y2="0" width="0.127" layer="51"/>
<wire x1="-1.05" y1="2.25" x2="-1.7" y2="1.45" width="0.127" layer="21"/>
<wire x1="-1.7" y1="1.45" x2="-1.7" y2="-2.35" width="0.127" layer="21"/>
<wire x1="-1.7" y1="-2.35" x2="-1.05" y2="-2.35" width="0.127" layer="21"/>
<wire x1="1.05" y1="2.25" x2="1.7" y2="1.4" width="0.127" layer="21"/>
<wire x1="1.7" y1="1.4" x2="1.7" y2="-2.35" width="0.127" layer="21"/>
<wire x1="1.7" y1="-2.35" x2="1.05" y2="-2.35" width="0.127" layer="21"/>
<smd name="+" x="0" y="2.05" dx="1.5" dy="1.2" layer="1"/>
<smd name="-" x="0" y="-2.05" dx="1.5" dy="1.2" layer="1"/>
<text x="-2" y="3" size="0.4064" layer="25">&gt;NAME</text>
<text x="-2" y="-3.4" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="CAP-PTH-SMALL-KIT">
<description>&lt;h3&gt;CAP-PTH-SMALL-KIT&lt;/h3&gt;
Commonly used for small ceramic capacitors. Like our 0.1uF (http://www.sparkfun.com/products/8375) or 22pF caps (http://www.sparkfun.com/products/8571).&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of this package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.</description>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-2.667" y1="1.27" x2="2.667" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.667" y1="1.27" x2="2.667" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.667" y1="-1.27" x2="-2.667" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.667" y1="-1.27" x2="-2.667" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-1.397" y="0" drill="1.016" diameter="2.032" stop="no"/>
<pad name="2" x="1.397" y="0" drill="1.016" diameter="2.032" stop="no"/>
<polygon width="0.127" layer="30">
<vertex x="-1.4021" y="-0.9475" curve="-90"/>
<vertex x="-2.357" y="-0.0178" curve="-90.011749"/>
<vertex x="-1.4046" y="0.9576" curve="-90"/>
<vertex x="-0.4546" y="-0.0204" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-1.4046" y="-0.4395" curve="-90.012891"/>
<vertex x="-1.8491" y="-0.0153" curve="-90"/>
<vertex x="-1.4046" y="0.452" curve="-90"/>
<vertex x="-0.9627" y="-0.0051" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="1.397" y="-0.9475" curve="-90"/>
<vertex x="0.4421" y="-0.0178" curve="-90.011749"/>
<vertex x="1.3945" y="0.9576" curve="-90"/>
<vertex x="2.3445" y="-0.0204" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="1.3945" y="-0.4395" curve="-90.012891"/>
<vertex x="0.95" y="-0.0153" curve="-90"/>
<vertex x="1.3945" y="0.452" curve="-90"/>
<vertex x="1.8364" y="-0.0051" curve="-90.012967"/>
</polygon>
</package>
<package name="CAP-PTH-SMALLEZ">
<description>This is the "EZ" version of the .1" spaced ceramic thru-hole cap.&lt;br&gt;
It has reduced top mask to make it harder to put the component on the wrong side of the board.</description>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="3.81" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="-1.27" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="1.27" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="0.7" diameter="1.651" stop="no"/>
<pad name="2" x="2.54" y="0" drill="0.7" diameter="1.651" stop="no"/>
<text x="-1.27" y="1.905" size="0.6096" layer="25">&gt;Name</text>
<text x="-1.27" y="-2.54" size="0.6096" layer="27">&gt;Value</text>
<circle x="0" y="0" radius="0.898025" width="0" layer="30"/>
<circle x="2.54" y="0" radius="0.915809375" width="0" layer="30"/>
<circle x="0" y="0" radius="0.40160625" width="0" layer="29"/>
<circle x="2.54" y="0" radius="0.40160625" width="0" layer="29"/>
</package>
</packages>
<symbols>
<symbol name="CAP">
<wire x1="0" y1="2.54" x2="0" y2="2.032" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="0.508" width="0.1524" layer="94"/>
<text x="1.524" y="2.921" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-2.159" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="0.508" x2="2.032" y2="1.016" layer="94"/>
<rectangle x1="-2.032" y1="1.524" x2="2.032" y2="2.032" layer="94"/>
<pin name="1" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CAP" prefix="C" uservalue="yes">
<description>&lt;b&gt;Capacitor&lt;/b&gt;
Standard 0603 ceramic capacitor, and 0.1" leaded capacitor.</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="PTH" package="CAP-PTH-SMALL">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH2" package="CAP-PTH-SMALL2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH3" package="CAP-PTH-LARGE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD" package="GRM43D">
<connects>
<connect gate="G$1" pin="1" pad="A"/>
<connect gate="G$1" pin="2" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603-CAP" package="0603-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0402-CAP" package="0402-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH1" package="CAP-PTH-5MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_" package="AXIAL-5MM">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1210" package="1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1206" package="1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ASMD" package="CTZ3">
<connects>
<connect gate="G$1" pin="1" pad="+"/>
<connect gate="G$1" pin="2" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KIT" package="CAP-PTH-SMALL-KIT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="EZ" package="CAP-PTH-SMALLEZ">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Aesthetics">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find non-functional items- supply symbols, logos, notations, frame blocks, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
</packages>
<symbols>
<symbol name="DGND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="5V">
<wire x1="0.762" y1="1.27" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-0.762" y2="1.27" width="0.254" layer="94"/>
<text x="-1.016" y="3.556" size="1.778" layer="96">&gt;VALUE</text>
<pin name="5V" x="0" y="0" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="DGND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="5V" prefix="SUPPLY">
<description>5V supply symbol</description>
<gates>
<gate name="G$1" symbol="5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Connectors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find connectors and sockets- basically anything that can be plugged into or onto.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="1X03">
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="6.35" y1="0.635" x2="6.35" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="MOLEX-1X3">
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="6.35" y1="3.048" x2="6.35" y2="-2.54" width="0.127" layer="21"/>
<wire x1="6.35" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="6.35" y1="-2.54" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="5.08" y2="-1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796"/>
</package>
<package name="SCREWTERMINAL-3.5MM-3">
<wire x1="-1.75" y1="3.4" x2="8.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="8.75" y1="3.4" x2="8.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="8.75" y1="-2.8" x2="8.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="8.75" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="8.75" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-1.35" x2="-2.25" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-1.35" x2="-2.25" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="8.75" y1="3.15" x2="9.25" y2="3.15" width="0.2032" layer="51"/>
<wire x1="9.25" y1="3.15" x2="9.25" y2="2.15" width="0.2032" layer="51"/>
<wire x1="9.25" y1="2.15" x2="8.75" y2="2.15" width="0.2032" layer="51"/>
<pad name="1" x="0" y="0" drill="1.2" diameter="2.413" shape="square"/>
<pad name="2" x="3.5" y="0" drill="1.2" diameter="2.413"/>
<pad name="3" x="7" y="0" drill="1.2" diameter="2.413"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X03_LOCK">
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="6.35" y1="0.635" x2="6.35" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="-0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="1X03_LOCK_LONGPADS">
<description>This footprint was designed to help hold the alignment of a through-hole component (i.e.  6-pin header) while soldering it into place.  
You may notice that each hole has been shifted either up or down by 0.005 of an inch from it's more standard position (which is a perfectly straight line).  
This slight alteration caused the pins (the squares in the middle) to touch the edges of the holes.  Because they are alternating, it causes a "brace" 
to hold the component in place.  0.005 has proven to be the perfect amount of "off-center" position when using our standard breakaway headers.
Although looks a little odd when you look at the bare footprint, once you have a header in there, the alteration is very hard to notice.  Also,
if you push a header all the way into place, it is covered up entirely on the bottom side.  This idea of altering the position of holes to aid alignment 
will be further integrated into the Sparkfun Library for other footprints.  It can help hold any component with 3 or more connection pins.</description>
<wire x1="1.524" y1="-0.127" x2="1.016" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="4.064" y1="-0.127" x2="3.556" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.127" x2="-1.016" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.127" x2="-1.27" y2="0.8636" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.8636" x2="-0.9906" y2="1.143" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.127" x2="-1.27" y2="-1.1176" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-1.1176" x2="-0.9906" y2="-1.397" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.127" x2="6.096" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.127" x2="6.35" y2="-1.1176" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-1.1176" x2="6.0706" y2="-1.397" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.127" x2="6.35" y2="0.8636" width="0.2032" layer="21"/>
<wire x1="6.35" y1="0.8636" x2="6.0706" y2="1.143" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="-0.254" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-1.27" y="1.778" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="-1.27" y="-3.302" size="1.27" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.2921" y1="-0.4191" x2="0.2921" y2="0.1651" layer="51"/>
<rectangle x1="2.2479" y1="-0.4191" x2="2.8321" y2="0.1651" layer="51"/>
<rectangle x1="4.7879" y1="-0.4191" x2="5.3721" y2="0.1651" layer="51"/>
</package>
<package name="MOLEX-1X3_LOCK">
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="6.35" y1="3.048" x2="6.35" y2="-2.54" width="0.127" layer="21"/>
<wire x1="6.35" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="6.35" y1="-2.54" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="5.08" y2="-1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="0" y="0.127" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.54" y="-0.127" drill="1.016" diameter="1.8796"/>
<pad name="3" x="5.08" y="0.127" drill="1.016" diameter="1.8796"/>
<rectangle x1="-0.2921" y1="-0.2921" x2="0.2921" y2="0.2921" layer="51"/>
<rectangle x1="2.2479" y1="-0.2921" x2="2.8321" y2="0.2921" layer="51"/>
<rectangle x1="4.7879" y1="-0.2921" x2="5.3721" y2="0.2921" layer="51"/>
</package>
<package name="SCREWTERMINAL-3.5MM-3_LOCK.007S">
<wire x1="-1.75" y1="3.4" x2="8.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="8.75" y1="3.4" x2="8.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="8.75" y1="-2.8" x2="8.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="8.75" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="8.75" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-1.35" x2="-2.25" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-1.35" x2="-2.25" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="8.75" y1="3.15" x2="9.25" y2="3.15" width="0.2032" layer="51"/>
<wire x1="9.25" y1="3.15" x2="9.25" y2="2.15" width="0.2032" layer="51"/>
<wire x1="9.25" y1="2.15" x2="8.75" y2="2.15" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="3.5" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="7" y="0" radius="0.425" width="0.001" layer="51"/>
<pad name="1" x="-0.1778" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.5" y="0" drill="1.2" diameter="2.032"/>
<pad name="3" x="7.1778" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X03_NO_SILK">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="1X03_LONGPADS">
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="0.635" x2="6.35" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<text x="-1.3462" y="2.4638" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="JST-3-PTH">
<wire x1="-3.95" y1="-1.6" x2="-3.95" y2="6" width="0.2032" layer="21"/>
<wire x1="-3.95" y1="6" x2="3.95" y2="6" width="0.2032" layer="21"/>
<wire x1="3.95" y1="6" x2="3.95" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-3.95" y1="-1.6" x2="-3.3" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="3.95" y1="-1.6" x2="3.3" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-3.3" y1="-1.6" x2="-3.3" y2="0" width="0.2032" layer="21"/>
<wire x1="3.3" y1="-1.6" x2="3.3" y2="0" width="0.2032" layer="21"/>
<pad name="1" x="-2" y="0" drill="0.7" diameter="1.6"/>
<pad name="2" x="0" y="0" drill="0.7" diameter="1.6"/>
<pad name="3" x="2" y="0" drill="0.7" diameter="1.6"/>
<text x="-1.27" y="5.24" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.27" y="3.97" size="0.4064" layer="27">&gt;Value</text>
<text x="-2.4" y="0.67" size="1.27" layer="51">+</text>
<text x="-0.4" y="0.67" size="1.27" layer="51">-</text>
<text x="1.7" y="0.87" size="0.8" layer="51">S</text>
</package>
<package name="1X03_PP_HOLES_ONLY">
<circle x="0" y="0" radius="0.635" width="0.127" layer="51"/>
<circle x="2.54" y="0" radius="0.635" width="0.127" layer="51"/>
<circle x="5.08" y="0" radius="0.635" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="0.9" diameter="0.8128" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="0.9" diameter="0.8128" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="0.9" diameter="0.8128" rot="R90"/>
<hole x="0" y="0" drill="1.4732"/>
<hole x="2.54" y="0" drill="1.4732"/>
<hole x="5.08" y="0" drill="1.4732"/>
</package>
<package name="SCREWTERMINAL-5MM-3">
<wire x1="-3.1" y1="4.2" x2="13.1" y2="4.2" width="0.2032" layer="21"/>
<wire x1="13.1" y1="4.2" x2="13.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="13.1" y1="-2.3" x2="13.1" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="13.1" y1="-3.3" x2="-3.1" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-3.3" x2="-3.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-2.3" x2="-3.1" y2="4.2" width="0.2032" layer="21"/>
<wire x1="13.1" y1="-2.3" x2="-3.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-1.35" x2="-3.7" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-3.7" y1="-1.35" x2="-3.7" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-3.7" y1="-2.35" x2="-3.1" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="13.1" y1="4" x2="13.7" y2="4" width="0.2032" layer="51"/>
<wire x1="13.7" y1="4" x2="13.7" y2="3" width="0.2032" layer="51"/>
<wire x1="13.7" y1="3" x2="13.1" y2="3" width="0.2032" layer="51"/>
<circle x="2.5" y="3.7" radius="0.2828" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="1.3" diameter="2.413" shape="square"/>
<pad name="2" x="5" y="0" drill="1.3" diameter="2.413"/>
<pad name="3" x="10" y="0" drill="1.3" diameter="2.413"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X03_LOCK_NO_SILK">
<pad name="1" x="0" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="-0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="JST-3-SMD">
<wire x1="-4.99" y1="-2.07" x2="-4.99" y2="-5.57" width="0.2032" layer="21"/>
<wire x1="-4.99" y1="-5.57" x2="-4.19" y2="-5.57" width="0.2032" layer="21"/>
<wire x1="-4.19" y1="-5.57" x2="-4.19" y2="-3.07" width="0.2032" layer="21"/>
<wire x1="-4.19" y1="-3.07" x2="-2.99" y2="-3.07" width="0.2032" layer="21"/>
<wire x1="3.01" y1="-3.07" x2="4.21" y2="-3.07" width="0.2032" layer="21"/>
<wire x1="4.21" y1="-3.07" x2="4.21" y2="-5.57" width="0.2032" layer="21"/>
<wire x1="4.21" y1="-5.57" x2="5.01" y2="-5.57" width="0.2032" layer="21"/>
<wire x1="5.01" y1="-5.57" x2="5.01" y2="-2.07" width="0.2032" layer="21"/>
<wire x1="3.01" y1="1.93" x2="-2.99" y2="1.93" width="0.2032" layer="21"/>
<smd name="1" x="-1.99" y="-4.77" dx="1" dy="4.6" layer="1"/>
<smd name="3" x="2.01" y="-4.77" dx="1" dy="4.6" layer="1"/>
<smd name="NC1" x="-4.39" y="0.43" dx="3.4" dy="1.6" layer="1" rot="R90"/>
<smd name="NC2" x="4.41" y="0.43" dx="3.4" dy="1.6" layer="1" rot="R90"/>
<smd name="2" x="0.01" y="-4.77" dx="1" dy="4.6" layer="1"/>
<text x="-2.26" y="0.2" size="0.4064" layer="25">&gt;Name</text>
<text x="-2.26" y="-1.07" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="1X03-1MM-RA">
<wire x1="-1" y1="-4.6" x2="1" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-2.5" y1="-2" x2="-2.5" y2="-0.35" width="0.254" layer="21"/>
<wire x1="1.75" y1="-0.35" x2="2.4997" y2="-0.35" width="0.254" layer="21"/>
<wire x1="2.4997" y1="-0.35" x2="2.4997" y2="-2" width="0.254" layer="21"/>
<wire x1="-2.5" y1="-0.35" x2="-1.75" y2="-0.35" width="0.254" layer="21"/>
<circle x="-2" y="0.3" radius="0.1414" width="0.4" layer="21"/>
<smd name="NC2" x="-2.3" y="-3.675" dx="1.2" dy="2" layer="1"/>
<smd name="NC1" x="2.3" y="-3.675" dx="1.2" dy="2" layer="1"/>
<smd name="1" x="-1" y="0" dx="0.6" dy="1.35" layer="1"/>
<smd name="2" x="0" y="0" dx="0.6" dy="1.35" layer="1"/>
<smd name="3" x="1" y="0" dx="0.6" dy="1.35" layer="1"/>
<text x="-1.73" y="1.73" size="0.4064" layer="25" rot="R180">&gt;NAME</text>
<text x="3.46" y="1.73" size="0.4064" layer="27" rot="R180">&gt;VALUE</text>
</package>
<package name="1X03_SMD_RA_FEMALE">
<wire x1="-3.935" y1="4.25" x2="-3.935" y2="-4.25" width="0.1778" layer="21"/>
<wire x1="3.935" y1="4.25" x2="-3.935" y2="4.25" width="0.1778" layer="21"/>
<wire x1="3.935" y1="-4.25" x2="3.935" y2="4.25" width="0.1778" layer="21"/>
<wire x1="-3.935" y1="-4.25" x2="3.935" y2="-4.25" width="0.1778" layer="21"/>
<rectangle x1="-0.32" y1="6.8" x2="0.32" y2="7.65" layer="51"/>
<rectangle x1="2.22" y1="6.8" x2="2.86" y2="7.65" layer="51"/>
<rectangle x1="-2.86" y1="6.8" x2="-2.22" y2="7.65" layer="51"/>
<smd name="3" x="2.54" y="7.225" dx="1.25" dy="3" layer="1" rot="R180"/>
<smd name="2" x="0" y="7.225" dx="1.25" dy="3" layer="1" rot="R180"/>
<smd name="1" x="-2.54" y="7.225" dx="1.25" dy="3" layer="1" rot="R180"/>
<text x="-3.155" y="2.775" size="1" layer="27">&gt;Value</text>
<text x="-2.955" y="-3.395" size="1" layer="25">&gt;Name</text>
</package>
<package name="1X03_SMD_RA_MALE">
<wire x1="3.81" y1="1.25" x2="-3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="-3.81" y1="1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="2.53" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="-0.01" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-2.55" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="2.53" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-0.01" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-2.55" y2="-7.25" width="0.127" layer="51"/>
<rectangle x1="-0.32" y1="4.15" x2="0.32" y2="5.95" layer="51"/>
<rectangle x1="-2.86" y1="4.15" x2="-2.22" y2="5.95" layer="51"/>
<rectangle x1="2.22" y1="4.15" x2="2.86" y2="5.95" layer="51"/>
<smd name="1" x="-2.54" y="5" dx="3" dy="1" layer="1" rot="R90"/>
<smd name="2" x="0" y="5" dx="3" dy="1" layer="1" rot="R90"/>
<smd name="3" x="2.54" y="5" dx="3" dy="1" layer="1" rot="R90"/>
</package>
<package name="1X03_SMD_RA_MALE_POST">
<description>&lt;h3&gt;SMD 3-Pin Male Right-Angle Header w/ Alignment posts&lt;/h3&gt;

Matches 4UCONN part # 11026&lt;br&gt;
&lt;a href="http://www.4uconnector.com/online/object/4udrawing/11026.pdf"&gt;http://www.4uconnector.com/online/object/4udrawing/11026.pdf&lt;/a&gt;</description>
<wire x1="3.81" y1="1.25" x2="-3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="-3.81" y1="1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="2.53" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="-0.01" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-2.55" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="2.53" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-0.01" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-2.55" y2="-7.25" width="0.127" layer="51"/>
<rectangle x1="-0.32" y1="4.15" x2="0.32" y2="5.95" layer="51"/>
<rectangle x1="-2.86" y1="4.15" x2="-2.22" y2="5.95" layer="51"/>
<rectangle x1="2.22" y1="4.15" x2="2.86" y2="5.95" layer="51"/>
<smd name="1" x="-2.54" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<smd name="2" x="0" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<smd name="3" x="2.54" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<hole x="-1.27" y="0" drill="1.6"/>
<hole x="1.27" y="0" drill="1.6"/>
</package>
<package name="JST-3-PTH-VERT">
<description>This 3-pin connector mates with the JST cable sold on SparkFun.</description>
<wire x1="-3.95" y1="-2.25" x2="-3.95" y2="2.25" width="0.2032" layer="21"/>
<wire x1="-3.95" y1="2.25" x2="3.95" y2="2.25" width="0.2032" layer="21"/>
<wire x1="3.95" y1="2.25" x2="3.95" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="3.95" y1="-2.25" x2="1" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-2.25" x2="-3.95" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-1.75" x2="1" y2="-1.75" width="0.2032" layer="21"/>
<wire x1="1" y1="-1.75" x2="1" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-1.75" x2="-1" y2="-2.25" width="0.2032" layer="21"/>
<pad name="1" x="-2" y="-0.55" drill="0.7" diameter="1.6"/>
<pad name="2" x="0" y="-0.55" drill="0.7" diameter="1.6"/>
<pad name="3" x="2" y="-0.55" drill="0.7" diameter="1.6"/>
<text x="-3" y="3" size="0.4064" layer="25">&gt;Name</text>
<text x="1" y="3" size="0.4064" layer="27">&gt;Value</text>
<text x="-2.4" y="0.75" size="1.27" layer="51">+</text>
<text x="-0.4" y="0.75" size="1.27" layer="51">-</text>
<text x="1.7" y="0.95" size="0.8" layer="51">S</text>
</package>
<package name="1X03_SMD_RA_MALE_POST_SMALLER">
<wire x1="3.81" y1="1.25" x2="-3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="-3.81" y1="1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="2.53" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="-0.01" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-2.55" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="2.53" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-0.01" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-2.55" y2="-7.25" width="0.127" layer="51"/>
<rectangle x1="-0.32" y1="4.15" x2="0.32" y2="5.95" layer="51"/>
<rectangle x1="-2.86" y1="4.15" x2="-2.22" y2="5.95" layer="51"/>
<rectangle x1="2.22" y1="4.15" x2="2.86" y2="5.95" layer="51"/>
<smd name="1" x="-2.54" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<smd name="2" x="0" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<smd name="3" x="2.54" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<hole x="-1.27" y="0" drill="1.3589"/>
<hole x="1.27" y="0" drill="1.3589"/>
</package>
<package name="1X03_SMD_RA_MALE_POST_SMALLEST">
<wire x1="3.81" y1="1.25" x2="-3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="-3.81" y1="1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="2.53" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="-0.01" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-2.55" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="2.53" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-0.01" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-2.55" y2="-7.25" width="0.127" layer="51"/>
<rectangle x1="-0.32" y1="4.15" x2="0.32" y2="5.95" layer="51"/>
<rectangle x1="-2.86" y1="4.15" x2="-2.22" y2="5.95" layer="51"/>
<rectangle x1="2.22" y1="4.15" x2="2.86" y2="5.95" layer="51"/>
<smd name="1" x="-2.54" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<smd name="2" x="0" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<smd name="3" x="2.54" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<hole x="-1.27" y="0" drill="1.3462"/>
<hole x="1.27" y="0" drill="1.3462"/>
</package>
</packages>
<symbols>
<symbol name="M03">
<wire x1="3.81" y1="-5.08" x2="-2.54" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<text x="-2.54" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="M03" prefix="J" uservalue="yes">
<description>&lt;b&gt;Header 3&lt;/b&gt;
Standard 3-pin 0.1" header. Use with straight break away headers (SKU : PRT-00116), right angle break away headers (PRT-00553), swiss pins (PRT-00743), machine pins (PRT-00117), and female headers (PRT-00115). Molex polarized connector foot print use with SKU : PRT-08232 with associated crimp pins and housings.</description>
<gates>
<gate name="J$1" symbol="M03" x="-2.54" y="0"/>
</gates>
<devices>
<device name="PTH" package="1X03">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POLAR" package="MOLEX-1X3">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SCREW" package="SCREWTERMINAL-3.5MM-3">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08288" constant="no"/>
</technology>
</technologies>
</device>
<device name="LOCK" package="1X03_LOCK">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LOCK_LONGPADS" package="1X03_LOCK_LONGPADS">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POLAR_LOCK" package="MOLEX-1X3_LOCK">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SCREW_LOCK" package="SCREWTERMINAL-3.5MM-3_LOCK.007S">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08288" constant="no"/>
</technology>
</technologies>
</device>
<device name="1X03_NO_SILK" package="1X03_NO_SILK">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LONGPADS" package="1X03_LONGPADS">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH" package="JST-3-PTH">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="SKU" value="PRT-09915" constant="no"/>
</technology>
</technologies>
</device>
<device name="POGO_PIN_HOLES_ONLY" package="1X03_PP_HOLES_ONLY">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-SCREW-5MM" package="SCREWTERMINAL-5MM-3">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="STOREFRONT_ID" value="PRT-08433" constant="no"/>
</technology>
</technologies>
</device>
<device name="LOCK_NO_SILK" package="1X03_LOCK_NO_SILK">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-SMD" package="JST-3-SMD">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-12591" constant="no"/>
<attribute name="VALUE" value="3-PIN SMD" constant="no"/>
</technology>
</technologies>
</device>
<device name="SMD" package="1X03-1MM-RA">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD_RA_FEMALE" package="1X03_SMD_RA_FEMALE">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-10926"/>
<attribute name="VALUE" value="1x3 RA Female .1&quot;"/>
</technology>
</technologies>
</device>
<device name="SMD_RA_MALE" package="1X03_SMD_RA_MALE">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-10925"/>
</technology>
</technologies>
</device>
<device name="SMD_RA_MALE_POST" package="1X03_SMD_RA_MALE_POST">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH-VERT" package="JST-3-PTH-VERT">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1X03_SMD_RA_MALE_POST_SMALLER" package="1X03_SMD_RA_MALE_POST_SMALLER">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1X03_SMD_RA_MALE_POST_SMALLEST" package="1X03_SMD_RA_MALE_POST_SMALLEST">
<connects>
<connect gate="J$1" pin="1" pad="1"/>
<connect gate="J$1" pin="2" pad="2"/>
<connect gate="J$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="D1" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D2" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D3" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="C1" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C2" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C3" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="GND1" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND2" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND3" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND4" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND5" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND6" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY1" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY2" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY3" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="J1" library="SparkFun-Connectors" deviceset="M03" device="LONGPADS"/>
<part name="GND7" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY4" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="D4" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D5" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D6" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="C4" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C5" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C6" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="GND8" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND9" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND10" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND11" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND12" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND13" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY5" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY6" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY7" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="D7" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D8" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D9" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="C7" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C8" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C9" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="GND14" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND15" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND16" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND17" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND18" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND19" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY8" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY9" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY10" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="D10" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D11" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D12" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="C10" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C11" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C12" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="GND20" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND21" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND22" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND23" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND24" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND25" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY11" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY12" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY13" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="D13" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D14" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D15" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="C13" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C14" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C15" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="GND26" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND27" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND28" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND29" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND30" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND31" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY14" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY15" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY16" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="D16" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D17" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D18" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="C16" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C17" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C18" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="GND32" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND33" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND34" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND35" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND36" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND37" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY17" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY18" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY19" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="D19" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D20" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D21" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="C19" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C20" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C21" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="GND38" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND39" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND40" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND41" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND42" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND43" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY20" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY21" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY22" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="D22" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D23" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D24" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="C22" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C23" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C24" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="GND44" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND45" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND46" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND47" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND48" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND49" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY23" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY24" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY25" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="D25" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D26" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D27" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="C25" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C26" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C27" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="GND50" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND51" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND52" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND53" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND54" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND55" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY26" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY27" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY28" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="D28" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D29" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D30" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="C28" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C29" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C30" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="GND56" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND57" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND58" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND59" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND60" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND61" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY29" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY30" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY31" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="D31" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D32" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D33" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="C31" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C32" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C33" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="GND62" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND63" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND64" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND65" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND66" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND67" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY32" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY33" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY34" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="D34" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D35" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D36" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="C34" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C35" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C36" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="GND68" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND69" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND70" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND71" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND72" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND73" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY35" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY36" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY37" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="D37" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D38" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D39" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="C37" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C38" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C39" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="GND74" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND75" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND76" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND77" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND78" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND79" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY38" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY39" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY40" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="D40" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D41" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D42" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="C40" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C41" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C42" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="GND80" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND81" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND82" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND83" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND84" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND85" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY41" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY42" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY43" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="D43" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D44" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D45" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="C43" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C44" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C45" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="GND86" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND87" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND88" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND89" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND90" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND91" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY44" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY45" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY46" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="D46" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D47" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D48" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="C46" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C47" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C48" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="GND92" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND93" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND94" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND95" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND96" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND97" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY47" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY48" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY49" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="D49" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D50" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D51" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="C49" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C50" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C51" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="GND98" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND99" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND100" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND101" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND102" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND103" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY50" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY51" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY52" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="D52" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D53" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D54" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="C52" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C53" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C54" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="GND104" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND105" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND106" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND107" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND108" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND109" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY53" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY54" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY55" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="D55" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D56" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D57" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="C55" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C56" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C57" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="GND110" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND111" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND112" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND113" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND114" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND115" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY56" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY57" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY58" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="D58" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D59" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="D60" library="SparkFun-LED" deviceset="WS2812B" device=""/>
<part name="C58" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C59" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="C60" library="SparkFun-Capacitors" deviceset="CAP" device="0805"/>
<part name="GND116" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND117" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND118" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND119" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND120" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND121" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY59" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY60" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
<part name="SUPPLY61" library="SparkFun-Aesthetics" deviceset="5V" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="D1" gate="G$1" x="38.1" y="68.58"/>
<instance part="D2" gate="G$1" x="17.78" y="43.18"/>
<instance part="D3" gate="G$1" x="-2.54" y="68.58"/>
<instance part="C1" gate="G$1" x="27.94" y="68.58"/>
<instance part="C2" gate="G$1" x="-12.7" y="68.58"/>
<instance part="C3" gate="G$1" x="7.62" y="43.18"/>
<instance part="GND1" gate="1" x="27.94" y="63.5"/>
<instance part="GND2" gate="1" x="55.88" y="63.5"/>
<instance part="GND3" gate="1" x="15.24" y="63.5"/>
<instance part="GND4" gate="1" x="35.56" y="38.1"/>
<instance part="GND5" gate="1" x="7.62" y="38.1"/>
<instance part="GND6" gate="1" x="-12.7" y="63.5"/>
<instance part="SUPPLY1" gate="G$1" x="27.94" y="73.66"/>
<instance part="SUPPLY2" gate="G$1" x="-12.7" y="73.66"/>
<instance part="SUPPLY3" gate="G$1" x="7.62" y="48.26"/>
<instance part="J1" gate="J$1" x="22.86" y="99.06" rot="R270"/>
<instance part="GND7" gate="1" x="22.86" y="88.9"/>
<instance part="SUPPLY4" gate="G$1" x="15.24" y="96.52"/>
<instance part="D4" gate="G$1" x="-83.82" y="68.58"/>
<instance part="D5" gate="G$1" x="-63.5" y="43.18"/>
<instance part="D6" gate="G$1" x="-104.14" y="43.18"/>
<instance part="C4" gate="G$1" x="-93.98" y="68.58"/>
<instance part="C5" gate="G$1" x="-114.3" y="43.18"/>
<instance part="C6" gate="G$1" x="-73.66" y="43.18"/>
<instance part="GND8" gate="1" x="-93.98" y="63.5"/>
<instance part="GND9" gate="1" x="-66.04" y="63.5"/>
<instance part="GND10" gate="1" x="-86.36" y="38.1"/>
<instance part="GND11" gate="1" x="-45.72" y="38.1"/>
<instance part="GND12" gate="1" x="-73.66" y="38.1"/>
<instance part="GND13" gate="1" x="-114.3" y="38.1"/>
<instance part="SUPPLY5" gate="G$1" x="-93.98" y="73.66"/>
<instance part="SUPPLY6" gate="G$1" x="-114.3" y="48.26"/>
<instance part="SUPPLY7" gate="G$1" x="-73.66" y="48.26"/>
<instance part="D7" gate="G$1" x="-190.5" y="68.58"/>
<instance part="D8" gate="G$1" x="-170.18" y="43.18"/>
<instance part="D9" gate="G$1" x="-210.82" y="43.18"/>
<instance part="C7" gate="G$1" x="-200.66" y="68.58"/>
<instance part="C8" gate="G$1" x="-220.98" y="43.18"/>
<instance part="C9" gate="G$1" x="-180.34" y="43.18"/>
<instance part="GND14" gate="1" x="-200.66" y="63.5"/>
<instance part="GND15" gate="1" x="-172.72" y="63.5"/>
<instance part="GND16" gate="1" x="-193.04" y="38.1"/>
<instance part="GND17" gate="1" x="-152.4" y="38.1"/>
<instance part="GND18" gate="1" x="-180.34" y="38.1"/>
<instance part="GND19" gate="1" x="-220.98" y="38.1"/>
<instance part="SUPPLY8" gate="G$1" x="-200.66" y="73.66"/>
<instance part="SUPPLY9" gate="G$1" x="-220.98" y="48.26"/>
<instance part="SUPPLY10" gate="G$1" x="-180.34" y="48.26"/>
<instance part="D10" gate="G$1" x="-294.64" y="68.58"/>
<instance part="D11" gate="G$1" x="-274.32" y="43.18"/>
<instance part="D12" gate="G$1" x="-314.96" y="43.18"/>
<instance part="C10" gate="G$1" x="-304.8" y="68.58"/>
<instance part="C11" gate="G$1" x="-325.12" y="43.18"/>
<instance part="C12" gate="G$1" x="-284.48" y="43.18"/>
<instance part="GND20" gate="1" x="-304.8" y="63.5"/>
<instance part="GND21" gate="1" x="-276.86" y="63.5"/>
<instance part="GND22" gate="1" x="-297.18" y="38.1"/>
<instance part="GND23" gate="1" x="-256.54" y="38.1"/>
<instance part="GND24" gate="1" x="-284.48" y="38.1"/>
<instance part="GND25" gate="1" x="-325.12" y="38.1"/>
<instance part="SUPPLY11" gate="G$1" x="-304.8" y="73.66"/>
<instance part="SUPPLY12" gate="G$1" x="-325.12" y="48.26"/>
<instance part="SUPPLY13" gate="G$1" x="-284.48" y="48.26"/>
<instance part="D13" gate="G$1" x="116.84" y="66.04"/>
<instance part="D14" gate="G$1" x="137.16" y="40.64"/>
<instance part="D15" gate="G$1" x="96.52" y="40.64"/>
<instance part="C13" gate="G$1" x="106.68" y="66.04"/>
<instance part="C14" gate="G$1" x="86.36" y="40.64"/>
<instance part="C15" gate="G$1" x="127" y="40.64"/>
<instance part="GND26" gate="1" x="106.68" y="60.96"/>
<instance part="GND27" gate="1" x="134.62" y="60.96"/>
<instance part="GND28" gate="1" x="114.3" y="35.56"/>
<instance part="GND29" gate="1" x="154.94" y="35.56"/>
<instance part="GND30" gate="1" x="127" y="35.56"/>
<instance part="GND31" gate="1" x="86.36" y="35.56"/>
<instance part="SUPPLY14" gate="G$1" x="106.68" y="71.12"/>
<instance part="SUPPLY15" gate="G$1" x="86.36" y="45.72"/>
<instance part="SUPPLY16" gate="G$1" x="127" y="45.72"/>
<instance part="D16" gate="G$1" x="-378.46" y="68.58"/>
<instance part="D17" gate="G$1" x="-398.78" y="43.18"/>
<instance part="D18" gate="G$1" x="-419.1" y="68.58"/>
<instance part="C16" gate="G$1" x="-388.62" y="68.58"/>
<instance part="C17" gate="G$1" x="-429.26" y="68.58"/>
<instance part="C18" gate="G$1" x="-408.94" y="43.18"/>
<instance part="GND32" gate="1" x="-388.62" y="63.5"/>
<instance part="GND33" gate="1" x="-360.68" y="63.5"/>
<instance part="GND34" gate="1" x="-401.32" y="63.5"/>
<instance part="GND35" gate="1" x="-381" y="38.1"/>
<instance part="GND36" gate="1" x="-408.94" y="38.1"/>
<instance part="GND37" gate="1" x="-429.26" y="63.5"/>
<instance part="SUPPLY17" gate="G$1" x="-388.62" y="73.66"/>
<instance part="SUPPLY18" gate="G$1" x="-429.26" y="73.66"/>
<instance part="SUPPLY19" gate="G$1" x="-408.94" y="48.26"/>
<instance part="D19" gate="G$1" x="-495.3" y="68.58"/>
<instance part="D20" gate="G$1" x="-474.98" y="43.18"/>
<instance part="D21" gate="G$1" x="-515.62" y="43.18"/>
<instance part="C19" gate="G$1" x="-505.46" y="68.58"/>
<instance part="C20" gate="G$1" x="-525.78" y="43.18"/>
<instance part="C21" gate="G$1" x="-485.14" y="43.18"/>
<instance part="GND38" gate="1" x="-505.46" y="63.5"/>
<instance part="GND39" gate="1" x="-477.52" y="63.5"/>
<instance part="GND40" gate="1" x="-497.84" y="38.1"/>
<instance part="GND41" gate="1" x="-457.2" y="38.1"/>
<instance part="GND42" gate="1" x="-485.14" y="38.1"/>
<instance part="GND43" gate="1" x="-525.78" y="38.1"/>
<instance part="SUPPLY20" gate="G$1" x="-505.46" y="73.66"/>
<instance part="SUPPLY21" gate="G$1" x="-525.78" y="48.26"/>
<instance part="SUPPLY22" gate="G$1" x="-485.14" y="48.26"/>
<instance part="D22" gate="G$1" x="-599.44" y="68.58"/>
<instance part="D23" gate="G$1" x="-579.12" y="43.18"/>
<instance part="D24" gate="G$1" x="-619.76" y="43.18"/>
<instance part="C22" gate="G$1" x="-609.6" y="68.58"/>
<instance part="C23" gate="G$1" x="-629.92" y="43.18"/>
<instance part="C24" gate="G$1" x="-589.28" y="43.18"/>
<instance part="GND44" gate="1" x="-609.6" y="63.5"/>
<instance part="GND45" gate="1" x="-581.66" y="63.5"/>
<instance part="GND46" gate="1" x="-601.98" y="38.1"/>
<instance part="GND47" gate="1" x="-561.34" y="38.1"/>
<instance part="GND48" gate="1" x="-589.28" y="38.1"/>
<instance part="GND49" gate="1" x="-629.92" y="38.1"/>
<instance part="SUPPLY23" gate="G$1" x="-609.6" y="73.66"/>
<instance part="SUPPLY24" gate="G$1" x="-629.92" y="48.26"/>
<instance part="SUPPLY25" gate="G$1" x="-589.28" y="48.26"/>
<instance part="D25" gate="G$1" x="139.7" y="0"/>
<instance part="D26" gate="G$1" x="119.38" y="-25.4"/>
<instance part="D27" gate="G$1" x="99.06" y="0"/>
<instance part="C25" gate="G$1" x="129.54" y="0"/>
<instance part="C26" gate="G$1" x="88.9" y="0"/>
<instance part="C27" gate="G$1" x="109.22" y="-25.4"/>
<instance part="GND50" gate="1" x="129.54" y="-5.08"/>
<instance part="GND51" gate="1" x="157.48" y="-5.08"/>
<instance part="GND52" gate="1" x="116.84" y="-5.08"/>
<instance part="GND53" gate="1" x="137.16" y="-30.48"/>
<instance part="GND54" gate="1" x="109.22" y="-30.48"/>
<instance part="GND55" gate="1" x="88.9" y="-5.08"/>
<instance part="SUPPLY26" gate="G$1" x="129.54" y="5.08"/>
<instance part="SUPPLY27" gate="G$1" x="88.9" y="5.08"/>
<instance part="SUPPLY28" gate="G$1" x="109.22" y="-20.32"/>
<instance part="D28" gate="G$1" x="210.82" y="0"/>
<instance part="D29" gate="G$1" x="231.14" y="-25.4"/>
<instance part="D30" gate="G$1" x="190.5" y="-25.4"/>
<instance part="C28" gate="G$1" x="200.66" y="0"/>
<instance part="C29" gate="G$1" x="180.34" y="-25.4"/>
<instance part="C30" gate="G$1" x="220.98" y="-25.4"/>
<instance part="GND56" gate="1" x="200.66" y="-5.08"/>
<instance part="GND57" gate="1" x="228.6" y="-5.08"/>
<instance part="GND58" gate="1" x="208.28" y="-30.48"/>
<instance part="GND59" gate="1" x="248.92" y="-30.48"/>
<instance part="GND60" gate="1" x="220.98" y="-30.48"/>
<instance part="GND61" gate="1" x="180.34" y="-30.48"/>
<instance part="SUPPLY29" gate="G$1" x="200.66" y="5.08"/>
<instance part="SUPPLY30" gate="G$1" x="180.34" y="-20.32"/>
<instance part="SUPPLY31" gate="G$1" x="220.98" y="-20.32"/>
<instance part="D31" gate="G$1" x="233.68" y="-68.58"/>
<instance part="D32" gate="G$1" x="213.36" y="-93.98"/>
<instance part="D33" gate="G$1" x="193.04" y="-68.58"/>
<instance part="C31" gate="G$1" x="223.52" y="-68.58"/>
<instance part="C32" gate="G$1" x="182.88" y="-68.58"/>
<instance part="C33" gate="G$1" x="203.2" y="-93.98"/>
<instance part="GND62" gate="1" x="223.52" y="-73.66"/>
<instance part="GND63" gate="1" x="251.46" y="-73.66"/>
<instance part="GND64" gate="1" x="210.82" y="-73.66"/>
<instance part="GND65" gate="1" x="231.14" y="-99.06"/>
<instance part="GND66" gate="1" x="203.2" y="-99.06"/>
<instance part="GND67" gate="1" x="182.88" y="-73.66"/>
<instance part="SUPPLY32" gate="G$1" x="223.52" y="-63.5"/>
<instance part="SUPPLY33" gate="G$1" x="182.88" y="-63.5"/>
<instance part="SUPPLY34" gate="G$1" x="203.2" y="-88.9"/>
<instance part="D34" gate="G$1" x="-157.48" y="0"/>
<instance part="D35" gate="G$1" x="-177.8" y="-25.4"/>
<instance part="D36" gate="G$1" x="-198.12" y="0"/>
<instance part="C34" gate="G$1" x="-167.64" y="0"/>
<instance part="C35" gate="G$1" x="-208.28" y="0"/>
<instance part="C36" gate="G$1" x="-187.96" y="-25.4"/>
<instance part="GND68" gate="1" x="-167.64" y="-5.08"/>
<instance part="GND69" gate="1" x="-139.7" y="-5.08"/>
<instance part="GND70" gate="1" x="-180.34" y="-5.08"/>
<instance part="GND71" gate="1" x="-160.02" y="-30.48"/>
<instance part="GND72" gate="1" x="-187.96" y="-30.48"/>
<instance part="GND73" gate="1" x="-208.28" y="-5.08"/>
<instance part="SUPPLY35" gate="G$1" x="-167.64" y="5.08"/>
<instance part="SUPPLY36" gate="G$1" x="-208.28" y="5.08"/>
<instance part="SUPPLY37" gate="G$1" x="-187.96" y="-20.32"/>
<instance part="D37" gate="G$1" x="-86.36" y="0"/>
<instance part="D38" gate="G$1" x="-66.04" y="-25.4"/>
<instance part="D39" gate="G$1" x="-106.68" y="-25.4"/>
<instance part="C37" gate="G$1" x="-96.52" y="0"/>
<instance part="C38" gate="G$1" x="-116.84" y="-25.4"/>
<instance part="C39" gate="G$1" x="-76.2" y="-25.4"/>
<instance part="GND74" gate="1" x="-96.52" y="-5.08"/>
<instance part="GND75" gate="1" x="-68.58" y="-5.08"/>
<instance part="GND76" gate="1" x="-88.9" y="-30.48"/>
<instance part="GND77" gate="1" x="-48.26" y="-30.48"/>
<instance part="GND78" gate="1" x="-76.2" y="-30.48"/>
<instance part="GND79" gate="1" x="-116.84" y="-30.48"/>
<instance part="SUPPLY38" gate="G$1" x="-96.52" y="5.08"/>
<instance part="SUPPLY39" gate="G$1" x="-116.84" y="-20.32"/>
<instance part="SUPPLY40" gate="G$1" x="-76.2" y="-20.32"/>
<instance part="D40" gate="G$1" x="35.56" y="-2.54"/>
<instance part="D41" gate="G$1" x="15.24" y="-27.94"/>
<instance part="D42" gate="G$1" x="-5.08" y="-2.54"/>
<instance part="C40" gate="G$1" x="25.4" y="-2.54"/>
<instance part="C41" gate="G$1" x="-15.24" y="-2.54"/>
<instance part="C42" gate="G$1" x="5.08" y="-27.94"/>
<instance part="GND80" gate="1" x="25.4" y="-7.62"/>
<instance part="GND81" gate="1" x="53.34" y="-7.62"/>
<instance part="GND82" gate="1" x="12.7" y="-7.62"/>
<instance part="GND83" gate="1" x="33.02" y="-33.02"/>
<instance part="GND84" gate="1" x="5.08" y="-33.02"/>
<instance part="GND85" gate="1" x="-15.24" y="-7.62"/>
<instance part="SUPPLY41" gate="G$1" x="25.4" y="2.54"/>
<instance part="SUPPLY42" gate="G$1" x="-15.24" y="2.54"/>
<instance part="SUPPLY43" gate="G$1" x="5.08" y="-22.86"/>
<instance part="D43" gate="G$1" x="-342.9" y="0"/>
<instance part="D44" gate="G$1" x="-363.22" y="-25.4"/>
<instance part="D45" gate="G$1" x="-383.54" y="0"/>
<instance part="C43" gate="G$1" x="-353.06" y="0"/>
<instance part="C44" gate="G$1" x="-393.7" y="0"/>
<instance part="C45" gate="G$1" x="-373.38" y="-25.4"/>
<instance part="GND86" gate="1" x="-353.06" y="-5.08"/>
<instance part="GND87" gate="1" x="-325.12" y="-5.08"/>
<instance part="GND88" gate="1" x="-365.76" y="-5.08"/>
<instance part="GND89" gate="1" x="-345.44" y="-30.48"/>
<instance part="GND90" gate="1" x="-373.38" y="-30.48"/>
<instance part="GND91" gate="1" x="-393.7" y="-5.08"/>
<instance part="SUPPLY44" gate="G$1" x="-353.06" y="5.08"/>
<instance part="SUPPLY45" gate="G$1" x="-393.7" y="5.08"/>
<instance part="SUPPLY46" gate="G$1" x="-373.38" y="-20.32"/>
<instance part="D46" gate="G$1" x="-271.78" y="0"/>
<instance part="D47" gate="G$1" x="-251.46" y="-25.4"/>
<instance part="D48" gate="G$1" x="-292.1" y="-25.4"/>
<instance part="C46" gate="G$1" x="-281.94" y="0"/>
<instance part="C47" gate="G$1" x="-302.26" y="-25.4"/>
<instance part="C48" gate="G$1" x="-261.62" y="-25.4"/>
<instance part="GND92" gate="1" x="-281.94" y="-5.08"/>
<instance part="GND93" gate="1" x="-254" y="-5.08"/>
<instance part="GND94" gate="1" x="-274.32" y="-30.48"/>
<instance part="GND95" gate="1" x="-233.68" y="-30.48"/>
<instance part="GND96" gate="1" x="-261.62" y="-30.48"/>
<instance part="GND97" gate="1" x="-302.26" y="-30.48"/>
<instance part="SUPPLY47" gate="G$1" x="-281.94" y="5.08"/>
<instance part="SUPPLY48" gate="G$1" x="-302.26" y="-20.32"/>
<instance part="SUPPLY49" gate="G$1" x="-261.62" y="-20.32"/>
<instance part="D49" gate="G$1" x="-447.04" y="-2.54"/>
<instance part="D50" gate="G$1" x="-467.36" y="-27.94"/>
<instance part="D51" gate="G$1" x="-487.68" y="-2.54"/>
<instance part="C49" gate="G$1" x="-457.2" y="-2.54"/>
<instance part="C50" gate="G$1" x="-497.84" y="-2.54"/>
<instance part="C51" gate="G$1" x="-477.52" y="-27.94"/>
<instance part="GND98" gate="1" x="-457.2" y="-7.62"/>
<instance part="GND99" gate="1" x="-429.26" y="-7.62"/>
<instance part="GND100" gate="1" x="-469.9" y="-7.62"/>
<instance part="GND101" gate="1" x="-449.58" y="-33.02"/>
<instance part="GND102" gate="1" x="-477.52" y="-33.02"/>
<instance part="GND103" gate="1" x="-497.84" y="-7.62"/>
<instance part="SUPPLY50" gate="G$1" x="-457.2" y="2.54"/>
<instance part="SUPPLY51" gate="G$1" x="-497.84" y="2.54"/>
<instance part="SUPPLY52" gate="G$1" x="-477.52" y="-22.86"/>
<instance part="D52" gate="G$1" x="-624.84" y="-2.54"/>
<instance part="D53" gate="G$1" x="-645.16" y="-27.94"/>
<instance part="D54" gate="G$1" x="-665.48" y="-2.54"/>
<instance part="C52" gate="G$1" x="-635" y="-2.54"/>
<instance part="C53" gate="G$1" x="-675.64" y="-2.54"/>
<instance part="C54" gate="G$1" x="-655.32" y="-27.94"/>
<instance part="GND104" gate="1" x="-635" y="-7.62"/>
<instance part="GND105" gate="1" x="-607.06" y="-7.62"/>
<instance part="GND106" gate="1" x="-647.7" y="-7.62"/>
<instance part="GND107" gate="1" x="-627.38" y="-33.02"/>
<instance part="GND108" gate="1" x="-655.32" y="-33.02"/>
<instance part="GND109" gate="1" x="-675.64" y="-7.62"/>
<instance part="SUPPLY53" gate="G$1" x="-635" y="2.54"/>
<instance part="SUPPLY54" gate="G$1" x="-675.64" y="2.54"/>
<instance part="SUPPLY55" gate="G$1" x="-655.32" y="-22.86"/>
<instance part="D55" gate="G$1" x="-553.72" y="-2.54"/>
<instance part="D56" gate="G$1" x="-533.4" y="-27.94"/>
<instance part="D57" gate="G$1" x="-574.04" y="-27.94"/>
<instance part="C55" gate="G$1" x="-563.88" y="-2.54"/>
<instance part="C56" gate="G$1" x="-584.2" y="-27.94"/>
<instance part="C57" gate="G$1" x="-543.56" y="-27.94"/>
<instance part="GND110" gate="1" x="-563.88" y="-7.62"/>
<instance part="GND111" gate="1" x="-535.94" y="-7.62"/>
<instance part="GND112" gate="1" x="-556.26" y="-33.02"/>
<instance part="GND113" gate="1" x="-515.62" y="-33.02"/>
<instance part="GND114" gate="1" x="-543.56" y="-33.02"/>
<instance part="GND115" gate="1" x="-584.2" y="-33.02"/>
<instance part="SUPPLY56" gate="G$1" x="-563.88" y="2.54"/>
<instance part="SUPPLY57" gate="G$1" x="-584.2" y="-22.86"/>
<instance part="SUPPLY58" gate="G$1" x="-543.56" y="-22.86"/>
<instance part="D58" gate="G$1" x="317.5" y="-68.58"/>
<instance part="D59" gate="G$1" x="337.82" y="-93.98"/>
<instance part="D60" gate="G$1" x="297.18" y="-93.98"/>
<instance part="C58" gate="G$1" x="307.34" y="-68.58"/>
<instance part="C59" gate="G$1" x="287.02" y="-93.98"/>
<instance part="C60" gate="G$1" x="327.66" y="-93.98"/>
<instance part="GND116" gate="1" x="307.34" y="-73.66"/>
<instance part="GND117" gate="1" x="335.28" y="-73.66"/>
<instance part="GND118" gate="1" x="314.96" y="-99.06"/>
<instance part="GND119" gate="1" x="355.6" y="-99.06"/>
<instance part="GND120" gate="1" x="327.66" y="-99.06"/>
<instance part="GND121" gate="1" x="287.02" y="-99.06"/>
<instance part="SUPPLY59" gate="G$1" x="307.34" y="-63.5"/>
<instance part="SUPPLY60" gate="G$1" x="287.02" y="-88.9"/>
<instance part="SUPPLY61" gate="G$1" x="327.66" y="-88.9"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="C1" gate="G$1" pin="2"/>
<pinref part="GND1" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="VSS"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D3" gate="G$1" pin="VSS"/>
<pinref part="GND3" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D2" gate="G$1" pin="VSS"/>
<pinref part="GND4" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="2"/>
<pinref part="GND5" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="2"/>
<pinref part="GND6" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C4" gate="G$1" pin="2"/>
<pinref part="GND8" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D4" gate="G$1" pin="VSS"/>
<pinref part="GND9" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D6" gate="G$1" pin="VSS"/>
<pinref part="GND10" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D5" gate="G$1" pin="VSS"/>
<pinref part="GND11" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C6" gate="G$1" pin="2"/>
<pinref part="GND12" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C5" gate="G$1" pin="2"/>
<pinref part="GND13" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND7" gate="1" pin="GND"/>
<pinref part="J1" gate="J$1" pin="2"/>
</segment>
<segment>
<pinref part="C7" gate="G$1" pin="2"/>
<pinref part="GND14" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D7" gate="G$1" pin="VSS"/>
<pinref part="GND15" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D9" gate="G$1" pin="VSS"/>
<pinref part="GND16" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D8" gate="G$1" pin="VSS"/>
<pinref part="GND17" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C9" gate="G$1" pin="2"/>
<pinref part="GND18" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C8" gate="G$1" pin="2"/>
<pinref part="GND19" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C10" gate="G$1" pin="2"/>
<pinref part="GND20" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D10" gate="G$1" pin="VSS"/>
<pinref part="GND21" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D12" gate="G$1" pin="VSS"/>
<pinref part="GND22" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D11" gate="G$1" pin="VSS"/>
<pinref part="GND23" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C12" gate="G$1" pin="2"/>
<pinref part="GND24" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C11" gate="G$1" pin="2"/>
<pinref part="GND25" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C13" gate="G$1" pin="2"/>
<pinref part="GND26" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D13" gate="G$1" pin="VSS"/>
<pinref part="GND27" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D15" gate="G$1" pin="VSS"/>
<pinref part="GND28" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D14" gate="G$1" pin="VSS"/>
<pinref part="GND29" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C15" gate="G$1" pin="2"/>
<pinref part="GND30" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C14" gate="G$1" pin="2"/>
<pinref part="GND31" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C16" gate="G$1" pin="2"/>
<pinref part="GND32" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D16" gate="G$1" pin="VSS"/>
<pinref part="GND33" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D18" gate="G$1" pin="VSS"/>
<pinref part="GND34" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D17" gate="G$1" pin="VSS"/>
<pinref part="GND35" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C18" gate="G$1" pin="2"/>
<pinref part="GND36" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C17" gate="G$1" pin="2"/>
<pinref part="GND37" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C19" gate="G$1" pin="2"/>
<pinref part="GND38" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D19" gate="G$1" pin="VSS"/>
<pinref part="GND39" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D21" gate="G$1" pin="VSS"/>
<pinref part="GND40" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D20" gate="G$1" pin="VSS"/>
<pinref part="GND41" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C21" gate="G$1" pin="2"/>
<pinref part="GND42" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C20" gate="G$1" pin="2"/>
<pinref part="GND43" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C22" gate="G$1" pin="2"/>
<pinref part="GND44" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D22" gate="G$1" pin="VSS"/>
<pinref part="GND45" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D24" gate="G$1" pin="VSS"/>
<pinref part="GND46" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D23" gate="G$1" pin="VSS"/>
<pinref part="GND47" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C24" gate="G$1" pin="2"/>
<pinref part="GND48" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C23" gate="G$1" pin="2"/>
<pinref part="GND49" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C25" gate="G$1" pin="2"/>
<pinref part="GND50" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D25" gate="G$1" pin="VSS"/>
<pinref part="GND51" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D27" gate="G$1" pin="VSS"/>
<pinref part="GND52" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D26" gate="G$1" pin="VSS"/>
<pinref part="GND53" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C27" gate="G$1" pin="2"/>
<pinref part="GND54" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C26" gate="G$1" pin="2"/>
<pinref part="GND55" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C28" gate="G$1" pin="2"/>
<pinref part="GND56" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D28" gate="G$1" pin="VSS"/>
<pinref part="GND57" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D30" gate="G$1" pin="VSS"/>
<pinref part="GND58" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D29" gate="G$1" pin="VSS"/>
<pinref part="GND59" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C30" gate="G$1" pin="2"/>
<pinref part="GND60" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C29" gate="G$1" pin="2"/>
<pinref part="GND61" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C31" gate="G$1" pin="2"/>
<pinref part="GND62" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D31" gate="G$1" pin="VSS"/>
<pinref part="GND63" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D33" gate="G$1" pin="VSS"/>
<pinref part="GND64" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D32" gate="G$1" pin="VSS"/>
<pinref part="GND65" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C33" gate="G$1" pin="2"/>
<pinref part="GND66" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C32" gate="G$1" pin="2"/>
<pinref part="GND67" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C34" gate="G$1" pin="2"/>
<pinref part="GND68" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D34" gate="G$1" pin="VSS"/>
<pinref part="GND69" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D36" gate="G$1" pin="VSS"/>
<pinref part="GND70" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D35" gate="G$1" pin="VSS"/>
<pinref part="GND71" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C36" gate="G$1" pin="2"/>
<pinref part="GND72" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C35" gate="G$1" pin="2"/>
<pinref part="GND73" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C37" gate="G$1" pin="2"/>
<pinref part="GND74" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D37" gate="G$1" pin="VSS"/>
<pinref part="GND75" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D39" gate="G$1" pin="VSS"/>
<pinref part="GND76" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D38" gate="G$1" pin="VSS"/>
<pinref part="GND77" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C39" gate="G$1" pin="2"/>
<pinref part="GND78" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C38" gate="G$1" pin="2"/>
<pinref part="GND79" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C40" gate="G$1" pin="2"/>
<pinref part="GND80" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D40" gate="G$1" pin="VSS"/>
<pinref part="GND81" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D42" gate="G$1" pin="VSS"/>
<pinref part="GND82" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D41" gate="G$1" pin="VSS"/>
<pinref part="GND83" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C42" gate="G$1" pin="2"/>
<pinref part="GND84" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C41" gate="G$1" pin="2"/>
<pinref part="GND85" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C43" gate="G$1" pin="2"/>
<pinref part="GND86" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D43" gate="G$1" pin="VSS"/>
<pinref part="GND87" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D45" gate="G$1" pin="VSS"/>
<pinref part="GND88" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D44" gate="G$1" pin="VSS"/>
<pinref part="GND89" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C45" gate="G$1" pin="2"/>
<pinref part="GND90" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C44" gate="G$1" pin="2"/>
<pinref part="GND91" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C46" gate="G$1" pin="2"/>
<pinref part="GND92" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D46" gate="G$1" pin="VSS"/>
<pinref part="GND93" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D48" gate="G$1" pin="VSS"/>
<pinref part="GND94" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D47" gate="G$1" pin="VSS"/>
<pinref part="GND95" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C48" gate="G$1" pin="2"/>
<pinref part="GND96" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C47" gate="G$1" pin="2"/>
<pinref part="GND97" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C49" gate="G$1" pin="2"/>
<pinref part="GND98" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D49" gate="G$1" pin="VSS"/>
<pinref part="GND99" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D51" gate="G$1" pin="VSS"/>
<pinref part="GND100" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D50" gate="G$1" pin="VSS"/>
<pinref part="GND101" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C51" gate="G$1" pin="2"/>
<pinref part="GND102" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C50" gate="G$1" pin="2"/>
<pinref part="GND103" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C52" gate="G$1" pin="2"/>
<pinref part="GND104" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D52" gate="G$1" pin="VSS"/>
<pinref part="GND105" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D54" gate="G$1" pin="VSS"/>
<pinref part="GND106" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D53" gate="G$1" pin="VSS"/>
<pinref part="GND107" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C54" gate="G$1" pin="2"/>
<pinref part="GND108" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C53" gate="G$1" pin="2"/>
<pinref part="GND109" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C55" gate="G$1" pin="2"/>
<pinref part="GND110" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D55" gate="G$1" pin="VSS"/>
<pinref part="GND111" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D57" gate="G$1" pin="VSS"/>
<pinref part="GND112" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D56" gate="G$1" pin="VSS"/>
<pinref part="GND113" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C57" gate="G$1" pin="2"/>
<pinref part="GND114" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C56" gate="G$1" pin="2"/>
<pinref part="GND115" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C58" gate="G$1" pin="2"/>
<pinref part="GND116" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D58" gate="G$1" pin="VSS"/>
<pinref part="GND117" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D60" gate="G$1" pin="VSS"/>
<pinref part="GND118" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D59" gate="G$1" pin="VSS"/>
<pinref part="GND119" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C60" gate="G$1" pin="2"/>
<pinref part="GND120" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C59" gate="G$1" pin="2"/>
<pinref part="GND121" gate="1" pin="GND"/>
</segment>
</net>
<net name="5V" class="0">
<segment>
<pinref part="C1" gate="G$1" pin="1"/>
<pinref part="SUPPLY1" gate="G$1" pin="5V"/>
<wire x1="35.56" y1="73.66" x2="33.02" y2="73.66" width="0.1524" layer="91"/>
<junction x="27.94" y="73.66"/>
<pinref part="D1" gate="G$1" pin="VDD"/>
<wire x1="33.02" y1="73.66" x2="27.94" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="1"/>
<pinref part="SUPPLY2" gate="G$1" pin="5V"/>
<wire x1="-5.08" y1="73.66" x2="-7.62" y2="73.66" width="0.1524" layer="91"/>
<junction x="-12.7" y="73.66"/>
<pinref part="D3" gate="G$1" pin="VDD"/>
<wire x1="-7.62" y1="73.66" x2="-12.7" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="1"/>
<pinref part="SUPPLY3" gate="G$1" pin="5V"/>
<wire x1="15.24" y1="48.26" x2="12.7" y2="48.26" width="0.1524" layer="91"/>
<junction x="7.62" y="48.26"/>
<pinref part="D2" gate="G$1" pin="VDD"/>
<wire x1="12.7" y1="48.26" x2="7.62" y2="48.26" width="0.1524" layer="91"/>
<junction x="12.7" y="48.26"/>
</segment>
<segment>
<pinref part="J1" gate="J$1" pin="1"/>
<wire x1="20.32" y1="91.44" x2="15.24" y2="91.44" width="0.1524" layer="91"/>
<pinref part="SUPPLY4" gate="G$1" pin="5V"/>
<wire x1="15.24" y1="91.44" x2="15.24" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C4" gate="G$1" pin="1"/>
<pinref part="SUPPLY5" gate="G$1" pin="5V"/>
<wire x1="-86.36" y1="73.66" x2="-88.9" y2="73.66" width="0.1524" layer="91"/>
<junction x="-93.98" y="73.66"/>
<pinref part="D4" gate="G$1" pin="VDD"/>
<wire x1="-88.9" y1="73.66" x2="-93.98" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C5" gate="G$1" pin="1"/>
<pinref part="SUPPLY6" gate="G$1" pin="5V"/>
<wire x1="-106.68" y1="48.26" x2="-109.22" y2="48.26" width="0.1524" layer="91"/>
<junction x="-114.3" y="48.26"/>
<pinref part="D6" gate="G$1" pin="VDD"/>
<wire x1="-109.22" y1="48.26" x2="-114.3" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C6" gate="G$1" pin="1"/>
<pinref part="SUPPLY7" gate="G$1" pin="5V"/>
<wire x1="-66.04" y1="48.26" x2="-68.58" y2="48.26" width="0.1524" layer="91"/>
<junction x="-73.66" y="48.26"/>
<pinref part="D5" gate="G$1" pin="VDD"/>
<wire x1="-68.58" y1="48.26" x2="-73.66" y2="48.26" width="0.1524" layer="91"/>
<junction x="-68.58" y="48.26"/>
</segment>
<segment>
<pinref part="C7" gate="G$1" pin="1"/>
<pinref part="SUPPLY8" gate="G$1" pin="5V"/>
<wire x1="-193.04" y1="73.66" x2="-195.58" y2="73.66" width="0.1524" layer="91"/>
<junction x="-200.66" y="73.66"/>
<pinref part="D7" gate="G$1" pin="VDD"/>
<wire x1="-195.58" y1="73.66" x2="-200.66" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C8" gate="G$1" pin="1"/>
<pinref part="SUPPLY9" gate="G$1" pin="5V"/>
<wire x1="-213.36" y1="48.26" x2="-215.9" y2="48.26" width="0.1524" layer="91"/>
<junction x="-220.98" y="48.26"/>
<pinref part="D9" gate="G$1" pin="VDD"/>
<wire x1="-215.9" y1="48.26" x2="-220.98" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C9" gate="G$1" pin="1"/>
<pinref part="SUPPLY10" gate="G$1" pin="5V"/>
<wire x1="-172.72" y1="48.26" x2="-175.26" y2="48.26" width="0.1524" layer="91"/>
<junction x="-180.34" y="48.26"/>
<pinref part="D8" gate="G$1" pin="VDD"/>
<wire x1="-175.26" y1="48.26" x2="-180.34" y2="48.26" width="0.1524" layer="91"/>
<junction x="-175.26" y="48.26"/>
</segment>
<segment>
<pinref part="C10" gate="G$1" pin="1"/>
<pinref part="SUPPLY11" gate="G$1" pin="5V"/>
<wire x1="-297.18" y1="73.66" x2="-299.72" y2="73.66" width="0.1524" layer="91"/>
<junction x="-304.8" y="73.66"/>
<pinref part="D10" gate="G$1" pin="VDD"/>
<wire x1="-299.72" y1="73.66" x2="-304.8" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C11" gate="G$1" pin="1"/>
<pinref part="SUPPLY12" gate="G$1" pin="5V"/>
<wire x1="-317.5" y1="48.26" x2="-320.04" y2="48.26" width="0.1524" layer="91"/>
<junction x="-325.12" y="48.26"/>
<pinref part="D12" gate="G$1" pin="VDD"/>
<wire x1="-320.04" y1="48.26" x2="-325.12" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C12" gate="G$1" pin="1"/>
<pinref part="SUPPLY13" gate="G$1" pin="5V"/>
<wire x1="-276.86" y1="48.26" x2="-279.4" y2="48.26" width="0.1524" layer="91"/>
<junction x="-284.48" y="48.26"/>
<pinref part="D11" gate="G$1" pin="VDD"/>
<wire x1="-279.4" y1="48.26" x2="-284.48" y2="48.26" width="0.1524" layer="91"/>
<junction x="-279.4" y="48.26"/>
</segment>
<segment>
<pinref part="C13" gate="G$1" pin="1"/>
<pinref part="SUPPLY14" gate="G$1" pin="5V"/>
<wire x1="114.3" y1="71.12" x2="111.76" y2="71.12" width="0.1524" layer="91"/>
<junction x="106.68" y="71.12"/>
<pinref part="D13" gate="G$1" pin="VDD"/>
<wire x1="111.76" y1="71.12" x2="106.68" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C14" gate="G$1" pin="1"/>
<pinref part="SUPPLY15" gate="G$1" pin="5V"/>
<wire x1="93.98" y1="45.72" x2="91.44" y2="45.72" width="0.1524" layer="91"/>
<junction x="86.36" y="45.72"/>
<pinref part="D15" gate="G$1" pin="VDD"/>
<wire x1="91.44" y1="45.72" x2="86.36" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C15" gate="G$1" pin="1"/>
<pinref part="SUPPLY16" gate="G$1" pin="5V"/>
<wire x1="134.62" y1="45.72" x2="132.08" y2="45.72" width="0.1524" layer="91"/>
<junction x="127" y="45.72"/>
<pinref part="D14" gate="G$1" pin="VDD"/>
<wire x1="132.08" y1="45.72" x2="127" y2="45.72" width="0.1524" layer="91"/>
<junction x="132.08" y="45.72"/>
</segment>
<segment>
<pinref part="C16" gate="G$1" pin="1"/>
<pinref part="SUPPLY17" gate="G$1" pin="5V"/>
<wire x1="-381" y1="73.66" x2="-383.54" y2="73.66" width="0.1524" layer="91"/>
<junction x="-388.62" y="73.66"/>
<pinref part="D16" gate="G$1" pin="VDD"/>
<wire x1="-383.54" y1="73.66" x2="-388.62" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C17" gate="G$1" pin="1"/>
<pinref part="SUPPLY18" gate="G$1" pin="5V"/>
<wire x1="-421.64" y1="73.66" x2="-424.18" y2="73.66" width="0.1524" layer="91"/>
<junction x="-429.26" y="73.66"/>
<pinref part="D18" gate="G$1" pin="VDD"/>
<wire x1="-424.18" y1="73.66" x2="-429.26" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C18" gate="G$1" pin="1"/>
<pinref part="SUPPLY19" gate="G$1" pin="5V"/>
<wire x1="-401.32" y1="48.26" x2="-403.86" y2="48.26" width="0.1524" layer="91"/>
<junction x="-408.94" y="48.26"/>
<pinref part="D17" gate="G$1" pin="VDD"/>
<wire x1="-403.86" y1="48.26" x2="-408.94" y2="48.26" width="0.1524" layer="91"/>
<junction x="-403.86" y="48.26"/>
</segment>
<segment>
<pinref part="C19" gate="G$1" pin="1"/>
<pinref part="SUPPLY20" gate="G$1" pin="5V"/>
<wire x1="-497.84" y1="73.66" x2="-500.38" y2="73.66" width="0.1524" layer="91"/>
<junction x="-505.46" y="73.66"/>
<pinref part="D19" gate="G$1" pin="VDD"/>
<wire x1="-500.38" y1="73.66" x2="-505.46" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C20" gate="G$1" pin="1"/>
<pinref part="SUPPLY21" gate="G$1" pin="5V"/>
<wire x1="-518.16" y1="48.26" x2="-520.7" y2="48.26" width="0.1524" layer="91"/>
<junction x="-525.78" y="48.26"/>
<pinref part="D21" gate="G$1" pin="VDD"/>
<wire x1="-520.7" y1="48.26" x2="-525.78" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C21" gate="G$1" pin="1"/>
<pinref part="SUPPLY22" gate="G$1" pin="5V"/>
<wire x1="-477.52" y1="48.26" x2="-480.06" y2="48.26" width="0.1524" layer="91"/>
<junction x="-485.14" y="48.26"/>
<pinref part="D20" gate="G$1" pin="VDD"/>
<wire x1="-480.06" y1="48.26" x2="-485.14" y2="48.26" width="0.1524" layer="91"/>
<junction x="-480.06" y="48.26"/>
</segment>
<segment>
<pinref part="C22" gate="G$1" pin="1"/>
<pinref part="SUPPLY23" gate="G$1" pin="5V"/>
<wire x1="-601.98" y1="73.66" x2="-604.52" y2="73.66" width="0.1524" layer="91"/>
<junction x="-609.6" y="73.66"/>
<pinref part="D22" gate="G$1" pin="VDD"/>
<wire x1="-604.52" y1="73.66" x2="-609.6" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C23" gate="G$1" pin="1"/>
<pinref part="SUPPLY24" gate="G$1" pin="5V"/>
<wire x1="-622.3" y1="48.26" x2="-624.84" y2="48.26" width="0.1524" layer="91"/>
<junction x="-629.92" y="48.26"/>
<pinref part="D24" gate="G$1" pin="VDD"/>
<wire x1="-624.84" y1="48.26" x2="-629.92" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C24" gate="G$1" pin="1"/>
<pinref part="SUPPLY25" gate="G$1" pin="5V"/>
<wire x1="-581.66" y1="48.26" x2="-584.2" y2="48.26" width="0.1524" layer="91"/>
<junction x="-589.28" y="48.26"/>
<pinref part="D23" gate="G$1" pin="VDD"/>
<wire x1="-584.2" y1="48.26" x2="-589.28" y2="48.26" width="0.1524" layer="91"/>
<junction x="-584.2" y="48.26"/>
</segment>
<segment>
<pinref part="C25" gate="G$1" pin="1"/>
<pinref part="SUPPLY26" gate="G$1" pin="5V"/>
<wire x1="137.16" y1="5.08" x2="134.62" y2="5.08" width="0.1524" layer="91"/>
<junction x="129.54" y="5.08"/>
<pinref part="D25" gate="G$1" pin="VDD"/>
<wire x1="134.62" y1="5.08" x2="129.54" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C26" gate="G$1" pin="1"/>
<pinref part="SUPPLY27" gate="G$1" pin="5V"/>
<wire x1="96.52" y1="5.08" x2="93.98" y2="5.08" width="0.1524" layer="91"/>
<junction x="88.9" y="5.08"/>
<pinref part="D27" gate="G$1" pin="VDD"/>
<wire x1="93.98" y1="5.08" x2="88.9" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C27" gate="G$1" pin="1"/>
<pinref part="SUPPLY28" gate="G$1" pin="5V"/>
<wire x1="116.84" y1="-20.32" x2="114.3" y2="-20.32" width="0.1524" layer="91"/>
<junction x="109.22" y="-20.32"/>
<pinref part="D26" gate="G$1" pin="VDD"/>
<wire x1="114.3" y1="-20.32" x2="109.22" y2="-20.32" width="0.1524" layer="91"/>
<junction x="114.3" y="-20.32"/>
</segment>
<segment>
<pinref part="C28" gate="G$1" pin="1"/>
<pinref part="SUPPLY29" gate="G$1" pin="5V"/>
<wire x1="208.28" y1="5.08" x2="205.74" y2="5.08" width="0.1524" layer="91"/>
<junction x="200.66" y="5.08"/>
<pinref part="D28" gate="G$1" pin="VDD"/>
<wire x1="205.74" y1="5.08" x2="200.66" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C29" gate="G$1" pin="1"/>
<pinref part="SUPPLY30" gate="G$1" pin="5V"/>
<wire x1="187.96" y1="-20.32" x2="185.42" y2="-20.32" width="0.1524" layer="91"/>
<junction x="180.34" y="-20.32"/>
<pinref part="D30" gate="G$1" pin="VDD"/>
<wire x1="185.42" y1="-20.32" x2="180.34" y2="-20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C30" gate="G$1" pin="1"/>
<pinref part="SUPPLY31" gate="G$1" pin="5V"/>
<wire x1="228.6" y1="-20.32" x2="226.06" y2="-20.32" width="0.1524" layer="91"/>
<junction x="220.98" y="-20.32"/>
<pinref part="D29" gate="G$1" pin="VDD"/>
<wire x1="226.06" y1="-20.32" x2="220.98" y2="-20.32" width="0.1524" layer="91"/>
<junction x="226.06" y="-20.32"/>
</segment>
<segment>
<pinref part="C31" gate="G$1" pin="1"/>
<pinref part="SUPPLY32" gate="G$1" pin="5V"/>
<wire x1="231.14" y1="-63.5" x2="228.6" y2="-63.5" width="0.1524" layer="91"/>
<junction x="223.52" y="-63.5"/>
<pinref part="D31" gate="G$1" pin="VDD"/>
<wire x1="228.6" y1="-63.5" x2="223.52" y2="-63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C32" gate="G$1" pin="1"/>
<pinref part="SUPPLY33" gate="G$1" pin="5V"/>
<wire x1="190.5" y1="-63.5" x2="187.96" y2="-63.5" width="0.1524" layer="91"/>
<junction x="182.88" y="-63.5"/>
<pinref part="D33" gate="G$1" pin="VDD"/>
<wire x1="187.96" y1="-63.5" x2="182.88" y2="-63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C33" gate="G$1" pin="1"/>
<pinref part="SUPPLY34" gate="G$1" pin="5V"/>
<wire x1="210.82" y1="-88.9" x2="208.28" y2="-88.9" width="0.1524" layer="91"/>
<junction x="203.2" y="-88.9"/>
<pinref part="D32" gate="G$1" pin="VDD"/>
<wire x1="208.28" y1="-88.9" x2="203.2" y2="-88.9" width="0.1524" layer="91"/>
<junction x="208.28" y="-88.9"/>
</segment>
<segment>
<pinref part="C34" gate="G$1" pin="1"/>
<pinref part="SUPPLY35" gate="G$1" pin="5V"/>
<wire x1="-160.02" y1="5.08" x2="-162.56" y2="5.08" width="0.1524" layer="91"/>
<junction x="-167.64" y="5.08"/>
<pinref part="D34" gate="G$1" pin="VDD"/>
<wire x1="-162.56" y1="5.08" x2="-167.64" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C35" gate="G$1" pin="1"/>
<pinref part="SUPPLY36" gate="G$1" pin="5V"/>
<wire x1="-200.66" y1="5.08" x2="-203.2" y2="5.08" width="0.1524" layer="91"/>
<junction x="-208.28" y="5.08"/>
<pinref part="D36" gate="G$1" pin="VDD"/>
<wire x1="-203.2" y1="5.08" x2="-208.28" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C36" gate="G$1" pin="1"/>
<pinref part="SUPPLY37" gate="G$1" pin="5V"/>
<wire x1="-180.34" y1="-20.32" x2="-182.88" y2="-20.32" width="0.1524" layer="91"/>
<junction x="-187.96" y="-20.32"/>
<pinref part="D35" gate="G$1" pin="VDD"/>
<wire x1="-182.88" y1="-20.32" x2="-187.96" y2="-20.32" width="0.1524" layer="91"/>
<junction x="-182.88" y="-20.32"/>
</segment>
<segment>
<pinref part="C37" gate="G$1" pin="1"/>
<pinref part="SUPPLY38" gate="G$1" pin="5V"/>
<wire x1="-88.9" y1="5.08" x2="-91.44" y2="5.08" width="0.1524" layer="91"/>
<junction x="-96.52" y="5.08"/>
<pinref part="D37" gate="G$1" pin="VDD"/>
<wire x1="-91.44" y1="5.08" x2="-96.52" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C38" gate="G$1" pin="1"/>
<pinref part="SUPPLY39" gate="G$1" pin="5V"/>
<wire x1="-109.22" y1="-20.32" x2="-111.76" y2="-20.32" width="0.1524" layer="91"/>
<junction x="-116.84" y="-20.32"/>
<pinref part="D39" gate="G$1" pin="VDD"/>
<wire x1="-111.76" y1="-20.32" x2="-116.84" y2="-20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C39" gate="G$1" pin="1"/>
<pinref part="SUPPLY40" gate="G$1" pin="5V"/>
<wire x1="-68.58" y1="-20.32" x2="-71.12" y2="-20.32" width="0.1524" layer="91"/>
<junction x="-76.2" y="-20.32"/>
<pinref part="D38" gate="G$1" pin="VDD"/>
<wire x1="-71.12" y1="-20.32" x2="-76.2" y2="-20.32" width="0.1524" layer="91"/>
<junction x="-71.12" y="-20.32"/>
</segment>
<segment>
<pinref part="C40" gate="G$1" pin="1"/>
<pinref part="SUPPLY41" gate="G$1" pin="5V"/>
<wire x1="33.02" y1="2.54" x2="30.48" y2="2.54" width="0.1524" layer="91"/>
<junction x="25.4" y="2.54"/>
<pinref part="D40" gate="G$1" pin="VDD"/>
<wire x1="30.48" y1="2.54" x2="25.4" y2="2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C41" gate="G$1" pin="1"/>
<pinref part="SUPPLY42" gate="G$1" pin="5V"/>
<wire x1="-7.62" y1="2.54" x2="-10.16" y2="2.54" width="0.1524" layer="91"/>
<junction x="-15.24" y="2.54"/>
<pinref part="D42" gate="G$1" pin="VDD"/>
<wire x1="-10.16" y1="2.54" x2="-15.24" y2="2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C42" gate="G$1" pin="1"/>
<pinref part="SUPPLY43" gate="G$1" pin="5V"/>
<wire x1="12.7" y1="-22.86" x2="10.16" y2="-22.86" width="0.1524" layer="91"/>
<junction x="5.08" y="-22.86"/>
<pinref part="D41" gate="G$1" pin="VDD"/>
<wire x1="10.16" y1="-22.86" x2="5.08" y2="-22.86" width="0.1524" layer="91"/>
<junction x="10.16" y="-22.86"/>
</segment>
<segment>
<pinref part="C43" gate="G$1" pin="1"/>
<pinref part="SUPPLY44" gate="G$1" pin="5V"/>
<wire x1="-345.44" y1="5.08" x2="-347.98" y2="5.08" width="0.1524" layer="91"/>
<junction x="-353.06" y="5.08"/>
<pinref part="D43" gate="G$1" pin="VDD"/>
<wire x1="-347.98" y1="5.08" x2="-353.06" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C44" gate="G$1" pin="1"/>
<pinref part="SUPPLY45" gate="G$1" pin="5V"/>
<wire x1="-386.08" y1="5.08" x2="-388.62" y2="5.08" width="0.1524" layer="91"/>
<junction x="-393.7" y="5.08"/>
<pinref part="D45" gate="G$1" pin="VDD"/>
<wire x1="-388.62" y1="5.08" x2="-393.7" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C45" gate="G$1" pin="1"/>
<pinref part="SUPPLY46" gate="G$1" pin="5V"/>
<wire x1="-365.76" y1="-20.32" x2="-368.3" y2="-20.32" width="0.1524" layer="91"/>
<junction x="-373.38" y="-20.32"/>
<pinref part="D44" gate="G$1" pin="VDD"/>
<wire x1="-368.3" y1="-20.32" x2="-373.38" y2="-20.32" width="0.1524" layer="91"/>
<junction x="-368.3" y="-20.32"/>
</segment>
<segment>
<pinref part="C46" gate="G$1" pin="1"/>
<pinref part="SUPPLY47" gate="G$1" pin="5V"/>
<wire x1="-274.32" y1="5.08" x2="-276.86" y2="5.08" width="0.1524" layer="91"/>
<junction x="-281.94" y="5.08"/>
<pinref part="D46" gate="G$1" pin="VDD"/>
<wire x1="-276.86" y1="5.08" x2="-281.94" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C47" gate="G$1" pin="1"/>
<pinref part="SUPPLY48" gate="G$1" pin="5V"/>
<wire x1="-294.64" y1="-20.32" x2="-297.18" y2="-20.32" width="0.1524" layer="91"/>
<junction x="-302.26" y="-20.32"/>
<pinref part="D48" gate="G$1" pin="VDD"/>
<wire x1="-297.18" y1="-20.32" x2="-302.26" y2="-20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C48" gate="G$1" pin="1"/>
<pinref part="SUPPLY49" gate="G$1" pin="5V"/>
<wire x1="-254" y1="-20.32" x2="-256.54" y2="-20.32" width="0.1524" layer="91"/>
<junction x="-261.62" y="-20.32"/>
<pinref part="D47" gate="G$1" pin="VDD"/>
<wire x1="-256.54" y1="-20.32" x2="-261.62" y2="-20.32" width="0.1524" layer="91"/>
<junction x="-256.54" y="-20.32"/>
</segment>
<segment>
<pinref part="C49" gate="G$1" pin="1"/>
<pinref part="SUPPLY50" gate="G$1" pin="5V"/>
<wire x1="-449.58" y1="2.54" x2="-452.12" y2="2.54" width="0.1524" layer="91"/>
<junction x="-457.2" y="2.54"/>
<pinref part="D49" gate="G$1" pin="VDD"/>
<wire x1="-452.12" y1="2.54" x2="-457.2" y2="2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C50" gate="G$1" pin="1"/>
<pinref part="SUPPLY51" gate="G$1" pin="5V"/>
<wire x1="-490.22" y1="2.54" x2="-492.76" y2="2.54" width="0.1524" layer="91"/>
<junction x="-497.84" y="2.54"/>
<pinref part="D51" gate="G$1" pin="VDD"/>
<wire x1="-492.76" y1="2.54" x2="-497.84" y2="2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C51" gate="G$1" pin="1"/>
<pinref part="SUPPLY52" gate="G$1" pin="5V"/>
<wire x1="-469.9" y1="-22.86" x2="-472.44" y2="-22.86" width="0.1524" layer="91"/>
<junction x="-477.52" y="-22.86"/>
<pinref part="D50" gate="G$1" pin="VDD"/>
<wire x1="-472.44" y1="-22.86" x2="-477.52" y2="-22.86" width="0.1524" layer="91"/>
<junction x="-472.44" y="-22.86"/>
</segment>
<segment>
<pinref part="C52" gate="G$1" pin="1"/>
<pinref part="SUPPLY53" gate="G$1" pin="5V"/>
<wire x1="-627.38" y1="2.54" x2="-629.92" y2="2.54" width="0.1524" layer="91"/>
<junction x="-635" y="2.54"/>
<pinref part="D52" gate="G$1" pin="VDD"/>
<wire x1="-629.92" y1="2.54" x2="-635" y2="2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C53" gate="G$1" pin="1"/>
<pinref part="SUPPLY54" gate="G$1" pin="5V"/>
<wire x1="-668.02" y1="2.54" x2="-670.56" y2="2.54" width="0.1524" layer="91"/>
<junction x="-675.64" y="2.54"/>
<pinref part="D54" gate="G$1" pin="VDD"/>
<wire x1="-670.56" y1="2.54" x2="-675.64" y2="2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C54" gate="G$1" pin="1"/>
<pinref part="SUPPLY55" gate="G$1" pin="5V"/>
<wire x1="-647.7" y1="-22.86" x2="-650.24" y2="-22.86" width="0.1524" layer="91"/>
<junction x="-655.32" y="-22.86"/>
<pinref part="D53" gate="G$1" pin="VDD"/>
<wire x1="-650.24" y1="-22.86" x2="-655.32" y2="-22.86" width="0.1524" layer="91"/>
<junction x="-650.24" y="-22.86"/>
</segment>
<segment>
<pinref part="C55" gate="G$1" pin="1"/>
<pinref part="SUPPLY56" gate="G$1" pin="5V"/>
<wire x1="-556.26" y1="2.54" x2="-558.8" y2="2.54" width="0.1524" layer="91"/>
<junction x="-563.88" y="2.54"/>
<pinref part="D55" gate="G$1" pin="VDD"/>
<wire x1="-558.8" y1="2.54" x2="-563.88" y2="2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C56" gate="G$1" pin="1"/>
<pinref part="SUPPLY57" gate="G$1" pin="5V"/>
<wire x1="-576.58" y1="-22.86" x2="-579.12" y2="-22.86" width="0.1524" layer="91"/>
<junction x="-584.2" y="-22.86"/>
<pinref part="D57" gate="G$1" pin="VDD"/>
<wire x1="-579.12" y1="-22.86" x2="-584.2" y2="-22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C57" gate="G$1" pin="1"/>
<pinref part="SUPPLY58" gate="G$1" pin="5V"/>
<wire x1="-535.94" y1="-22.86" x2="-538.48" y2="-22.86" width="0.1524" layer="91"/>
<junction x="-543.56" y="-22.86"/>
<pinref part="D56" gate="G$1" pin="VDD"/>
<wire x1="-538.48" y1="-22.86" x2="-543.56" y2="-22.86" width="0.1524" layer="91"/>
<junction x="-538.48" y="-22.86"/>
</segment>
<segment>
<pinref part="C58" gate="G$1" pin="1"/>
<pinref part="SUPPLY59" gate="G$1" pin="5V"/>
<wire x1="314.96" y1="-63.5" x2="312.42" y2="-63.5" width="0.1524" layer="91"/>
<junction x="307.34" y="-63.5"/>
<pinref part="D58" gate="G$1" pin="VDD"/>
<wire x1="312.42" y1="-63.5" x2="307.34" y2="-63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C59" gate="G$1" pin="1"/>
<pinref part="SUPPLY60" gate="G$1" pin="5V"/>
<wire x1="294.64" y1="-88.9" x2="292.1" y2="-88.9" width="0.1524" layer="91"/>
<junction x="287.02" y="-88.9"/>
<pinref part="D60" gate="G$1" pin="VDD"/>
<wire x1="292.1" y1="-88.9" x2="287.02" y2="-88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C60" gate="G$1" pin="1"/>
<pinref part="SUPPLY61" gate="G$1" pin="5V"/>
<wire x1="335.28" y1="-88.9" x2="332.74" y2="-88.9" width="0.1524" layer="91"/>
<junction x="327.66" y="-88.9"/>
<pinref part="D59" gate="G$1" pin="VDD"/>
<wire x1="332.74" y1="-88.9" x2="327.66" y2="-88.9" width="0.1524" layer="91"/>
<junction x="332.74" y="-88.9"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="J1" gate="J$1" pin="3"/>
<pinref part="D1" gate="G$1" pin="DIN"/>
<wire x1="25.4" y1="91.44" x2="55.88" y2="91.44" width="0.1524" layer="91"/>
<wire x1="55.88" y1="91.44" x2="55.88" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="DOUT"/>
<wire x1="33.02" y1="66.04" x2="33.02" y2="58.42" width="0.1524" layer="91"/>
<wire x1="33.02" y1="58.42" x2="22.86" y2="58.42" width="0.1524" layer="91"/>
<wire x1="22.86" y1="58.42" x2="22.86" y2="73.66" width="0.1524" layer="91"/>
<pinref part="D3" gate="G$1" pin="DIN"/>
<wire x1="22.86" y1="73.66" x2="15.24" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="D3" gate="G$1" pin="DOUT"/>
<wire x1="-7.62" y1="66.04" x2="-7.62" y2="55.88" width="0.1524" layer="91"/>
<pinref part="D2" gate="G$1" pin="DIN"/>
<wire x1="-7.62" y1="55.88" x2="35.56" y2="55.88" width="0.1524" layer="91"/>
<wire x1="35.56" y1="55.88" x2="35.56" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="D15" gate="G$1" pin="DOUT"/>
<wire x1="91.44" y1="38.1" x2="91.44" y2="27.94" width="0.1524" layer="91"/>
<pinref part="D25" gate="G$1" pin="DIN"/>
<wire x1="157.48" y1="27.94" x2="157.48" y2="5.08" width="0.1524" layer="91"/>
<wire x1="91.44" y1="27.94" x2="157.48" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="D16" gate="G$1" pin="DOUT"/>
<wire x1="-383.54" y1="66.04" x2="-383.54" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-383.54" y1="58.42" x2="-393.7" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-393.7" y1="58.42" x2="-393.7" y2="73.66" width="0.1524" layer="91"/>
<pinref part="D18" gate="G$1" pin="DIN"/>
<wire x1="-393.7" y1="73.66" x2="-401.32" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="D18" gate="G$1" pin="DOUT"/>
<wire x1="-424.18" y1="66.04" x2="-424.18" y2="55.88" width="0.1524" layer="91"/>
<pinref part="D17" gate="G$1" pin="DIN"/>
<wire x1="-424.18" y1="55.88" x2="-381" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-381" y1="55.88" x2="-381" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="D2" gate="G$1" pin="DOUT"/>
<wire x1="12.7" y1="40.64" x2="12.7" y2="33.02" width="0.1524" layer="91"/>
<wire x1="12.7" y1="33.02" x2="-35.56" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="33.02" x2="-35.56" y2="48.26" width="0.1524" layer="91"/>
<pinref part="D5" gate="G$1" pin="DIN"/>
<wire x1="-35.56" y1="48.26" x2="-45.72" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="D5" gate="G$1" pin="DOUT"/>
<wire x1="-68.58" y1="40.64" x2="-68.58" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="33.02" x2="-81.28" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="33.02" x2="-81.28" y2="48.26" width="0.1524" layer="91"/>
<pinref part="D6" gate="G$1" pin="DIN"/>
<wire x1="-81.28" y1="48.26" x2="-86.36" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="D6" gate="G$1" pin="DOUT"/>
<wire x1="-109.22" y1="40.64" x2="-109.22" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-109.22" y1="33.02" x2="-121.92" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-121.92" y1="33.02" x2="-121.92" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-121.92" y1="55.88" x2="-58.42" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-58.42" y1="55.88" x2="-58.42" y2="73.66" width="0.1524" layer="91"/>
<pinref part="D4" gate="G$1" pin="DIN"/>
<wire x1="-58.42" y1="73.66" x2="-66.04" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="D4" gate="G$1" pin="DOUT"/>
<wire x1="-88.9" y1="66.04" x2="-88.9" y2="58.42" width="0.1524" layer="91"/>
<pinref part="D8" gate="G$1" pin="DIN"/>
<wire x1="-88.9" y1="58.42" x2="-152.4" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-152.4" y1="58.42" x2="-152.4" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="D8" gate="G$1" pin="DOUT"/>
<wire x1="-175.26" y1="40.64" x2="-175.26" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-175.26" y1="33.02" x2="-187.96" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-187.96" y1="33.02" x2="-187.96" y2="48.26" width="0.1524" layer="91"/>
<pinref part="D9" gate="G$1" pin="DIN"/>
<wire x1="-187.96" y1="48.26" x2="-193.04" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="D9" gate="G$1" pin="DOUT"/>
<wire x1="-215.9" y1="40.64" x2="-215.9" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-215.9" y1="33.02" x2="-226.06" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-226.06" y1="33.02" x2="-226.06" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-226.06" y1="55.88" x2="-167.64" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-167.64" y1="55.88" x2="-167.64" y2="73.66" width="0.1524" layer="91"/>
<pinref part="D7" gate="G$1" pin="DIN"/>
<wire x1="-167.64" y1="73.66" x2="-172.72" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="D7" gate="G$1" pin="DOUT"/>
<wire x1="-195.58" y1="66.04" x2="-195.58" y2="58.42" width="0.1524" layer="91"/>
<pinref part="D11" gate="G$1" pin="DIN"/>
<wire x1="-195.58" y1="58.42" x2="-256.54" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-256.54" y1="58.42" x2="-256.54" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="D11" gate="G$1" pin="DOUT"/>
<wire x1="-279.4" y1="40.64" x2="-279.4" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-279.4" y1="33.02" x2="-289.56" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-289.56" y1="33.02" x2="-289.56" y2="48.26" width="0.1524" layer="91"/>
<pinref part="D12" gate="G$1" pin="DIN"/>
<wire x1="-289.56" y1="48.26" x2="-297.18" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="D12" gate="G$1" pin="DOUT"/>
<wire x1="-320.04" y1="40.64" x2="-320.04" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-320.04" y1="33.02" x2="-330.2" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-330.2" y1="33.02" x2="-330.2" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-330.2" y1="55.88" x2="-269.24" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-269.24" y1="55.88" x2="-269.24" y2="73.66" width="0.1524" layer="91"/>
<pinref part="D10" gate="G$1" pin="DIN"/>
<wire x1="-269.24" y1="73.66" x2="-276.86" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="D10" gate="G$1" pin="DOUT"/>
<wire x1="-299.72" y1="66.04" x2="-299.72" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-299.72" y1="58.42" x2="-345.44" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-345.44" y1="58.42" x2="-345.44" y2="73.66" width="0.1524" layer="91"/>
<pinref part="D16" gate="G$1" pin="DIN"/>
<wire x1="-345.44" y1="73.66" x2="-360.68" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="D17" gate="G$1" pin="DOUT"/>
<wire x1="-403.86" y1="40.64" x2="-403.86" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-403.86" y1="33.02" x2="-441.96" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-441.96" y1="33.02" x2="-441.96" y2="48.26" width="0.1524" layer="91"/>
<pinref part="D20" gate="G$1" pin="DIN"/>
<wire x1="-441.96" y1="48.26" x2="-457.2" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="D20" gate="G$1" pin="DOUT"/>
<wire x1="-480.06" y1="40.64" x2="-480.06" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-480.06" y1="33.02" x2="-490.22" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-490.22" y1="33.02" x2="-490.22" y2="48.26" width="0.1524" layer="91"/>
<pinref part="D21" gate="G$1" pin="DIN"/>
<wire x1="-490.22" y1="48.26" x2="-497.84" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="D21" gate="G$1" pin="DOUT"/>
<wire x1="-520.7" y1="40.64" x2="-520.7" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-520.7" y1="33.02" x2="-530.86" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-530.86" y1="33.02" x2="-530.86" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-530.86" y1="55.88" x2="-472.44" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-472.44" y1="55.88" x2="-472.44" y2="73.66" width="0.1524" layer="91"/>
<pinref part="D19" gate="G$1" pin="DIN"/>
<wire x1="-472.44" y1="73.66" x2="-477.52" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="D19" gate="G$1" pin="DOUT"/>
<wire x1="-500.38" y1="66.04" x2="-500.38" y2="58.42" width="0.1524" layer="91"/>
<pinref part="D23" gate="G$1" pin="DIN"/>
<wire x1="-500.38" y1="58.42" x2="-561.34" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-561.34" y1="58.42" x2="-561.34" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="D23" gate="G$1" pin="DOUT"/>
<wire x1="-584.2" y1="40.64" x2="-584.2" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-584.2" y1="33.02" x2="-594.36" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-594.36" y1="33.02" x2="-594.36" y2="48.26" width="0.1524" layer="91"/>
<pinref part="D24" gate="G$1" pin="DIN"/>
<wire x1="-594.36" y1="48.26" x2="-601.98" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="D24" gate="G$1" pin="DOUT"/>
<wire x1="-624.84" y1="40.64" x2="-624.84" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-624.84" y1="33.02" x2="-635" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-635" y1="33.02" x2="-635" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-635" y1="55.88" x2="-576.58" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-576.58" y1="55.88" x2="-576.58" y2="73.66" width="0.1524" layer="91"/>
<pinref part="D22" gate="G$1" pin="DIN"/>
<wire x1="-576.58" y1="73.66" x2="-581.66" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="D22" gate="G$1" pin="DOUT"/>
<wire x1="-604.52" y1="66.04" x2="-604.52" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-604.52" y1="58.42" x2="-614.68" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-614.68" y1="58.42" x2="-614.68" y2="83.82" width="0.1524" layer="91"/>
<wire x1="-614.68" y1="83.82" x2="58.42" y2="83.82" width="0.1524" layer="91"/>
<pinref part="D13" gate="G$1" pin="DIN"/>
<wire x1="58.42" y1="83.82" x2="60.96" y2="83.82" width="0.1524" layer="91"/>
<wire x1="134.62" y1="71.12" x2="134.62" y2="83.82" width="0.1524" layer="91"/>
<wire x1="134.62" y1="83.82" x2="60.96" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="D25" gate="G$1" pin="DOUT"/>
<wire x1="134.62" y1="-2.54" x2="134.62" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="134.62" y1="-10.16" x2="124.46" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="124.46" y1="-10.16" x2="124.46" y2="5.08" width="0.1524" layer="91"/>
<pinref part="D27" gate="G$1" pin="DIN"/>
<wire x1="124.46" y1="5.08" x2="116.84" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="D27" gate="G$1" pin="DOUT"/>
<wire x1="93.98" y1="-2.54" x2="93.98" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="D26" gate="G$1" pin="DIN"/>
<wire x1="93.98" y1="-12.7" x2="137.16" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="137.16" y1="-12.7" x2="137.16" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="D26" gate="G$1" pin="DOUT"/>
<wire x1="114.3" y1="-27.94" x2="114.3" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="114.3" y1="-35.56" x2="73.66" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-35.56" x2="73.66" y2="2.54" width="0.1524" layer="91"/>
<pinref part="D40" gate="G$1" pin="DIN"/>
<wire x1="73.66" y1="2.54" x2="53.34" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="D30" gate="G$1" pin="DOUT"/>
<wire x1="185.42" y1="-27.94" x2="185.42" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="D31" gate="G$1" pin="DIN"/>
<wire x1="251.46" y1="-43.18" x2="251.46" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="185.42" y1="-43.18" x2="251.46" y2="-43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="D31" gate="G$1" pin="DOUT"/>
<wire x1="228.6" y1="-71.12" x2="228.6" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-78.74" x2="218.44" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="218.44" y1="-78.74" x2="218.44" y2="-63.5" width="0.1524" layer="91"/>
<pinref part="D33" gate="G$1" pin="DIN"/>
<wire x1="218.44" y1="-63.5" x2="210.82" y2="-63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="D33" gate="G$1" pin="DOUT"/>
<wire x1="187.96" y1="-71.12" x2="187.96" y2="-81.28" width="0.1524" layer="91"/>
<pinref part="D32" gate="G$1" pin="DIN"/>
<wire x1="187.96" y1="-81.28" x2="231.14" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-81.28" x2="231.14" y2="-88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="D32" gate="G$1" pin="DOUT"/>
<wire x1="208.28" y1="-96.52" x2="208.28" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="208.28" y1="-104.14" x2="274.32" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-104.14" x2="274.32" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="D58" gate="G$1" pin="DIN"/>
<wire x1="335.28" y1="-63.5" x2="335.28" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-53.34" x2="335.28" y2="-53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="D34" gate="G$1" pin="DOUT"/>
<wire x1="-162.56" y1="-2.54" x2="-162.56" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-162.56" y1="-10.16" x2="-172.72" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-172.72" y1="-10.16" x2="-172.72" y2="5.08" width="0.1524" layer="91"/>
<pinref part="D36" gate="G$1" pin="DIN"/>
<wire x1="-172.72" y1="5.08" x2="-180.34" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="D36" gate="G$1" pin="DOUT"/>
<wire x1="-203.2" y1="-2.54" x2="-203.2" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="D35" gate="G$1" pin="DIN"/>
<wire x1="-203.2" y1="-12.7" x2="-160.02" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-160.02" y1="-12.7" x2="-160.02" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="D35" gate="G$1" pin="DOUT"/>
<wire x1="-182.88" y1="-27.94" x2="-182.88" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-182.88" y1="-35.56" x2="-220.98" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-220.98" y1="-35.56" x2="-220.98" y2="5.08" width="0.1524" layer="91"/>
<pinref part="D46" gate="G$1" pin="DIN"/>
<wire x1="-220.98" y1="5.08" x2="-254" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="D38" gate="G$1" pin="DOUT"/>
<wire x1="-71.12" y1="-27.94" x2="-71.12" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="-35.56" x2="-83.82" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="-35.56" x2="-83.82" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="D39" gate="G$1" pin="DIN"/>
<wire x1="-83.82" y1="-20.32" x2="-88.9" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="D39" gate="G$1" pin="DOUT"/>
<wire x1="-111.76" y1="-27.94" x2="-111.76" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-111.76" y1="-35.56" x2="-121.92" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-121.92" y1="-35.56" x2="-121.92" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-121.92" y1="-12.7" x2="-63.5" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="-12.7" x2="-63.5" y2="5.08" width="0.1524" layer="91"/>
<pinref part="D37" gate="G$1" pin="DIN"/>
<wire x1="-63.5" y1="5.08" x2="-68.58" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="D37" gate="G$1" pin="DOUT"/>
<wire x1="-91.44" y1="-2.54" x2="-91.44" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-91.44" y1="-10.16" x2="-127" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-127" y1="-10.16" x2="-127" y2="5.08" width="0.1524" layer="91"/>
<pinref part="D34" gate="G$1" pin="DIN"/>
<wire x1="-127" y1="5.08" x2="-139.7" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="D40" gate="G$1" pin="DOUT"/>
<wire x1="30.48" y1="-5.08" x2="30.48" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-12.7" x2="20.32" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-12.7" x2="20.32" y2="2.54" width="0.1524" layer="91"/>
<pinref part="D42" gate="G$1" pin="DIN"/>
<wire x1="20.32" y1="2.54" x2="12.7" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="D42" gate="G$1" pin="DOUT"/>
<wire x1="-10.16" y1="-5.08" x2="-10.16" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="D41" gate="G$1" pin="DIN"/>
<wire x1="-10.16" y1="-15.24" x2="33.02" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-15.24" x2="33.02" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="D41" gate="G$1" pin="DOUT"/>
<wire x1="10.16" y1="-30.48" x2="10.16" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="10.16" y1="-38.1" x2="-22.86" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="-38.1" x2="-22.86" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="D38" gate="G$1" pin="DIN"/>
<wire x1="-22.86" y1="-20.32" x2="-48.26" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="D43" gate="G$1" pin="DOUT"/>
<wire x1="-347.98" y1="-2.54" x2="-347.98" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-347.98" y1="-10.16" x2="-358.14" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-358.14" y1="-10.16" x2="-358.14" y2="5.08" width="0.1524" layer="91"/>
<pinref part="D45" gate="G$1" pin="DIN"/>
<wire x1="-358.14" y1="5.08" x2="-365.76" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="D45" gate="G$1" pin="DOUT"/>
<wire x1="-388.62" y1="-2.54" x2="-388.62" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="D44" gate="G$1" pin="DIN"/>
<wire x1="-388.62" y1="-12.7" x2="-345.44" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-345.44" y1="-12.7" x2="-345.44" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="D44" gate="G$1" pin="DOUT"/>
<wire x1="-368.3" y1="-27.94" x2="-368.3" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-368.3" y1="-35.56" x2="-411.48" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-411.48" y1="-35.56" x2="-411.48" y2="2.54" width="0.1524" layer="91"/>
<pinref part="D49" gate="G$1" pin="DIN"/>
<wire x1="-411.48" y1="2.54" x2="-429.26" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="D48" gate="G$1" pin="DOUT"/>
<wire x1="-297.18" y1="-27.94" x2="-297.18" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="-297.18" y1="-38.1" x2="-312.42" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="-312.42" y1="-38.1" x2="-312.42" y2="5.08" width="0.1524" layer="91"/>
<pinref part="D43" gate="G$1" pin="DIN"/>
<wire x1="-312.42" y1="5.08" x2="-325.12" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="D49" gate="G$1" pin="DOUT"/>
<wire x1="-452.12" y1="-5.08" x2="-452.12" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-452.12" y1="-12.7" x2="-462.28" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-462.28" y1="-12.7" x2="-462.28" y2="2.54" width="0.1524" layer="91"/>
<pinref part="D51" gate="G$1" pin="DIN"/>
<wire x1="-462.28" y1="2.54" x2="-469.9" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="D51" gate="G$1" pin="DOUT"/>
<wire x1="-492.76" y1="-5.08" x2="-492.76" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="D50" gate="G$1" pin="DIN"/>
<wire x1="-492.76" y1="-15.24" x2="-449.58" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="-449.58" y1="-15.24" x2="-449.58" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<pinref part="D50" gate="G$1" pin="DOUT"/>
<wire x1="-472.44" y1="-30.48" x2="-472.44" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="-472.44" y1="-38.1" x2="-505.46" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="-505.46" y1="-38.1" x2="-505.46" y2="2.54" width="0.1524" layer="91"/>
<pinref part="D55" gate="G$1" pin="DIN"/>
<wire x1="-505.46" y1="2.54" x2="-535.94" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<pinref part="D52" gate="G$1" pin="DOUT"/>
<wire x1="-629.92" y1="-5.08" x2="-629.92" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-629.92" y1="-12.7" x2="-640.08" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-640.08" y1="-12.7" x2="-640.08" y2="2.54" width="0.1524" layer="91"/>
<pinref part="D54" gate="G$1" pin="DIN"/>
<wire x1="-640.08" y1="2.54" x2="-647.7" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<pinref part="D54" gate="G$1" pin="DOUT"/>
<wire x1="-670.56" y1="-5.08" x2="-670.56" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="D53" gate="G$1" pin="DIN"/>
<wire x1="-670.56" y1="-15.24" x2="-627.38" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="-627.38" y1="-15.24" x2="-627.38" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$57" class="0">
<segment>
<pinref part="D53" gate="G$1" pin="DOUT"/>
<wire x1="-650.24" y1="-30.48" x2="-650.24" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="-650.24" y1="-45.72" x2="170.18" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-45.72" x2="170.18" y2="15.24" width="0.1524" layer="91"/>
<pinref part="D28" gate="G$1" pin="DIN"/>
<wire x1="228.6" y1="5.08" x2="228.6" y2="15.24" width="0.1524" layer="91"/>
<wire x1="170.18" y1="15.24" x2="228.6" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$58" class="0">
<segment>
<pinref part="D57" gate="G$1" pin="DOUT"/>
<wire x1="-579.12" y1="-30.48" x2="-579.12" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="-579.12" y1="-40.64" x2="-596.9" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="-596.9" y1="-40.64" x2="-596.9" y2="2.54" width="0.1524" layer="91"/>
<pinref part="D52" gate="G$1" pin="DIN"/>
<wire x1="-596.9" y1="2.54" x2="-607.06" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$62" class="0">
<segment>
<pinref part="D13" gate="G$1" pin="DOUT"/>
<wire x1="111.76" y1="63.5" x2="111.76" y2="53.34" width="0.1524" layer="91"/>
<wire x1="111.76" y1="53.34" x2="154.94" y2="53.34" width="0.1524" layer="91"/>
<pinref part="D14" gate="G$1" pin="DIN"/>
<wire x1="154.94" y1="53.34" x2="154.94" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$63" class="0">
<segment>
<pinref part="D14" gate="G$1" pin="DOUT"/>
<wire x1="132.08" y1="38.1" x2="132.08" y2="30.48" width="0.1524" layer="91"/>
<wire x1="132.08" y1="30.48" x2="119.38" y2="30.48" width="0.1524" layer="91"/>
<wire x1="119.38" y1="30.48" x2="119.38" y2="45.72" width="0.1524" layer="91"/>
<pinref part="D15" gate="G$1" pin="DIN"/>
<wire x1="119.38" y1="45.72" x2="114.3" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="D46" gate="G$1" pin="DOUT"/>
<wire x1="-276.86" y1="-2.54" x2="-276.86" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="D47" gate="G$1" pin="DIN"/>
<wire x1="-276.86" y1="-10.16" x2="-233.68" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-233.68" y1="-10.16" x2="-233.68" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="D47" gate="G$1" pin="DOUT"/>
<wire x1="-256.54" y1="-27.94" x2="-256.54" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-256.54" y1="-35.56" x2="-269.24" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-269.24" y1="-35.56" x2="-269.24" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="D48" gate="G$1" pin="DIN"/>
<wire x1="-269.24" y1="-20.32" x2="-274.32" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="D55" gate="G$1" pin="DOUT"/>
<wire x1="-558.8" y1="-5.08" x2="-558.8" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="D56" gate="G$1" pin="DIN"/>
<wire x1="-558.8" y1="-15.24" x2="-515.62" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="-515.62" y1="-15.24" x2="-515.62" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="D56" gate="G$1" pin="DOUT"/>
<wire x1="-538.48" y1="-30.48" x2="-538.48" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="-538.48" y1="-38.1" x2="-551.18" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="-551.18" y1="-38.1" x2="-551.18" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="D57" gate="G$1" pin="DIN"/>
<wire x1="-551.18" y1="-22.86" x2="-556.26" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="D28" gate="G$1" pin="DOUT"/>
<wire x1="205.74" y1="-2.54" x2="205.74" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="D29" gate="G$1" pin="DIN"/>
<wire x1="205.74" y1="-10.16" x2="248.92" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="248.92" y1="-10.16" x2="248.92" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<pinref part="D29" gate="G$1" pin="DOUT"/>
<wire x1="226.06" y1="-27.94" x2="226.06" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-35.56" x2="213.36" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="213.36" y1="-35.56" x2="213.36" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="D30" gate="G$1" pin="DIN"/>
<wire x1="213.36" y1="-20.32" x2="208.28" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<pinref part="D58" gate="G$1" pin="DOUT"/>
<wire x1="312.42" y1="-71.12" x2="312.42" y2="-78.74" width="0.1524" layer="91"/>
<pinref part="D59" gate="G$1" pin="DIN"/>
<wire x1="312.42" y1="-78.74" x2="355.6" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="355.6" y1="-78.74" x2="355.6" y2="-88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$59" class="0">
<segment>
<pinref part="D59" gate="G$1" pin="DOUT"/>
<wire x1="332.74" y1="-96.52" x2="332.74" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="332.74" y1="-104.14" x2="320.04" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="320.04" y1="-104.14" x2="320.04" y2="-88.9" width="0.1524" layer="91"/>
<pinref part="D60" gate="G$1" pin="DIN"/>
<wire x1="320.04" y1="-88.9" x2="314.96" y2="-88.9" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
