<?xml version="1.0"?>
<recipe>
	<dependency mavenUrl="com.android.support:recyclerview-v7:28.0.0+"/>
	<instantiate from="root/src/app_package/BasicAdapter.kt.ftl"
					to="${escapeXmlAttribute(srcOut)}/${adapterName}Adapter.kt"
	/>
	<instantiate from="root/res/layout/list_item.xml.ftl"
					to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"
	/>
	<#if includeHeader==true>
	<instantiate from="root/res/layout/list_item.xml.ftl"
					to="${escapeXmlAttribute(resOut)}/layout/${layoutHeaderName}.xml"
	/>
	</#if>
	<#if includeFooter==true>
	<instantiate from="root/res/layout/list_item.xml.ftl"
					to="${escapeXmlAttribute(resOut)}/layout/${layoutFooterName}.xml"
	/>
	</#if>
	
	<open file ="${escapeXmlAttribute(srcOut)}/${adapterName}Adapter.kt"/>
	<open file ="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml"/>
	<#if includeHeader==true>
	<open file ="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutHeaderName)}.xml"/>
	</#if>
	<#if includeFooter==true>
	<open file ="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutFooterName)}.xml"/>
	</#if>
	
</recipe>
