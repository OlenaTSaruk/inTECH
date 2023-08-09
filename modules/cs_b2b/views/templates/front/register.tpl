{*
*
* @author Przelewy24
* @copyright Przelewy24
* @license https://www.gnu.org/licenses/lgpl-3.0.en.html
*
*}
{extends file='page.tpl'}
{block name='page_title'}{l s='Register as B2B client' mod='cs_b2b'}{/block}
{block name='page_content'}
<div class="section-content">
    <form id="csb2b-registration-form" action="{$formAction}" method="POST">
        {if $formErrorMessages|count > 0}
            <div class="help-block">
                <ul class="alert alert-danger">
                    {foreach from=$formErrorMessages item='formErrorMessage'}
                        <li>{$formErrorMessage}</li>
                    {/foreach}
                </ul>
            </div>
        {/if}
        <h2 class="form-title">{l s='Account data' mod='cs_b2b'}</h2>
        <div class="row">
            {foreach from=$formCustomer.formFields item="field"}
            <div class="col-12{if !in_array($field.type, ['checkbox', 'radio', 'hidden'])} col-md-6{/if}">
            {block name='form_field'}
                {form_field field=$field}
            {/block}
            </div>
        {/foreach}
        </div>
                {$formCustomer.hook_create_account_form nofilter}
                {*company delivery address*}
                <div class="address-container">
                    <h2 class="form-title">{l s='Invoice address data' mod='cs_b2b'}</h2>
                    <div class="row">
                    {foreach from=$formInvoice.formFields item="field"}
                        <div class="col-12{if !in_array($field.type, ['checkbox', 'radio', 'hidden'])} col-md-6{/if}">
                        {block name='form_field'}
                            {form_field field=$field}
                        {/block}
                        </div>
                    {/foreach}
                    </div>
                </div>
                {*company billing address*}
                <div class="address-container">
                    <h2 class="form-title">{l s='Delivery address data' mod='cs_b2b'}</h2>
                    <p class="text-center">
                        <button id="copyBillingAddress" class="btn">{l s='Copy billing data to delivery address' mod='cs_b2b'}</button>
                    </p>
                    <div class="row">
                    {foreach from=$formAddress.formFields item="field"}
                        <div class="col-12{if !in_array($field.type, ['checkbox', 'radio', 'hidden'])} col-md-6{/if}">
                        {block name='form_field'}
                            {form_field field=$field}
                        {/block}
                        </div>
                    {/foreach}
                    </div>
                </div>
        <p class="text-center">
            <input type="submit" name="cs_b2b_register" value="{l s='Register your account' mod='cs_b2b'}" class="btn btn-alt2" />
        </p>
    </form>
</div>
{/block}
