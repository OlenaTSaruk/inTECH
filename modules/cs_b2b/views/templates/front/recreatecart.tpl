{*
*
* @author Przelewy24
* @copyright Przelewy24
* @license https://www.gnu.org/licenses/lgpl-3.0.en.html
*
*}
{extends file='page.tpl'}
{block name='page_title'}{l s='Cart recreation' mod='cs_b2b'}{/block}
{block name='page_content'}
<div class="section-content">
    {if $isCatalogMode}
        <p class="alert alert-warning">{l s='In order to recreate a cart you have to sign in to your customer account.' mod='cs_b2b'}</p>
        <p><a href="{url entity='authentication'}" class="btn">{l s='Sign in' mod='cs_b2b'}</a></p>
    {else}
        <p>{l s='If you are here it means that somebody has prepared and shared a cart with you.' mod='cs_b2b'}<br />{l s='If everything went correctly you can go to cart summary page and proceed with your order.' mod='cs_b2b'}</p>
        <p><a href="{url entity='cart' params=['action'=>'show']}" class="btn">{l s='Go to cart summary' mod='cs_b2b'}</a></p>
        <p>
            {l s='Best regards,' mod='cs_b2b'}<br />
            {l s='inTECH Team' mod='cs_b2b'}
        </p>
    {/if}
</div>
{/block}
