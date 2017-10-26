{if $subscribe_text_policy}
    <div id="subscribe_policy" class="cm-subscribe-policy ty-footer-form-block-policy__input">
        <label for="elm_personal_data" class="control-label ty-lable-subscribe-policy">{$subscribe_text_policy nofilter}</label>
    </div>
{else}
    <input type="hidden" id="check_personal_data" value="Y" class="cm-subscribe-personal-data" />
{/if}