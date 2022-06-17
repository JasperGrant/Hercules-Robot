<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
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
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
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
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="uln-udn" urn="urn:adsk.eagle:library:407">
<description>&lt;b&gt;Driver Arrays&lt;/b&gt;&lt;p&gt;
ULN and UDN Series&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL16" urn="urn:adsk.eagle:footprint:917/1" library_version="3">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="10.16" y1="2.921" x2="-10.16" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="10.16" y1="2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="2.921" x2="-10.16" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="-10.16" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.016" x2="-10.16" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-10.541" y="-2.921" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-7.493" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SO16" urn="urn:adsk.eagle:footprint:918/1" library_version="3">
<description>&lt;b&gt;Small Outline Package&lt;/b&gt;</description>
<wire x1="4.699" y1="1.9558" x2="-4.699" y2="1.9558" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.9558" x2="5.08" y2="-1.5748" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.5748" x2="-4.699" y2="1.9558" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="1.9558" x2="5.08" y2="1.5748" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.5748" x2="-4.699" y2="-1.9558" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="-1.9558" x2="4.699" y2="-1.9558" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.5748" x2="5.08" y2="1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.5748" x2="-5.08" y2="-1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="21" curve="-180"/>
<wire x1="-5.08" y1="-1.6002" x2="5.08" y2="-1.6002" width="0.0508" layer="21"/>
<smd name="1" x="-4.445" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="16" x="-4.445" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-3.175" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="15" x="-3.175" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="-1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="-0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="-0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="3.175" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="3.175" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="4.445" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="4.445" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<text x="-4.064" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-5.461" y="-1.778" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-0.889" y1="1.9558" x2="-0.381" y2="3.0988" layer="51"/>
<rectangle x1="-4.699" y1="-3.0988" x2="-4.191" y2="-1.9558" layer="51"/>
<rectangle x1="-3.429" y1="-3.0988" x2="-2.921" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="-3.0734" x2="-1.651" y2="-1.9304" layer="51"/>
<rectangle x1="-0.889" y1="-3.0988" x2="-0.381" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="1.9558" x2="-1.651" y2="3.0988" layer="51"/>
<rectangle x1="-3.429" y1="1.9558" x2="-2.921" y2="3.0988" layer="51"/>
<rectangle x1="-4.699" y1="1.9558" x2="-4.191" y2="3.0988" layer="51"/>
<rectangle x1="0.381" y1="-3.0988" x2="0.889" y2="-1.9558" layer="51"/>
<rectangle x1="1.651" y1="-3.0988" x2="2.159" y2="-1.9558" layer="51"/>
<rectangle x1="2.921" y1="-3.0988" x2="3.429" y2="-1.9558" layer="51"/>
<rectangle x1="4.191" y1="-3.0988" x2="4.699" y2="-1.9558" layer="51"/>
<rectangle x1="0.381" y1="1.9558" x2="0.889" y2="3.0988" layer="51"/>
<rectangle x1="1.651" y1="1.9558" x2="2.159" y2="3.0988" layer="51"/>
<rectangle x1="2.921" y1="1.9558" x2="3.429" y2="3.0988" layer="51"/>
<rectangle x1="4.191" y1="1.9558" x2="4.699" y2="3.0988" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="DIL16" urn="urn:adsk.eagle:package:922/2" type="model" library_version="3">
<description>Dual In Line Package</description>
<packageinstances>
<packageinstance name="DIL16"/>
</packageinstances>
</package3d>
<package3d name="SO16" urn="urn:adsk.eagle:package:923/2" type="model" library_version="3">
<description>Small Outline Package</description>
<packageinstances>
<packageinstance name="SO16"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="2001A" urn="urn:adsk.eagle:symbol:30225/1" library_version="3">
<wire x1="-7.62" y1="10.16" x2="7.62" y2="10.16" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="7.62" y2="10.16" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="-7.62" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="10.16" x2="-7.62" y2="-12.7" width="0.4064" layer="94"/>
<text x="-7.62" y="10.922" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-15.24" size="1.778" layer="96">&gt;VALUE</text>
<pin name="I1" x="-12.7" y="7.62" length="middle" direction="in"/>
<pin name="I2" x="-12.7" y="5.08" length="middle" direction="in"/>
<pin name="I3" x="-12.7" y="2.54" length="middle" direction="in"/>
<pin name="I4" x="-12.7" y="0" length="middle" direction="in"/>
<pin name="I5" x="-12.7" y="-2.54" length="middle" direction="in"/>
<pin name="I6" x="-12.7" y="-5.08" length="middle" direction="in"/>
<pin name="I7" x="-12.7" y="-7.62" length="middle" direction="in"/>
<pin name="O1" x="12.7" y="7.62" length="middle" direction="oc" rot="R180"/>
<pin name="O2" x="12.7" y="5.08" length="middle" direction="oc" rot="R180"/>
<pin name="O3" x="12.7" y="2.54" length="middle" direction="oc" rot="R180"/>
<pin name="O4" x="12.7" y="0" length="middle" direction="oc" rot="R180"/>
<pin name="O5" x="12.7" y="-2.54" length="middle" direction="oc" rot="R180"/>
<pin name="O6" x="12.7" y="-5.08" length="middle" direction="oc" rot="R180"/>
<pin name="O7" x="12.7" y="-7.62" length="middle" direction="oc" rot="R180"/>
<pin name="CD+" x="12.7" y="-10.16" length="middle" direction="pas" rot="R180"/>
<pin name="GND" x="-12.7" y="-10.16" length="middle" direction="pwr"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ULN2003A" urn="urn:adsk.eagle:component:30250/3" prefix="IC" library_version="3">
<description>&lt;b&gt;DRIVER ARRAY&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="2001A" x="0" y="0"/>
</gates>
<devices>
<device name="N" package="DIL16">
<connects>
<connect gate="A" pin="CD+" pad="9"/>
<connect gate="A" pin="GND" pad="8"/>
<connect gate="A" pin="I1" pad="1"/>
<connect gate="A" pin="I2" pad="2"/>
<connect gate="A" pin="I3" pad="3"/>
<connect gate="A" pin="I4" pad="4"/>
<connect gate="A" pin="I5" pad="5"/>
<connect gate="A" pin="I6" pad="6"/>
<connect gate="A" pin="I7" pad="7"/>
<connect gate="A" pin="O1" pad="16"/>
<connect gate="A" pin="O2" pad="15"/>
<connect gate="A" pin="O3" pad="14"/>
<connect gate="A" pin="O4" pad="13"/>
<connect gate="A" pin="O5" pad="12"/>
<connect gate="A" pin="O6" pad="11"/>
<connect gate="A" pin="O7" pad="10"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:922/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="3" constant="no"/>
</technology>
</technologies>
</device>
<device name="D" package="SO16">
<connects>
<connect gate="A" pin="CD+" pad="9"/>
<connect gate="A" pin="GND" pad="8"/>
<connect gate="A" pin="I1" pad="1"/>
<connect gate="A" pin="I2" pad="2"/>
<connect gate="A" pin="I3" pad="3"/>
<connect gate="A" pin="I4" pad="4"/>
<connect gate="A" pin="I5" pad="5"/>
<connect gate="A" pin="I6" pad="6"/>
<connect gate="A" pin="I7" pad="7"/>
<connect gate="A" pin="O1" pad="16"/>
<connect gate="A" pin="O2" pad="15"/>
<connect gate="A" pin="O3" pad="14"/>
<connect gate="A" pin="O4" pad="13"/>
<connect gate="A" pin="O5" pad="12"/>
<connect gate="A" pin="O6" pad="11"/>
<connect gate="A" pin="O7" pad="10"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:923/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+5V" urn="urn:adsk.eagle:symbol:26929/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+5V" urn="urn:adsk.eagle:component:26963/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
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
<library name="con-JST XH" urn="urn:adsk.eagle:library:29976298">
<description>
&lt;b&gt;JST Connectors&lt;/b&gt; - XH Series, 2.50mm pitch disconnectable crimp style connectors&lt;p&gt;

&lt;p&gt;THIS LIBRARY IS PROVIDED AS IS AND WITHOUT WARRANTY OF ANY KIND, EXPRESSED OR IMPLIED.&lt;br&gt;
USE AT YOUR OWN RISK!&lt;p&gt;

&lt;author&gt;Author: kylie &lt;/author&gt;, 02/2017&lt;p&gt;

&lt;a href="http://www.jst-mfg.com/product/detail_e.php?series=277"&gt;
&lt;img src="http://www.jst-mfg.com/product/images/pict/xh.jpg"  &gt;&lt;/a&gt;&lt;p&gt;
&lt;a href="http://www.jst-mfg.com/product/pdf/eng/eXH.pdf"&gt; Data sheet (PDF)&lt;/a&gt;
</description>
<packages>
<package name="B2B-XH-A" urn="urn:adsk.eagle:footprint:29976312/1" library_version="1" library_locally_modified="yes">
<description>

&lt;b&gt;JST XH series header&lt;/b&gt; 2.50mm pitch disconnectable crimp style connectors, vertical (top entry type), 2 pins&lt;p&gt;

