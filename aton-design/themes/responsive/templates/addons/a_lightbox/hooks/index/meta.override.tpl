{if $display_base_href}
<base href="{$config.current_location}/" />
{/if}
<meta http-equiv="Content-Type" content="text/html; charset={$smarty.const.CHARSET}" data-ca-mode="{$store_trigger}" />
<meta name="viewport" id="view" content="width=device-width minimum-scale=1, maximum-scale=1" />
{hook name="index:meta_description"}
<meta name="description" content="{$meta_description|html_entity_decode:$smarty.const.ENT_COMPAT:"UTF-8"|default:$location_data.meta_description}" />
{/hook}
<meta name="keywords" content="{$meta_keywords|default:$location_data.meta_keywords}" />