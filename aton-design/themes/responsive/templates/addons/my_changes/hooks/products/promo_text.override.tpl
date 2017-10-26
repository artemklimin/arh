                {fn_print_r($product['header_features'][4]['variant'])}
            	{assign var="material" value=$product['header_features'][4]['variant']}
            	{fn_print_r($material)}
            	{fn_print_r($product['header_features'][4]['suffix'])}
            	{assign var="material_name" value=$product['header_features'][4]['suffix']}
            	{fn_print_r($product['header_features'][2]['value_int'])}
            	{assign var="area" value=$product['header_features'][2]['value_int']}
            	{fn_print_r($area)}
            	{assign var="summ" value=$material*$area}
            	{fn_print_r($summ)}
				<div class="ty-product-block__note">
                    <a class="type-block" href="#brick">
                    	<span class="var-header">{$material_name|print_r nofilter}</span>
                    	<span class="var-body">{$summ|@debug_print_var}</span>
                    </a>
                    <a class="type-block" href="#frame"> <span class="var-header">КАРКАС</span> <span class="var-body">3 832 920 ₽</span> </a>
                </div>
                {if $product.promo_text}
                <div class="ty-product-block__note">
                    {$product.promo_text nofilter}
                </div>
                {/if}