</description>
<pad name="1" x="1.25" y="0" drill="1" diameter="1.6" shape="square"/>
<pad name="2" x="-1.25" y="0" drill="1" diameter="1.6" shape="octagon"/>
<text x="4.298" y="0" size="1.016" layer="25" rot="R270" align="bottom-center">&gt;NAME</text>
<text x="1.25" y="1.27" size="1.016" layer="27" align="bottom-right">&gt;VALUE</text>
<wire x1="-3.75" y1="3.4" x2="3.75" y2="3.4" width="0.1524" layer="21"/>
<wire x1="3.75" y1="3.4" x2="3.75" y2="-2.35" width="0.1524" layer="21"/>
<wire x1="3.75" y1="-2.35" x2="-3.75" y2="-2.35" width="0.1524" layer="21"/>
<wire x1="-3.75" y1="-2.35" x2="-3.75" y2="3.4" width="0.1524" layer="21"/>
<wire x1="-3.75" y1="3.4" x2="3.75" y2="3.4" width="0.1524" layer="51"/>
<wire x1="3.75" y1="3.4" x2="3.75" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="3.75" y1="-2.35" x2="1.6" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="1.6" y1="-2.35" x2="0.6" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="0.6" y1="-2.35" x2="-0.6" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="-0.6" y1="-2.35" x2="-1.6" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="-2.35" x2="-3.75" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="-3.75" y1="-2.35" x2="-3.75" y2="3.4" width="0.1524" layer="51"/>
<wire x1="-3.3" y1="2.95" x2="3.3" y2="2.95" width="0.1524" layer="51"/>
<wire x1="-3.3" y1="2.95" x2="-3.3" y2="-1.9" width="0.1524" layer="51"/>
<wire x1="-3.3" y1="-1.9" x2="-1.6" y2="-1.9" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="-1.9" x2="-0.6" y2="-1.9" width="0.1524" layer="51"/>
<wire x1="-0.6" y1="-1.9" x2="0.6" y2="-1.9" width="0.1524" layer="51"/>
<wire x1="0.6" y1="-1.9" x2="1.6" y2="-1.9" width="0.1524" layer="51"/>
<wire x1="1.6" y1="-1.9" x2="3.3" y2="-1.9" width="0.1524" layer="51"/>
<wire x1="3.3" y1="2.95" x2="3.3" y2="-1.9" width="0.1524" layer="51"/>
<wire x1="1.6" y1="-1.9" x2="1.6" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="-1.9" x2="-1.6" y2="-2.35" width="0.1524" layer="51"/>
<rectangle x1="0.93" y1="-0.32" x2="1.57" y2="0.32" layer="51"/>
<rectangle x1="-1.57" y1="-0.32" x2="-0.93" y2="0.32" layer="51"/>
<polygon width="0.1524" layer="51">
<vertex x="1.25" y="-2.2"/>
<vertex x="0.95" y="-1.7"/>
<vertex x="1.55" y="-1.7"/>
</polygon>
</package>
<package name="B4B-XH-A" urn="urn:adsk.eagle:footprint:29976308/1" library_version="1" library_locally_modified="yes">
<description>

&lt;b&gt;JST XH series header&lt;/b&gt; 2.50mm pitch disconnectable crimp style connectors, vertical (top entry type), 4 pins&lt;p&gt;

</description>
<pad name="1" x="3.75" y="0" drill="0.9" diameter="1.5" shape="square"/>
<pad name="2" x="1.25" y="0" drill="0.9" diameter="1.5" shape="octagon"/>
<pad name="3" x="-1.25" y="0" drill="0.9" diameter="1.5" shape="octagon"/>
<pad name="4" x="-3.75" y="0" drill="0.9" diameter="1.5" shape="octagon"/>
<text x="6.798" y="0" size="1.016" layer="25" rot="R270" align="bottom-center">&gt;NAME</text>
<text x="3.75" y="1.27" size="1.016" layer="27" align="bottom-right">&gt;VALUE</text>
<wire x1="-6.25" y1="3.4" x2="6.25" y2="3.4" width="0.1524" layer="21"/>
<wire x1="6.25" y1="3.4" x2="6.25" y2="-2.35" width="0.1524" layer="21"/>
<wire x1="6.25" y1="-2.35" x2="-6.25" y2="-2.35" width="0.1524" layer="21"/>
<wire x1="-6.25" y1="-2.35" x2="-6.25" y2="3.4" width="0.1524" layer="21"/>
<wire x1="-6.25" y1="3.4" x2="6.25" y2="3.4" width="0.1524" layer="51"/>
<wire x1="6.25" y1="3.4" x2="6.25" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="6.25" y1="-2.35" x2="4.1" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="4.1" y1="-2.35" x2="3.1" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="3.1" y1="-2.35" x2="-3.1" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="-3.1" y1="-2.35" x2="-4.1" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="-4.1" y1="-2.35" x2="-6.25" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="-6.25" y1="-2.35" x2="-6.25" y2="3.4" width="0.1524" layer="51"/>
<wire x1="-5.8" y1="2.95" x2="5.8" y2="2.95" width="0.1524" layer="51"/>
<wire x1="-5.8" y1="2.95" x2="-5.8" y2="-1.9" width="0.1524" layer="51"/>
<wire x1="-5.8" y1="-1.9" x2="-4.1" y2="-1.9" width="0.1524" layer="51"/>
<wire x1="-4.1" y1="-1.9" x2="-3.1" y2="-1.9" width="0.1524" layer="51"/>
<wire x1="-3.1" y1="-1.9" x2="3.1" y2="-1.9" width="0.1524" layer="51"/>
<wire x1="3.1" y1="-1.9" x2="4.1" y2="-1.9" width="0.1524" layer="51"/>
<wire x1="4.1" y1="-1.9" x2="5.8" y2="-1.9" width="0.1524" layer="51"/>
<wire x1="5.8" y1="2.95" x2="5.8" y2="-1.9" width="0.1524" layer="51"/>
<wire x1="4.1" y1="-1.9" x2="4.1" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="3.1" y1="-1.9" x2="3.1" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="-3.1" y1="-1.9" x2="-3.1" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="-4.1" y1="-1.9" x2="-4.1" y2="-2.35" width="0.1524" layer="51"/>
<rectangle x1="3.43" y1="-0.32" x2="4.07" y2="0.32" layer="51"/>
<rectangle x1="0.93" y1="-0.32" x2="1.57" y2="0.32" layer="51"/>
<rectangle x1="-1.57" y1="-0.32" x2="-0.93" y2="0.32" layer="51"/>
<rectangle x1="-4.07" y1="-0.32" x2="-3.43" y2="0.32" layer="51"/>
<polygon width="0.1524" layer="51">
<vertex x="3.75" y="-2.2"/>
<vertex x="3.45" y="-1.7"/>
<vertex x="4.05" y="-1.7"/>
</polygon>
</package>
<package name="B5B-XH-A" urn="urn:adsk.eagle:footprint:29976306/1" library_version="1" library_locally_modified="yes">
<description>

&lt;b&gt;JST XH series header&lt;/b&gt; 2.50mm pitch disconnectable crimp style connectors, vertical (top entry type), 5 pins&lt;p&gt;

</description>
<pad name="1" x="5" y="0" drill="0.9" diameter="1.5" shape="square"/>
<pad name="2" x="2.5" y="0" drill="0.9" diameter="1.5" shape="octagon"/>
<pad name="3" x="0" y="0" drill="0.9" diameter="1.5" shape="octagon"/>
<pad name="4" x="-2.5" y="0" drill="0.9" diameter="1.5" shape="octagon"/>
<pad name="5" x="-5" y="0" drill="0.9" diameter="1.5" shape="octagon"/>
<text x="8.048" y="0" size="1.016" layer="25" rot="R270" align="bottom-center">&gt;NAME</text>
<text x="5" y="1.27" size="1.016" layer="27" align="bottom-right">&gt;VALUE</text>
<wire x1="-7.5" y1="3.4" x2="7.5" y2="3.4" width="0.1524" layer="21"/>
<wire x1="7.5" y1="3.4" x2="7.5" y2="-2.35" width="0.1524" layer="21"/>
<wire x1="7.5" y1="-2.35" x2="-7.5" y2="-2.35" width="0.1524" layer="21"/>
<wire x1="-7.5" y1="-2.35" x2="-7.5" y2="3.4" width="0.1524" layer="21"/>
<wire x1="-7.5" y1="3.4" x2="7.5" y2="3.4" width="0.1524" layer="51"/>
<wire x1="7.5" y1="3.4" x2="7.5" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="7.5" y1="-2.35" x2="5.35" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="5.35" y1="-2.35" x2="4.35" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="4.35" y1="-2.35" x2="-4.35" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="-4.35" y1="-2.35" x2="-5.35" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="-5.35" y1="-2.35" x2="-7.5" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="-7.5" y1="-2.35" x2="-7.5" y2="3.4" width="0.1524" layer="51"/>
<wire x1="-7.05" y1="2.95" x2="7.05" y2="2.95" width="0.1524" layer="51"/>
<wire x1="-7.05" y1="2.95" x2="-7.05" y2="-1.9" width="0.1524" layer="51"/>
<wire x1="-7.05" y1="-1.9" x2="-5.35" y2="-1.9" width="0.1524" layer="51"/>
<wire x1="-5.35" y1="-1.9" x2="-4.35" y2="-1.9" width="0.1524" layer="51"/>
<wire x1="-4.35" y1="-1.9" x2="4.35" y2="-1.9" width="0.1524" layer="51"/>
<wire x1="4.35" y1="-1.9" x2="5.35" y2="-1.9" width="0.1524" layer="51"/>
<wire x1="5.35" y1="-1.9" x2="7.05" y2="-1.9" width="0.1524" layer="51"/>
<wire x1="7.05" y1="2.95" x2="7.05" y2="-1.9" width="0.1524" layer="51"/>
<wire x1="5.35" y1="-1.9" x2="5.35" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="4.35" y1="-1.9" x2="4.35" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="-4.35" y1="-1.9" x2="-4.35" y2="-2.35" width="0.1524" layer="51"/>
<wire x1="-5.35" y1="-1.9" x2="-5.35" y2="-2.35" width="0.1524" layer="51"/>
<rectangle x1="4.68" y1="-0.32" x2="5.32" y2="0.32" layer="51"/>
<rectangle x1="2.18" y1="-0.32" x2="2.82" y2="0.32" layer="51"/>
<rectangle x1="-0.32" y1="-0.32" x2="0.32" y2="0.32" layer="51"/>
<rectangle x1="-2.82" y1="-0.32" x2="-2.18" y2="0.32" layer="51"/>
<rectangle x1="-5.32" y1="-0.32" x2="-4.68" y2="0.32" layer="51"/>
<polygon width="0.1524" layer="51">
<vertex x="5" y="-2.2"/>
<vertex x="4.7" y="-1.7"/>
<vertex x="5.3" y="-1.7"/>
</polygon>
</package>
</packages>
<packages3d>
<package3d name="B2B-XH-A" urn="urn:adsk.eagle:package:29976402/1" type="box" library_version="1" library_locally_modified="yes">
<description>
&lt;b&gt;JST XH series header&lt;/b&gt; 2.50mm pitch disconnectable crimp style connectors, vertical (top entry type), 2 pins&lt;p&gt;

