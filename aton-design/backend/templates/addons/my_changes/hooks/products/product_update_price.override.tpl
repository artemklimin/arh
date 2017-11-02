                    {$product_features|fn_print_r}
                    {assign var="area" value=$product_features[2]['value_int']}
            	    {fn_print_r($area)}
            	    {assign var="metr_karkas" value=$product_features[12]['value_int']}
            	{*fn_print_r($metr_karkas)*}

            	{*fn_print_r($product['header_features'][13]['variant'])*}
            	{assign var="metr_gazobeton" value=$product_features[13]['value_int']}
            	{*fn_print_r($metr_gazobeton)*}

            	{*fn_print_r($product['header_features'][14]['variant'])*}
            	{assign var="metr_kirpich" value=$product_features[14]['value_int']}

            	{assign var="summ_karkas" value=$area*$metr_karkas}
            	{fn_print_r($summ_karkas)}

            	{assign var="summ_gazobeton" value=$area*$metr_gazobeton}
            	{fn_print_r($summ_gazobeton)}

            	{assign var="summ_kirpich" value=$area*$metr_kirpich}
            	{fn_print_r($summ_kirpich)}


                    <div class="control-group {$no_hide_input_if_shared_product} qqq">
                        <label for="elm_price_price" class="control-label cm-required">{__("price")} ({$currencies.$primary_currency.symbol nofilter}):</label>
                        <div class="controls">
                            <!--<input type="text" name="product_data[price]" id="elm_price_price" size="10" value="{$product_data.price|default:"0.00"|fn_format_price:$primary_currency:null:false}" class="input-long" />-->
                            <input type="text" name="product_data[price]" id="elm_price_price" size="10" value="{if $summ_kirpich != $area && $summ_kirpich != 0}{$summ_kirpich}{else}{$product_data.price|default:"0.00"|fn_format_price:$primary_currency:null:false}{/if}" class="input-long a-{$summ_kirpich}" />
                            {include file="buttons/update_for_all.tpl" display=$show_update_for_all object_id='price' name="update_all_vendors[price]"}
                        </div>
                    </div>