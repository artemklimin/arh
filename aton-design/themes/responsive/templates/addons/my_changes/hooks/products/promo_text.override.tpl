				{*fn_print_r($product['header_features'])*}
				{*fn_print_r($product['product_features'])*}

                {*fn_print_r($product['header_features'][4]['variants'][13]['variant'])*}
            	{assign var="material_karkas" value=$product['header_features'][4]['variants'][13]['variant']}
            	{*fn_print_r($material_karkas)*}

            	{*fn_print_r($product['header_features'][4]['variants'][14]['variant'])*}
            	{assign var="material_gazobeton" value=$product['header_features'][4]['variants'][14]['variant']}
            	{*fn_print_r($material_gazobeton)*}

            	{*fn_print_r($product['header_features'][4]['variants'][15]['variant'])*}
            	{assign var="material_kirpich" value=$product['header_features'][4]['variants'][15]['variant']}
            	{*fn_print_r($material_kirpich)*}

            	{$materials = ['karkas' => array($material_karkas,'каркас'), 'gazobeton' => array($material_gazobeton, 'газобетон'),'kirpich' => array($material_kirpich, 'кирпич')]}
				{*fn_print_r($materials)*}


            	{*fn_print_r($product['header_features'][4]['suffix'])*}
            	{assign var="material_name" value=$product['header_features'][2]['suffix']}

            	{*fn_print_r($product['header_features'][2]['value_int'])*}
            	{assign var="area" value=$product['header_features'][2]['value_int']}
            	{*fn_print_r($area)*}

            	{*fn_print_r($product['header_features'][12]['variant'])*}
            	{assign var="metr_karkas" value=$product['header_features'][12]['value_int']}
            	{*fn_print_r($metr_karkas)*}

            	{*fn_print_r($product['header_features'][13]['variant'])*}
            	{assign var="metr_gazobeton" value=$product['header_features'][13]['value_int']}
            	{*fn_print_r($metr_gazobeton)*}

            	{*fn_print_r($product['header_features'][14]['variant'])*}
            	{assign var="metr_kirpich" value=$product['header_features'][14]['value_int']}
            	{*fn_print_r($metr_kirpich)*}

            	{assign var="summ" value=$material*$area}
            	{*fn_print_r($summ)*}

            	{assign var="summ_karkas" value=$material_karkas*$area*$metr_karkas}
            	{*fn_print_r($summ_karkas)*}

            	{assign var="summ_gazobeton" value=$material_gazobeton*$area*$metr_gazobeton}
            	{*fn_print_r($summ_gazobeton)*}

            	{assign var="summ_kirpich" value=$material_kirpich*$area*$metr_kirpich}
            	{*fn_print_r($summ_kirpich)*}

				<div class="ty-product-block__note">
					<a class="type-block" href="#product_tab_9">
                    	<span class="var-header">{$materials['karkas'][1]}</span>
                    	<span class="var-body">{$summ_karkas|@debug_print_var}</span>
                    </a>
					<a class="type-block" href="#product_tab_10">
                    	<span class="var-header">{$materials['gazobeton'][1]}</span>
                    	<span class="var-body">{$summ_gazobeton|@debug_print_var}</span>
                    </a>
                    <a class="type-block" href="#product_tab_11">
                    	<span class="var-header">{$materials['kirpich'][1]}</span>
                    	<span class="var-body">{$summ_kirpich|@debug_print_var}</span>
                    </a>
                </div>
                {if $product.promo_text}
                <div class="ty-product-block__note">
                    {$product.promo_text nofilter}
                </div>
                {/if}