</description>
<packageinstances>
<packageinstance name="B2B-XH-A"/>
</packageinstances>
</package3d>
<package3d name="B4B-XH-A" urn="urn:adsk.eagle:package:29976398/2" type="model" library_version="1" library_locally_modified="yes">
<description>
&lt;b&gt;JST XH series header&lt;/b&gt; 2.50mm pitch disconnectable crimp style connectors, vertical (top entry type), 4 pins&lt;p&gt;

</description>
<packageinstances>
<packageinstance name="B4B-XH-A"/>
</packageinstances>
</package3d>
<package3d name="B5B-XH-A" urn="urn:adsk.eagle:package:29976396/2" type="model" library_version="1" library_locally_modified="yes">
<description>
&lt;b&gt;JST XH series header&lt;/b&gt; 2.50mm pitch disconnectable crimp style connectors, vertical (top entry type), 5 pins&lt;p&gt;

</description>
<packageinstances>
<packageinstance name="B5B-XH-A"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="M_1R02" urn="urn:adsk.eagle:symbol:29976328/1" library_version="1" library_locally_modified="yes">
<wire x1="3.81" y1="-5.08" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="2.54" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="3.81" y2="2.54" width="0.4064" layer="94"/>
<text x="-1.27" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="3.302" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="M_1R04" urn="urn:adsk.eagle:symbol:29976326/1" library_version="1" library_locally_modified="yes">
<wire x1="3.81" y1="-7.62" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<text x="-1.27" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="M_1R05" urn="urn:adsk.eagle:symbol:29976325/1" library_version="1" library_locally_modified="yes">
<wire x1="3.81" y1="-7.62" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<text x="-1.27" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="B2B-XH" urn="urn:adsk.eagle:component:29976460/1" prefix="X" library_version="1" library_locally_modified="yes">
<description>
&lt;b&gt;JST XH series header&lt;/b&gt; 2.50mm pitch disconnectable crimp style connectors, vertical (side entry type), 2 pins&lt;p&gt;
</description>
<gates>
<gate name="G$1" symbol="M_1R02" x="0" y="0"/>
</gates>
<devices>
<device name="-A" package="B2B-XH-A">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:29976402/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-2" package="B2B-XH-A">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:29976402/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="B4B-XH" urn="urn:adsk.eagle:component:29976458/1" locally_modified="yes" prefix="X" library_version="1" library_locally_modified="yes">
<description>
&lt;b&gt;JST XH series header&lt;/b&gt; 2.50mm pitch disconnectable crimp style connectors, vertical (side entry type), 4 pins&lt;p&gt;
</description>
<gates>
<gate name="G$1" symbol="M_1R04" x="0" y="0"/>
</gates>
<devices>
<device name="-A" package="B4B-XH-A">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:29976398/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-2" package="B4B-XH-A">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:29976398/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="B5B-XH" urn="urn:adsk.eagle:component:29976457/1" locally_modified="yes" prefix="X" library_version="1" library_locally_modified="yes">
<description>
&lt;b&gt;JST XH series header&lt;/b&gt; 2.50mm pitch disconnectable crimp style connectors, vertical (side entry type), 5 pins&lt;p&gt;
</description>
<gates>
<gate name="G$1" symbol="M_1R05" x="0" y="0"/>
</gates>
<devices>
<device name="-A" package="B5B-XH-A">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:29976396/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-2" package="B5B-XH-A">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:29976396/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ArduinoNanoV31">
<packages>
<package name="ARDUINO_NANO">
<description>&lt;b&gt;Arduino Nano V3.0&lt;/b&gt;&lt;br&gt;
&lt;p&gt;The Nano was designed and is being produced by Gravitech.&lt;br&gt;

&lt;a href="http://www.gravitech.us/arna30wiatp.html"&gt;Gravitech Arduino Nano V3.0&lt;/a&gt;&lt;/p&gt;</description>
<pad name="1" x="-20.32" y="-7.62" drill="0.8" shape="square"/>
<pad name="2" x="-17.78" y="-7.62" drill="0.8"/>
<pad name="3" x="-15.24" y="-7.62" drill="0.8"/>
<pad name="4" x="-12.7" y="-7.62" drill="0.8"/>
<pad name="5" x="-10.16" y="-7.62" drill="0.8"/>
<pad name="6" x="-7.62" y="-7.62" drill="0.8"/>
<pad name="7" x="-5.08" y="-7.62" drill="0.8"/>
<pad name="8" x="-2.54" y="-7.62" drill="0.8"/>
<pad name="9" x="0" y="-7.62" drill="0.8"/>
<pad name="10" x="2.54" y="-7.62" drill="0.8"/>
<pad name="11" x="5.08" y="-7.62" drill="0.8"/>
<pad name="12" x="7.62" y="-7.62" drill="0.8"/>
<pad name="13" x="10.16" y="-7.62" drill="0.8"/>
<pad name="14" x="12.7" y="-7.62" drill="0.8"/>
<pad name="15" x="15.24" y="-7.62" drill="0.8"/>
<pad name="16" x="15.24" y="7.62" drill="0.8"/>
<pad name="17" x="12.7" y="7.62" drill="0.8"/>
<pad name="18" x="10.16" y="7.62" drill="0.8"/>
<pad name="19" x="7.62" y="7.62" drill="0.8"/>
<pad name="20" x="5.08" y="7.62" drill="0.8"/>
<pad name="21" x="2.54" y="7.62" drill="0.8"/>
<pad name="22" x="0" y="7.62" drill="0.8"/>
<pad name="23" x="-2.54" y="7.62" drill="0.8"/>
<pad name="24" x="-5.08" y="7.62" drill="0.8"/>
<pad name="25" x="-7.62" y="7.62" drill="0.8"/>
<pad name="26" x="-10.16" y="7.62" drill="0.8"/>
<pad name="27" x="-12.7" y="7.62" drill="0.8"/>
<pad name="28" x="-15.24" y="7.62" drill="0.8"/>
<pad name="29" x="-17.78" y="7.62" drill="0.8"/>
<pad name="30" x="-20.32" y="7.62" drill="0.8"/>
<wire x1="-24.13" y1="8.89" x2="19.05" y2="8.89" width="0.127" layer="21"/>
<wire x1="19.05" y1="8.89" x2="19.05" y2="3.81" width="0.127" layer="21"/>
<wire x1="19.05" y1="3.81" x2="19.05" y2="-3.81" width="0.127" layer="21"/>
<wire x1="19.05" y1="-3.81" x2="19.05" y2="-8.89" width="0.127" layer="21"/>
<wire x1="19.05" y1="-8.89" x2="-24.13" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-24.13" y1="-8.89" x2="-24.13" y2="2.54" width="0.127" layer="21"/>
<wire x1="-24.13" y1="2.54" x2="-24.13" y2="8.89" width="0.127" layer="21"/>
<wire x1="-24.13" y1="2.54" x2="-25.4" y2="2.54" width="0.127" layer="21"/>
<wire x1="-25.4" y1="2.54" x2="-25.4" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-19.05" y1="-2.54" x2="-19.05" y2="2.54" width="0.127" layer="21"/>
<wire x1="-19.05" y1="2.54" x2="-24.13" y2="2.54" width="0.127" layer="21"/>
<wire x1="-19.05" y1="-2.54" x2="-25.4" y2="-2.54" width="0.127" layer="21"/>
<text x="-17.78" y="0" size="1.27" layer="21" font="vector">&gt;NAME</text>
<text x="-17.78" y="-2.54" size="1.27" layer="21" font="vector">&gt;VALUE</text>
<circle x="0" y="0" radius="1.79605" width="0.127" layer="21"/>
<text x="3.81" y="-1.27" size="0.8128" layer="21" font="vector" rot="R90">Reset</text>
<text x="-20.32" y="-6.35" size="1.016" layer="21" font="vector">1</text>
<text x="-17.78" y="3.81" size="0.6096" layer="21" font="vector" rot="R180">Mini-B USB</text>
<wire x1="19.05" y1="3.81" x2="13.97" y2="3.81" width="0.127" layer="21"/>
<wire x1="13.97" y1="3.81" x2="13.97" y2="-3.81" width="0.127" layer="21"/>
<wire x1="13.97" y1="-3.81" x2="19.05" y2="-3.81" width="0.127" layer="21"/>
<circle x="17.78" y="-2.54" radius="0.8" width="0.127" layer="21"/>
<circle x="17.78" y="0" radius="0.8" width="0.127" layer="21"/>
<circle x="17.78" y="2.54" radius="0.8" width="0.127" layer="21"/>
<circle x="15.24" y="2.54" radius="0.8" width="0.127" layer="21"/>
<circle x="17.78" y="0" radius="0.8" width="0.127" layer="21"/>
<circle x="15.24" y="0" radius="0.8" width="0.127" layer="21"/>
<circle x="15.24" y="-2.54" radius="0.8" width="0.127" layer="21"/>
<text x="12.7" y="1.27" size="0.8128" layer="21" font="vector" rot="SR270">ICSP</text>
</package>
</packages>
<symbols>
<symbol name="ARDUINO_NANO">
<description>&lt;b&gt;Arduino Nano V3.0&lt;/b&gt;&lt;br&gt;&lt;br&gt;

