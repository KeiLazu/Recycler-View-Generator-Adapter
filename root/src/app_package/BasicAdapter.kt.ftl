package ${packageName}

import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.ViewGroup

/**
 * Template created by 
 * Kennix Lazuardi
 * You can contact me @ https://github.com/KeiLazu
 * or here: https://bitbucket.org/KeiLazu/
 * -------------------------------------------------
 * ${packageName}
 */

<#if includeHeader == true || includeFooter == true>
class ${adapterName}Adapter : RecyclerView.Adapter<RecyclerView.ViewHolder>() {

	companion object {
		<#if includeHeader == true>
        private const val POS_HEADER = 0
		</#if>
		<#if includeFooter == true>
        private const val POS_FOOTER = 1
		</#if>
        private const val POS_ITEM = 2
    }

    override fun getItemViewType(position: Int): Int =
		<#if includeHeader == true>
        if (position == POS_HEADER) POS_HEADER else 
		</#if>
		<#if includeFooter == true>
		if (position == POS_FOOTER) POS_FOOTER else 
		</#if>
		POS_ITEM
	
	override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder =
		<#if includeHeader == true>
		if (viewType == POS_HEADER) ${headerViewHolderName}(LayoutInflater.from(parent.context).inflate(R.layout.${layoutHeaderName}, parent, false)) else 
		</#if>
		<#if includeFooter == true>
		if (viewType == POS_FOOTER)
		${footerViewHolderName} (LayoutInflater.from(parent.context).inflate(R.layout.${layoutFooterName}, parent, false)) else
		</#if>
		${viewHolderName}(LayoutInflater.from(parent.context).inflate(R.layout.${layoutName}, parent, false))
<#else>
class ${adapterName}Adapter : RecyclerView.Adapter<${viewHolderName}>() {

	override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ${viewHolderName} =
		${viewHolderName}(LayoutInflater.from(parent.context).inflate(R.layout.${layoutName}, parent, false))
</#if>
		
	override fun getItemCount(): Int = 10 // Change this into actual data later
	
	<#if includeHeader == true || includeFooter == true>
	override fun onBindViewHolder(holder: RecyclerView.ViewHolder, position: Int) {
		holder.let {
		<#if includeHeader == true>
			if (it is ${headerViewHolderName}) { it.clear(); it.bind() } else
		</#if>
		<#if includeFooter == true>
			if (it is ${footerViewHolderName}) { it.clear(); it.bind() } else
		</#if>
			if (it is ${viewHolderName}) {it.clear(); it.bind() }
		}
	}
	<#else>
	override fun onBindViewHolder(holder: ${viewHolderName}, position: Int) {
		holder.let {
			it.clear()
			it.bind()
		}
	}
	</#if>
		
}