&lt;b&gt;Overview:&lt;/b&gt;&lt;br&gt;

The Arduino Nano is a small, complete, and breadboard-friendly board based on the ATmega328 (Arduino Nano 3.x) or ATmega168 (Arduino Nano 2.x). It has more or less the same functionality of the Arduino Duemilanove, but in a different package. It lacks only a DC power jack, and works with a Mini-B USB cable instead of a standard one.&lt;br&gt;
The Nano was designed and is being produced by Gravitech.&lt;br&gt;&lt;br&gt;

&lt;b&gt;Specifications:&lt;/b&gt;
&lt;table border="1" style="width:auto"&gt;
  &lt;tr&gt;
    &lt;td&gt;Microcontroller&lt;/td&gt;
    &lt;td&gt;Atmel ATmega168 or ATmega328&lt;/td&gt;		
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;Operating Voltage (logic level)&lt;/td&gt;
    &lt;td&gt;5 V&lt;/td&gt;		
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;Input Voltage (recommended)&lt;/td&gt;
    &lt;td&gt;7-12 V&lt;/td&gt;
  &lt;tr&gt;
    &lt;td&gt;Input Voltage (limits)&lt;/td&gt;
    &lt;td&gt;6-20 V&lt;/td&gt;		
  &lt;tr&gt;
    &lt;td&gt;Digital I/O Pins&lt;/td&gt;
    &lt;td&gt;14 (of which 6 provide PWM output)&lt;/td&gt;		
  &lt;tr&gt;
    &lt;td&gt;Analog Input Pins&lt;/td&gt;
    &lt;td&gt;8&lt;/td&gt;
  &lt;tr&gt;
    &lt;td&gt;DC Current per I/O Pin&lt;/td&gt;
    &lt;td&gt;40 mA&lt;/td&gt;		
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;Flash Memory&lt;/td&gt;
    &lt;td&gt;16 KB (ATmega168) or 32 KB (ATmega328) of which 2 KB used by bootloader&lt;/td&gt;		
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;SRAM&lt;/td&gt;
    &lt;td&gt;1 KB (ATmega168) or 2 KB (ATmega328)&lt;/td&gt;		
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;EEPROM&lt;/td&gt;
    &lt;td&gt;512 bytes (ATmega168) or 1 KB (ATmega328)&lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;Clock Speed&lt;/td&gt;
    &lt;td&gt;16 MHz&lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;Dimensions&lt;/td&gt;
    &lt;td&gt;0.73" x 1.70"&lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;Length&lt;/td&gt;
    &lt;td&gt;45 mm&lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;Width&lt;/td&gt;
    &lt;td&gt;18 mm&lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;Weigth&lt;/td&gt;
    &lt;td&gt;5 g&lt;/td&gt;
  &lt;/tr&gt;
&lt;/table&gt;
&lt;br&gt;&lt;br&gt;

&lt;b&gt;Power:&lt;/b&gt;&lt;br&gt;

The Arduino Nano can be powered via the Mini-B USB connection, 6-20V unregulated external power supply (pin 30), or 5V regulated external power supply (pin 27).&lt;br&gt;
The power source is automatically selected to the highest voltage source.&lt;br&gt;&lt;br&gt;

&lt;b&gt;Memory:&lt;/b&gt;&lt;br&gt;

The ATmega168 has 16 KB of flash memory for storing code (of which 2 KB is used for the bootloader); the ATmega328 has 32 KB, (also with 2 KB used for the bootloader).&lt;br&gt;
The ATmega168 has 1 KB of SRAM and 512 bytes of EEPROM (which can be read and written with the EEPROM library); the ATmega328 has 2 KB of SRAM and 1 KB of EEPROM.&lt;br&gt;&lt;br&gt;

&lt;b&gt;Input and Output:&lt;/b&gt;&lt;br&gt;

Each of the 14 digital pins on the Nano can be used as an input or output, using pinMode(), digitalWrite(), and digitalRead() functions.&lt;br&gt;
They operate at 5 volts.&lt;br&gt;
Each pin can provide or receive a maximum of 40 mA and has an internal pull-up resistor (disconnected by default) of 20-50 kOhms. In addition, some pins have specialized functions.&lt;br&gt;&lt;br&gt;

&lt;a href="https://www.arduino.cc/en/Main/ArduinoBoardNano"&gt;Visit Arduino - ArduinoBoardNano&lt;/a&gt;</description>
<wire x1="-15.24" y1="-25.4" x2="-15.24" y2="15.24" width="0.254" layer="94"/>
<wire x1="-15.24" y1="15.24" x2="-5.08" y2="15.24" width="0.254" layer="94"/>
<wire x1="-5.08" y1="15.24" x2="5.08" y2="15.24" width="0.254" layer="94"/>
<wire x1="5.08" y1="15.24" x2="15.24" y2="15.24" width="0.254" layer="94"/>
<wire x1="15.24" y1="15.24" x2="15.24" y2="-25.4" width="0.254" layer="94"/>
<wire x1="15.24" y1="-25.4" x2="-15.24" y2="-25.4" width="0.254" layer="94"/>
<pin name="TX1" x="-20.32" y="12.7" length="middle"/>
<pin name="RX0" x="-20.32" y="10.16" length="middle"/>
<pin name="!RESET@1" x="-20.32" y="7.62" length="middle" direction="in" function="dot"/>
<pin name="GND@1" x="-20.32" y="5.08" length="middle" direction="pwr"/>
<pin name="D2" x="-20.32" y="2.54" length="middle"/>
<pin name="D3" x="-20.32" y="0" length="middle"/>
<pin name="D4" x="-20.32" y="-2.54" length="middle"/>
<pin name="D5" x="-20.32" y="-5.08" length="middle"/>
<pin name="D6" x="-20.32" y="-7.62" length="middle"/>
<pin name="D7" x="-20.32" y="-10.16" length="middle"/>
<pin name="D8" x="-20.32" y="-12.7" length="middle"/>
<pin name="D9" x="-20.32" y="-15.24" length="middle"/>
<pin name="D10" x="-20.32" y="-17.78" length="middle"/>
<pin name="D11" x="-20.32" y="-20.32" length="middle"/>
<pin name="D12" x="-20.32" y="-22.86" length="middle"/>
<pin name="D13" x="20.32" y="-22.86" length="middle" rot="R180"/>
<pin name="3V3" x="20.32" y="-20.32" length="middle" direction="out" rot="R180"/>
<pin name="AREF" x="20.32" y="-17.78" length="middle" direction="in" rot="R180"/>
<pin name="A0" x="20.32" y="-15.24" length="middle" rot="R180"/>
<pin name="A1" x="20.32" y="-12.7" length="middle" rot="R180"/>
<pin name="A2" x="20.32" y="-10.16" length="middle" rot="R180"/>
<pin name="A3" x="20.32" y="-7.62" length="middle" rot="R180"/>
<pin name="A4" x="20.32" y="-5.08" length="middle" rot="R180"/>
<pin name="A5" x="20.32" y="-2.54" length="middle" rot="R180"/>
<pin name="A6" x="20.32" y="0" length="middle" rot="R180"/>
<pin name="A7" x="20.32" y="2.54" length="middle" rot="R180"/>
<pin name="5V" x="20.32" y="5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="!RESET@2" x="20.32" y="7.62" length="middle" direction="in" function="dot" rot="R180"/>
<pin name="GND@2" x="20.32" y="10.16" length="middle" direction="pwr" rot="R180"/>
<pin name="VIN" x="20.32" y="12.7" length="middle" direction="pwr" rot="R180"/>
<wire x1="2.54" y1="-20.32" x2="-2.54" y2="-20.32" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-20.32" x2="-2.54" y2="-26.67" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-26.67" x2="2.54" y2="-26.67" width="0.254" layer="94"/>
<wire x1="2.54" y1="-26.67" x2="2.54" y2="-20.32" width="0.254" layer="94"/>
<text x="-2.54" y="-17.78" size="1.4224" layer="94" font="vector">Mini-B
 USB</text>
<circle x="0" y="0" radius="2.54" width="0.254" layer="94"/>
<text x="-2.54" y="-7.62" size="1.4224" layer="94" font="vector">RESET
BUTTON</text>
<text x="-15.24" y="-30.48" size="1.778" layer="95">&gt;NAME</text>
<text x="-15.24" y="-33.02" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="-5.08" y1="15.24" x2="-5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="-5.08" y1="10.16" x2="5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="15.24" width="0.254" layer="94"/>
<text x="-2.54" y="7.62" size="1.6764" layer="94" font="vector">ICSP</text>
<circle x="-2.54" y="11.43" radius="0.762" width="0.254" layer="94"/>
<circle x="0" y="13.97" radius="0.762" width="0.254" layer="94"/>
<circle x="2.54" y="13.97" radius="0.762" width="0.254" layer="94"/>
<circle x="-2.54" y="13.97" radius="0.762" width="0.254" layer="94"/>
<circle x="2.54" y="11.43" radius="0.762" width="0.254" layer="94"/>
<circle x="0" y="11.43" radius="0.762" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ARDUINO_NANO" prefix="ARDUINO_NANO" uservalue="yes">
<description>&lt;b&gt;Arduino Nano V3.0&lt;/b&gt;&lt;br&gt;&lt;br&gt;

&lt;b&gt;Overview:&lt;/b&gt;&lt;br&gt;

&lt;p&gt;The Arduino Nano is a small, complete, and breadboard-friendly board based on the ATmega328 (Arduino Nano 3.x) or ATmega168 (Arduino Nano 2.x). &lt;br&gt;It has more or less the same functionality of the Arduino Duemilanove, but in a different package.&lt;br&gt;
It lacks only a DC power jack, and works with a Mini-B USB cable instead of a standard one.&lt;br&gt;
The Nano was designed and is being produced by Gravitech.&lt;/p&gt;&lt;br&gt;

&lt;b&gt;Specifications:&lt;/b&gt;
&lt;table border="1" style="width:auto"&gt;
  &lt;tr&gt;
    &lt;td&gt;Microcontroller&lt;/td&gt;
    &lt;td&gt;Atmel ATmega168 or ATmega328&lt;/td&gt;		
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;Operating Voltage (logic level)&lt;/td&gt;
    &lt;td&gt;5 V&lt;/td&gt;		
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;Input Voltage (recommended)&lt;/td&gt;
    &lt;td&gt;7-12 V&lt;/td&gt;
  &lt;tr&gt;
    &lt;td&gt;Input Voltage (limits)&lt;/td&gt;
    &lt;td&gt;6-20 V&lt;/td&gt;		
  &lt;tr&gt;
    &lt;td&gt;Digital I/O Pins&lt;/td&gt;
    &lt;td&gt;14 (of which 6 provide PWM output)&lt;/td&gt;		
  &lt;tr&gt;
    &lt;td&gt;Analog Input Pins&lt;/td&gt;
    &lt;td&gt;8&lt;/td&gt;
  &lt;tr&gt;
    &lt;td&gt;DC Current per I/O Pin&lt;/td&gt;
    &lt;td&gt;40 mA&lt;/td&gt;		
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;Flash Memory&lt;/td&gt;
    &lt;td&gt;16 KB (ATmega168) or 32 KB (ATmega328) of which 2 KB used by bootloader&lt;/td&gt;		
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;SRAM&lt;/td&gt;
    &lt;td&gt;1 KB (ATmega168) or 2 KB (ATmega328)&lt;/td&gt;		
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;EEPROM&lt;/td&gt;
    &lt;td&gt;512 bytes (ATmega168) or 1 KB (ATmega328)&lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;Clock Speed&lt;/td&gt;
    &lt;td&gt;16 MHz&lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;Dimensions&lt;/td&gt;
    &lt;td&gt;0.73" x 1.70"&lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;Length&lt;/td&gt;
    &lt;td&gt;45 mm&lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;Width&lt;/td&gt;
    &lt;td&gt;18 mm&lt;/td&gt;
  &lt;/tr&gt;
  &lt;tr&gt;
    &lt;td&gt;Weigth&lt;/td&gt;
    &lt;td&gt;5 g&lt;/td&gt;
  &lt;/tr&gt;
&lt;/table&gt;
&lt;br&gt;&lt;br&gt;

&lt;b&gt;Power:&lt;/b&gt;&lt;br&gt;

&lt;p&gt;The Arduino Nano can be powered via the Mini-B USB connection, 6-20V unregulated external power supply (pin 30), or 5V regulated external power supply (pin 27).&lt;br&gt;
The power source is automatically selected to the highest voltage source.&lt;/p&gt;&lt;br&gt;

&lt;b&gt;Memory:&lt;/b&gt;&lt;br&gt;

&lt;p&gt;The ATmega168 has 16 KB of flash memory for storing code (of which 2 KB is used for the bootloader); the ATmega328 has 32 KB, (also with 2 KB used for the bootloader).&lt;br&gt;
The ATmega168 has 1 KB of SRAM and 512 bytes of EEPROM (which can be read and written with the EEPROM library); the ATmega328 has 2 KB of SRAM and 1 KB of EEPROM.&lt;/p&gt;&lt;br&gt;

&lt;b&gt;Input and Output:&lt;/b&gt;&lt;br&gt;

&lt;p&gt;Each of the 14 digital pins on the Nano can be used as an input or output, using pinMode(), digitalWrite(), and digitalRead() functions.&lt;br&gt;
They operate at 5 volts.&lt;br&gt;
Each pin can provide or receive a maximum of 40 mA and has an internal pull-up resistor (disconnected by default) of 20-50 kOhms. In addition, some pins have specialized functions.&lt;/p&gt;&lt;br&gt;

&lt;a href="https://www.arduino.cc/en/Main/ArduinoBoardNano"&gt;Visit Arduino - ArduinoBoardNano&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ARDUINO_NANO" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ARDUINO_NANO">
<connects>
<connect gate="G$1" pin="!RESET@1" pad="18"/>
<connect gate="G$1" pin="!RESET@2" pad="13"/>
<connect gate="G$1" pin="3V3" pad="2"/>
<connect gate="G$1" pin="5V" pad="12"/>
<connect gate="G$1" pin="A0" pad="4"/>
<connect gate="G$1" pin="A1" pad="5"/>
<connect gate="G$1" pin="A2" pad="6"/>
<connect gate="G$1" pin="A3" pad="7"/>
<connect gate="G$1" pin="A4" pad="8"/>
<connect gate="G$1" pin="A5" pad="9"/>
<connect gate="G$1" pin="A6" pad="10"/>
<connect gate="G$1" pin="A7" pad="11"/>
<connect gate="G$1" pin="AREF" pad="3"/>
<connect gate="G$1" pin="D10" pad="28"/>
<connect gate="G$1" pin="D11" pad="29"/>
<connect gate="G$1" pin="D12" pad="30"/>
<connect gate="G$1" pin="D13" pad="1"/>
<connect gate="G$1" pin="D2" pad="20"/>
<connect gate="G$1" pin="D3" pad="21"/>
<connect gate="G$1" pin="D4" pad="22"/>
<connect gate="G$1" pin="D5" pad="23"/>
<connect gate="G$1" pin="D6" pad="24"/>
<connect gate="G$1" pin="D7" pad="25"/>
<connect gate="G$1" pin="D8" pad="26"/>
<connect gate="G$1" pin="D9" pad="27"/>
<connect gate="G$1" pin="GND@1" pad="19"/>
<connect gate="G$1" pin="GND@2" pad="14"/>
<connect gate="G$1" pin="RX0" pad="17"/>
<connect gate="G$1" pin="TX1" pad="16"/>
<connect gate="G$1" pin="VIN" pad="15"/>
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
<part name="IC1" library="uln-udn" library_urn="urn:adsk.eagle:library:407" deviceset="ULN2003A" device="N" package3d_urn="urn:adsk.eagle:package:922/2"/>
<part name="IC2" library="uln-udn" library_urn="urn:adsk.eagle:library:407" deviceset="ULN2003A" device="N" package3d_urn="urn:adsk.eagle:package:922/2"/>
<part name="P+1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="P+8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="P+2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="P+3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="P+4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="P+5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="P+6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="P+7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="X1" library="con-JST XH" library_urn="urn:adsk.eagle:library:29976298" deviceset="B2B-XH" device="-2" package3d_urn="urn:adsk.eagle:package:29976402/1"/>
<part name="X2" library="con-JST XH" library_urn="urn:adsk.eagle:library:29976298" deviceset="B2B-XH" device="-2" package3d_urn="urn:adsk.eagle:package:29976402/1"/>
<part name="GND9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND11" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND12" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="X3" library="con-JST XH" library_urn="urn:adsk.eagle:library:29976298" deviceset="B4B-XH" device="-2" package3d_urn="urn:adsk.eagle:package:29976398/2"/>
<part name="X4" library="con-JST XH" library_urn="urn:adsk.eagle:library:29976298" deviceset="B4B-XH" device="-2" package3d_urn="urn:adsk.eagle:package:29976398/2"/>
<part name="X5" library="con-JST XH" library_urn="urn:adsk.eagle:library:29976298" deviceset="B4B-XH" device="-2" package3d_urn="urn:adsk.eagle:package:29976398/2"/>
<part name="X6" library="con-JST XH" library_urn="urn:adsk.eagle:library:29976298" deviceset="B4B-XH" device="-2" package3d_urn="urn:adsk.eagle:package:29976398/2"/>
<part name="X7" library="con-JST XH" library_urn="urn:adsk.eagle:library:29976298" deviceset="B4B-XH" device="-2" package3d_urn="urn:adsk.eagle:package:29976398/2"/>
<part name="X8" library="con-JST XH" library_urn="urn:adsk.eagle:library:29976298" deviceset="B4B-XH" device="-2" package3d_urn="urn:adsk.eagle:package:29976398/2"/>
<part name="X9" library="con-JST XH" library_urn="urn:adsk.eagle:library:29976298" deviceset="B5B-XH" device="-2" package3d_urn="urn:adsk.eagle:package:29976396/2"/>
<part name="X10" library="con-JST XH" library_urn="urn:adsk.eagle:library:29976298" deviceset="B5B-XH" device="-2" package3d_urn="urn:adsk.eagle:package:29976396/2"/>
<part name="X11" library="con-JST XH" library_urn="urn:adsk.eagle:library:29976298" deviceset="B2B-XH" device="-2" package3d_urn="urn:adsk.eagle:package:29976402/1"/>
<part name="X12" library="con-JST XH" library_urn="urn:adsk.eagle:library:29976298" deviceset="B2B-XH" device="-2" package3d_urn="urn:adsk.eagle:package:29976402/1"/>
<part name="X13" library="con-JST XH" library_urn="urn:adsk.eagle:library:29976298" deviceset="B2B-XH" device="-2" package3d_urn="urn:adsk.eagle:package:29976402/1"/>
<part name="X14" library="con-JST XH" library_urn="urn:adsk.eagle:library:29976298" deviceset="B2B-XH" device="-2" package3d_urn="urn:adsk.eagle:package:29976402/1"/>
<part name="GND10" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND13" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND14" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND15" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="ARDUINO_NANO2" library="ArduinoNanoV31" deviceset="ARDUINO_NANO" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="A" x="162.56" y="66.04" smashed="yes">
<attribute name="NAME" x="154.94" y="76.962" size="1.778" layer="95"/>
<attribute name="VALUE" x="154.94" y="50.8" size="1.778" layer="96"/>
</instance>
<instance part="IC2" gate="A" x="162.56" y="93.98" smashed="yes">
<attribute name="NAME" x="154.94" y="104.902" size="1.778" layer="95"/>
<attribute name="VALUE" x="154.94" y="78.74" size="1.778" layer="96"/>
</instance>
<instance part="P+1" gate="1" x="193.04" y="83.82" smashed="yes">
<attribute name="VALUE" x="195.58" y="76.2" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND1" gate="1" x="149.86" y="81.28" smashed="yes">
<attribute name="VALUE" x="147.32" y="78.74" size="1.778" layer="96"/>
</instance>
<instance part="GND2" gate="1" x="139.7" y="53.34" smashed="yes">
<attribute name="VALUE" x="137.16" y="50.8" size="1.778" layer="96"/>
</instance>
<instance part="GND3" gate="1" x="20.32" y="76.2" smashed="yes">
<attribute name="VALUE" x="22.86" y="78.74" size="1.778" layer="96"/>
</instance>
<instance part="GND4" gate="1" x="20.32" y="60.96" smashed="yes">
<attribute name="VALUE" x="22.86" y="63.5" size="1.778" layer="96"/>
</instance>
<instance part="GND5" gate="1" x="20.32" y="45.72" smashed="yes">
<attribute name="VALUE" x="22.86" y="48.26" size="1.778" layer="96"/>
</instance>
<instance part="GND6" gate="1" x="20.32" y="30.48" smashed="yes">
<attribute name="VALUE" x="22.86" y="33.02" size="1.778" layer="96"/>
</instance>
<instance part="GND7" gate="1" x="20.32" y="15.24" smashed="yes">
<attribute name="VALUE" x="22.86" y="17.78" size="1.778" layer="96"/>
</instance>
<instance part="GND8" gate="1" x="20.32" y="0" smashed="yes">
<attribute name="VALUE" x="22.86" y="2.54" size="1.778" layer="96"/>
</instance>
<instance part="P+8" gate="1" x="45.72" y="55.88" smashed="yes">
<attribute name="VALUE" x="45.72" y="48.26" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+2" gate="1" x="7.62" y="86.36" smashed="yes">
<attribute name="VALUE" x="7.62" y="78.74" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+3" gate="1" x="7.62" y="71.12" smashed="yes">
<attribute name="VALUE" x="7.62" y="63.5" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+4" gate="1" x="7.62" y="58.42" smashed="yes">
<attribute name="VALUE" x="7.62" y="50.8" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+5" gate="1" x="7.62" y="43.18" smashed="yes">
<attribute name="VALUE" x="7.62" y="35.56" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+6" gate="1" x="7.62" y="27.94" smashed="yes">
<attribute name="VALUE" x="7.62" y="20.32" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+7" gate="1" x="7.62" y="12.7" smashed="yes">
<attribute name="VALUE" x="7.62" y="5.08" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="X1" gate="G$1" x="76.2" y="30.48" smashed="yes" rot="R180">
<attribute name="VALUE" x="77.47" y="38.1" size="1.778" layer="96" rot="R180"/>
<attribute name="NAME" x="77.47" y="27.178" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X2" gate="G$1" x="76.2" y="20.32" smashed="yes" rot="R180">
<attribute name="VALUE" x="77.47" y="27.94" size="1.778" layer="96" rot="R180"/>
<attribute name="NAME" x="77.47" y="17.018" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="GND9" gate="1" x="45.72" y="43.18" smashed="yes">
<attribute name="VALUE" x="43.18" y="40.64" size="1.778" layer="96"/>
</instance>
<instance part="GND11" gate="1" x="66.04" y="27.94" smashed="yes">
<attribute name="VALUE" x="63.5" y="25.4" size="1.778" layer="96"/>
</instance>
<instance part="GND12" gate="1" x="66.04" y="17.78" smashed="yes">
<attribute name="VALUE" x="63.5" y="15.24" size="1.778" layer="96"/>
</instance>
<instance part="X3" gate="G$1" x="17.78" y="86.36" smashed="yes" rot="R270">
<attribute name="VALUE" x="7.62" y="87.63" size="1.778" layer="96" rot="R270"/>
<attribute name="NAME" x="23.622" y="87.63" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="X4" gate="G$1" x="17.78" y="71.12" smashed="yes" rot="R270">
<attribute name="VALUE" x="7.62" y="72.39" size="1.778" layer="96" rot="R270"/>
<attribute name="NAME" x="23.622" y="72.39" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="X5" gate="G$1" x="17.78" y="55.88" smashed="yes" rot="R270">
<attribute name="VALUE" x="7.62" y="57.15" size="1.778" layer="96" rot="R270"/>
<attribute name="NAME" x="23.622" y="57.15" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="X6" gate="G$1" x="17.78" y="40.64" smashed="yes" rot="R270">
<attribute name="VALUE" x="7.62" y="41.91" size="1.778" layer="96" rot="R270"/>
<attribute name="NAME" x="23.622" y="41.91" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="X7" gate="G$1" x="17.78" y="25.4" smashed="yes" rot="R270">
<attribute name="VALUE" x="7.62" y="26.67" size="1.778" layer="96" rot="R270"/>
<attribute name="NAME" x="23.622" y="26.67" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="X8" gate="G$1" x="17.78" y="10.16" smashed="yes" rot="R270">
<attribute name="VALUE" x="7.62" y="11.43" size="1.778" layer="96" rot="R270"/>
<attribute name="NAME" x="23.622" y="11.43" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="X9" gate="G$1" x="187.96" y="88.9" smashed="yes" rot="R180">
<attribute name="VALUE" x="189.23" y="99.06" size="1.778" layer="96" rot="R180"/>
<attribute name="NAME" x="189.23" y="80.518" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X10" gate="G$1" x="187.96" y="60.96" smashed="yes" rot="R180">
<attribute name="VALUE" x="189.23" y="71.12" size="1.778" layer="96" rot="R180"/>
<attribute name="NAME" x="189.23" y="52.578" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X11" gate="G$1" x="96.52" y="124.46" smashed="yes" rot="R270">
<attribute name="VALUE" x="88.9" y="125.73" size="1.778" layer="96" rot="R270"/>
<attribute name="NAME" x="99.822" y="125.73" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="X12" gate="G$1" x="109.22" y="124.46" smashed="yes" rot="R270">
<attribute name="VALUE" x="101.6" y="125.73" size="1.778" layer="96" rot="R270"/>
<attribute name="NAME" x="112.522" y="125.73" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="X13" gate="G$1" x="121.92" y="124.46" smashed="yes" rot="R270">
<attribute name="VALUE" x="114.3" y="125.73" size="1.778" layer="96" rot="R270"/>
<attribute name="NAME" x="125.222" y="125.73" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="X14" gate="G$1" x="134.62" y="124.46" smashed="yes" rot="R270">
<attribute name="VALUE" x="127" y="125.73" size="1.778" layer="96" rot="R270"/>
<attribute name="NAME" x="137.922" y="125.73" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="GND10" gate="1" x="96.52" y="111.76" smashed="yes">
<attribute name="VALUE" x="93.98" y="109.22" size="1.778" layer="96"/>
</instance>
<instance part="GND13" gate="1" x="109.22" y="111.76" smashed="yes">
<attribute name="VALUE" x="106.68" y="109.22" size="1.778" layer="96"/>
</instance>
<instance part="GND14" gate="1" x="121.92" y="111.76" smashed="yes">
<attribute name="VALUE" x="119.38" y="109.22" size="1.778" layer="96"/>
</instance>
<instance part="GND15" gate="1" x="134.62" y="111.76" smashed="yes">
<attribute name="VALUE" x="132.08" y="109.22" size="1.778" layer="96"/>
</instance>
<instance part="ARDUINO_NANO2" gate="G$1" x="106.68" y="60.96" smashed="yes" rot="R180">
<attribute name="NAME" x="121.92" y="91.44" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="121.92" y="93.98" size="1.778" layer="96" rot="R180"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$2" class="0">
<segment>
<pinref part="IC1" gate="A" pin="O7"/>
<wire x1="175.26" y1="58.42" x2="180.34" y2="58.42" width="0.1524" layer="91"/>
<pinref part="X10" gate="G$1" pin="4"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="IC1" gate="A" pin="O6"/>
<wire x1="180.34" y1="60.96" x2="175.26" y2="60.96" width="0.1524" layer="91"/>
<pinref part="X10" gate="G$1" pin="3"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="IC1" gate="A" pin="O5"/>
<wire x1="175.26" y1="63.5" x2="180.34" y2="63.5" width="0.1524" layer="91"/>
<pinref part="X10" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="IC1" gate="A" pin="O4"/>
<wire x1="180.34" y1="66.04" x2="175.26" y2="66.04" width="0.1524" layer="91"/>
<pinref part="X10" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="IC2" gate="A" pin="O7"/>
<wire x1="175.26" y1="86.36" x2="180.34" y2="86.36" width="0.1524" layer="91"/>
<pinref part="X9" gate="G$1" pin="4"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="IC2" gate="A" pin="O6"/>
<wire x1="180.34" y1="88.9" x2="175.26" y2="88.9" width="0.1524" layer="91"/>
<pinref part="X9" gate="G$1" pin="3"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="IC2" gate="A" pin="O5"/>
<wire x1="175.26" y1="91.44" x2="180.34" y2="91.44" width="0.1524" layer="91"/>
<pinref part="X9" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="IC2" gate="A" pin="O4"/>
<wire x1="180.34" y1="93.98" x2="175.26" y2="93.98" width="0.1524" layer="91"/>
<pinref part="X9" gate="G$1" pin="1"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="IC2" gate="A" pin="CD+"/>
<wire x1="175.26" y1="83.82" x2="177.8" y2="83.82" width="0.1524" layer="91"/>
<wire x1="177.8" y1="83.82" x2="177.8" y2="78.74" width="0.1524" layer="91"/>
<junction x="177.8" y="83.82"/>
<pinref part="IC1" gate="A" pin="CD+"/>
<wire x1="175.26" y1="55.88" x2="177.8" y2="55.88" width="0.1524" layer="91"/>
<wire x1="177.8" y1="55.88" x2="177.8" y2="50.8" width="0.1524" layer="91"/>
<junction x="177.8" y="55.88"/>
<wire x1="177.8" y1="50.8" x2="193.04" y2="50.8" width="0.1524" layer="91"/>
<wire x1="193.04" y1="50.8" x2="193.04" y2="78.74" width="0.1524" layer="91"/>
<wire x1="177.8" y1="78.74" x2="193.04" y2="78.74" width="0.1524" layer="91"/>
<wire x1="193.04" y1="78.74" x2="193.04" y2="81.28" width="0.1524" layer="91"/>
<junction x="193.04" y="78.74"/>
<pinref part="P+1" gate="1" pin="+5V"/>
<wire x1="177.8" y1="83.82" x2="180.34" y2="83.82" width="0.1524" layer="91"/>
<wire x1="177.8" y1="55.88" x2="180.34" y2="55.88" width="0.1524" layer="91"/>
<pinref part="X9" gate="G$1" pin="5"/>
<pinref part="X10" gate="G$1" pin="5"/>
</segment>
<segment>
<wire x1="48.26" y1="55.88" x2="48.26" y2="53.34" width="0.1524" layer="91"/>
<wire x1="48.26" y1="53.34" x2="45.72" y2="53.34" width="0.1524" layer="91"/>
<pinref part="P+8" gate="1" pin="+5V"/>
<wire x1="48.26" y1="55.88" x2="86.36" y2="55.88" width="0.1524" layer="91"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="5V"/>
</segment>
<segment>
<wire x1="12.7" y1="2.54" x2="7.62" y2="2.54" width="0.1524" layer="91"/>
<pinref part="P+7" gate="1" pin="+5V"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="10.16" width="0.1524" layer="91"/>
<pinref part="X8" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="12.7" y1="17.78" x2="7.62" y2="17.78" width="0.1524" layer="91"/>
<pinref part="P+6" gate="1" pin="+5V"/>
<wire x1="7.62" y1="17.78" x2="7.62" y2="25.4" width="0.1524" layer="91"/>
<pinref part="X7" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="12.7" y1="33.02" x2="7.62" y2="33.02" width="0.1524" layer="91"/>
<pinref part="P+5" gate="1" pin="+5V"/>
<wire x1="7.62" y1="33.02" x2="7.62" y2="40.64" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="12.7" y1="48.26" x2="7.62" y2="48.26" width="0.1524" layer="91"/>
<pinref part="P+4" gate="1" pin="+5V"/>
<wire x1="7.62" y1="48.26" x2="7.62" y2="55.88" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="12.7" y1="63.5" x2="7.62" y2="63.5" width="0.1524" layer="91"/>
<pinref part="P+3" gate="1" pin="+5V"/>
<wire x1="7.62" y1="63.5" x2="7.62" y2="68.58" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="12.7" y1="78.74" x2="7.62" y2="78.74" width="0.1524" layer="91"/>
<pinref part="P+2" gate="1" pin="+5V"/>
<wire x1="7.62" y1="78.74" x2="7.62" y2="83.82" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="IC1" gate="A" pin="I7"/>
<wire x1="127" y1="58.42" x2="149.86" y2="58.42" width="0.1524" layer="91"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="D2"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="IC1" gate="A" pin="I6"/>
<wire x1="149.86" y1="60.96" x2="127" y2="60.96" width="0.1524" layer="91"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="D3"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="IC1" gate="A" pin="I5"/>
<wire x1="127" y1="63.5" x2="149.86" y2="63.5" width="0.1524" layer="91"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="D4"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="IC1" gate="A" pin="I4"/>
<wire x1="149.86" y1="66.04" x2="127" y2="66.04" width="0.1524" layer="91"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="D5"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<wire x1="127" y1="76.2" x2="137.16" y2="76.2" width="0.1524" layer="91"/>
<wire x1="137.16" y1="76.2" x2="137.16" y2="93.98" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="I4"/>
<wire x1="137.16" y1="93.98" x2="149.86" y2="93.98" width="0.1524" layer="91"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="D9"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="IC2" gate="A" pin="I5"/>
<wire x1="149.86" y1="91.44" x2="139.7" y2="91.44" width="0.1524" layer="91"/>
<wire x1="139.7" y1="91.44" x2="139.7" y2="73.66" width="0.1524" layer="91"/>
<wire x1="139.7" y1="73.66" x2="127" y2="73.66" width="0.1524" layer="91"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="D8"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<wire x1="127" y1="71.12" x2="142.24" y2="71.12" width="0.1524" layer="91"/>
<wire x1="142.24" y1="71.12" x2="142.24" y2="88.9" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="I6"/>
<wire x1="142.24" y1="88.9" x2="149.86" y2="88.9" width="0.1524" layer="91"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="D7"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="IC2" gate="A" pin="I7"/>
<wire x1="149.86" y1="86.36" x2="144.78" y2="86.36" width="0.1524" layer="91"/>
<wire x1="144.78" y1="86.36" x2="144.78" y2="68.58" width="0.1524" layer="91"/>
<wire x1="144.78" y1="68.58" x2="127" y2="68.58" width="0.1524" layer="91"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="D6"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="IC2" gate="A" pin="GND"/>
<pinref part="GND1" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="GND"/>
<wire x1="149.86" y1="55.88" x2="139.7" y2="55.88" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="139.7" y1="55.88" x2="127" y2="55.88" width="0.1524" layer="91"/>
<junction x="139.7" y="55.88"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="GND@1"/>
</segment>
<segment>
<pinref part="X1" gate="G$1" pin="2"/>
<pinref part="GND11" gate="1" pin="GND"/>
<wire x1="68.58" y1="30.48" x2="66.04" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X2" gate="G$1" pin="2"/>
<pinref part="GND12" gate="1" pin="GND"/>
<wire x1="68.58" y1="20.32" x2="66.04" y2="20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND3" gate="1" pin="GND"/>
<pinref part="X3" gate="G$1" pin="4"/>
</segment>
<segment>
<pinref part="GND4" gate="1" pin="GND"/>
<pinref part="X4" gate="G$1" pin="4"/>
</segment>
<segment>
<pinref part="GND5" gate="1" pin="GND"/>
<pinref part="X5" gate="G$1" pin="4"/>
</segment>
<segment>
<pinref part="GND6" gate="1" pin="GND"/>
<pinref part="X6" gate="G$1" pin="4"/>
</segment>
<segment>
<pinref part="GND7" gate="1" pin="GND"/>
<pinref part="X7" gate="G$1" pin="4"/>
</segment>
<segment>
<pinref part="GND8" gate="1" pin="GND"/>
<pinref part="X8" gate="G$1" pin="4"/>
</segment>
<segment>
<pinref part="X11" gate="G$1" pin="2"/>
<pinref part="GND10" gate="1" pin="GND"/>
<wire x1="96.52" y1="116.84" x2="96.52" y2="114.3" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X12" gate="G$1" pin="2"/>
<pinref part="GND13" gate="1" pin="GND"/>
<wire x1="109.22" y1="116.84" x2="109.22" y2="114.3" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X13" gate="G$1" pin="2"/>
<pinref part="GND14" gate="1" pin="GND"/>
<wire x1="121.92" y1="116.84" x2="121.92" y2="114.3" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X14" gate="G$1" pin="2"/>
<pinref part="GND15" gate="1" pin="GND"/>
<wire x1="134.62" y1="116.84" x2="134.62" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<wire x1="17.78" y1="78.74" x2="17.78" y2="73.66" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="3"/>
<wire x1="17.78" y1="73.66" x2="86.36" y2="73.66" width="0.1524" layer="91"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="A1"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<wire x1="17.78" y1="63.5" x2="17.78" y2="58.42" width="0.1524" layer="91"/>
<wire x1="17.78" y1="58.42" x2="30.48" y2="58.42" width="0.1524" layer="91"/>
<wire x1="30.48" y1="58.42" x2="30.48" y2="71.12" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="3"/>
<wire x1="30.48" y1="71.12" x2="86.36" y2="71.12" width="0.1524" layer="91"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="A2"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<wire x1="17.78" y1="33.02" x2="17.78" y2="27.94" width="0.1524" layer="91"/>
<wire x1="17.78" y1="27.94" x2="35.56" y2="27.94" width="0.1524" layer="91"/>
<wire x1="35.56" y1="27.94" x2="35.56" y2="66.04" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="3"/>
<wire x1="35.56" y1="66.04" x2="86.36" y2="66.04" width="0.1524" layer="91"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="A4"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<wire x1="15.24" y1="2.54" x2="15.24" y2="0" width="0.1524" layer="91"/>
<wire x1="15.24" y1="0" x2="2.54" y2="0" width="0.1524" layer="91"/>
<wire x1="15.24" y1="17.78" x2="15.24" y2="15.24" width="0.1524" layer="91"/>
<wire x1="15.24" y1="15.24" x2="2.54" y2="15.24" width="0.1524" layer="91"/>
<wire x1="2.54" y1="0" x2="2.54" y2="15.24" width="0.1524" layer="91"/>
<junction x="2.54" y="15.24"/>
<wire x1="15.24" y1="33.02" x2="15.24" y2="30.48" width="0.1524" layer="91"/>
<wire x1="15.24" y1="30.48" x2="2.54" y2="30.48" width="0.1524" layer="91"/>
<wire x1="2.54" y1="15.24" x2="2.54" y2="30.48" width="0.1524" layer="91"/>
<junction x="2.54" y="30.48"/>
<wire x1="15.24" y1="48.26" x2="15.24" y2="45.72" width="0.1524" layer="91"/>
<wire x1="15.24" y1="45.72" x2="2.54" y2="45.72" width="0.1524" layer="91"/>
<wire x1="2.54" y1="30.48" x2="2.54" y2="45.72" width="0.1524" layer="91"/>
<junction x="2.54" y="45.72"/>
<wire x1="15.24" y1="63.5" x2="15.24" y2="60.96" width="0.1524" layer="91"/>
<wire x1="15.24" y1="60.96" x2="2.54" y2="60.96" width="0.1524" layer="91"/>
<wire x1="2.54" y1="45.72" x2="2.54" y2="60.96" width="0.1524" layer="91"/>
<junction x="2.54" y="60.96"/>
<wire x1="15.24" y1="78.74" x2="15.24" y2="76.2" width="0.1524" layer="91"/>
<wire x1="15.24" y1="76.2" x2="2.54" y2="76.2" width="0.1524" layer="91"/>
<wire x1="2.54" y1="60.96" x2="2.54" y2="76.2" width="0.1524" layer="91"/>
<wire x1="2.54" y1="76.2" x2="2.54" y2="88.9" width="0.1524" layer="91"/>
<junction x="2.54" y="76.2"/>
<wire x1="2.54" y1="88.9" x2="30.48" y2="88.9" width="0.1524" layer="91"/>
<wire x1="30.48" y1="88.9" x2="30.48" y2="76.2" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="2"/>
<pinref part="X4" gate="G$1" pin="2"/>
<pinref part="X5" gate="G$1" pin="2"/>
<pinref part="X6" gate="G$1" pin="2"/>
<pinref part="X7" gate="G$1" pin="2"/>
<pinref part="X8" gate="G$1" pin="2"/>
<wire x1="30.48" y1="76.2" x2="86.36" y2="76.2" width="0.1524" layer="91"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="A0"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<wire x1="17.78" y1="2.54" x2="17.78" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-2.54" x2="40.64" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-2.54" x2="40.64" y2="60.96" width="0.1524" layer="91"/>
<pinref part="X8" gate="G$1" pin="3"/>
<wire x1="40.64" y1="60.96" x2="86.36" y2="60.96" width="0.1524" layer="91"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="A6"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<wire x1="50.8" y1="48.26" x2="50.8" y2="33.02" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="1"/>
<wire x1="68.58" y1="33.02" x2="50.8" y2="33.02" width="0.1524" layer="91"/>
<wire x1="50.8" y1="48.26" x2="86.36" y2="48.26" width="0.1524" layer="91"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="VIN"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<wire x1="43.18" y1="58.42" x2="43.18" y2="22.86" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="1"/>
<wire x1="68.58" y1="22.86" x2="43.18" y2="22.86" width="0.1524" layer="91"/>
<wire x1="43.18" y1="58.42" x2="86.36" y2="58.42" width="0.1524" layer="91"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="A7"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<wire x1="127" y1="81.28" x2="129.54" y2="81.28" width="0.1524" layer="91"/>
<wire x1="129.54" y1="109.22" x2="129.54" y2="81.28" width="0.1524" layer="91"/>
<wire x1="129.54" y1="109.22" x2="119.38" y2="109.22" width="0.1524" layer="91"/>
<pinref part="X13" gate="G$1" pin="1"/>
<wire x1="119.38" y1="109.22" x2="119.38" y2="116.84" width="0.1524" layer="91"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="D11"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<wire x1="127" y1="78.74" x2="132.08" y2="78.74" width="0.1524" layer="91"/>
<wire x1="132.08" y1="78.74" x2="132.08" y2="116.84" width="0.1524" layer="91"/>
<pinref part="X14" gate="G$1" pin="1"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="D10"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<wire x1="127" y1="83.82" x2="127" y2="106.68" width="0.1524" layer="91"/>
<wire x1="127" y1="106.68" x2="106.68" y2="106.68" width="0.1524" layer="91"/>
<pinref part="X12" gate="G$1" pin="1"/>
<wire x1="106.68" y1="106.68" x2="106.68" y2="116.84" width="0.1524" layer="91"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="D12"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<wire x1="50.8" y1="83.82" x2="50.8" y2="88.9" width="0.1524" layer="91"/>
<wire x1="50.8" y1="88.9" x2="124.46" y2="88.9" width="0.1524" layer="91"/>
<wire x1="124.46" y1="88.9" x2="124.46" y2="104.14" width="0.1524" layer="91"/>
<pinref part="X11" gate="G$1" pin="1"/>
<wire x1="124.46" y1="104.14" x2="93.98" y2="104.14" width="0.1524" layer="91"/>
<wire x1="93.98" y1="104.14" x2="93.98" y2="116.84" width="0.1524" layer="91"/>
<wire x1="50.8" y1="83.82" x2="86.36" y2="83.82" width="0.1524" layer="91"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="D13"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<wire x1="38.1" y1="63.5" x2="86.36" y2="63.5" width="0.1524" layer="91"/>
<wire x1="38.1" y1="63.5" x2="38.1" y2="12.7" width="0.1524" layer="91"/>
<wire x1="17.78" y1="17.78" x2="17.78" y2="12.7" width="0.1524" layer="91"/>
<wire x1="38.1" y1="12.7" x2="17.78" y2="12.7" width="0.1524" layer="91"/>
<pinref part="X7" gate="G$1" pin="3"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="A5"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<wire x1="33.02" y1="68.58" x2="86.36" y2="68.58" width="0.1524" layer="91"/>
<wire x1="17.78" y1="48.26" x2="17.78" y2="43.18" width="0.1524" layer="91"/>
<wire x1="17.78" y1="43.18" x2="33.02" y2="43.18" width="0.1524" layer="91"/>
<wire x1="33.02" y1="68.58" x2="33.02" y2="43.18" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="3"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="A3"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<wire x1="45.72" y1="50.8" x2="45.72" y2="45.72" width="0.1524" layer="91"/>
<pinref part="GND9" gate="1" pin="GND"/>
<wire x1="45.72" y1="50.8" x2="86.36" y2="50.8" width="0.1524" layer="91"/>
<pinref part="ARDUINO_NANO2" gate="G$1" pin="GND@2"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
