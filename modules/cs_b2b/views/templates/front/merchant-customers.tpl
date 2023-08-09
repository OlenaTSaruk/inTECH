{*
*
* @author Przelewy24
* @copyright Przelewy24
* @license https://www.gnu.org/licenses/lgpl-3.0.en.html
*
*}
{extends file='customer/page.tpl'}
{block name='page_title'}{l s='My customers' mod='cs_b2b'}{/block}
{block name='page_content'}
<div class="section-content">
    {if $customers}
        <p>{l s='Below there is a list of customers that have been assigned to you.' mod='cs_b2b'}</p>
        <table class="table">
            <thead>
                <tr>
                    <th>{l s='ID' mod='cs_b2b'}</th>
                    <th>{l s='First and last name' mod='cs_b2b'}</th>
                    <th>{l s='E-mail' mod='cs_b2b'}</th>
                    <th>{l s='Phone' mod='cs_b2b'}</th>
                    <th>{l s='Company' mod='cs_b2b'}</th>
                    <th>{l s='VAT number' mod='cs_b2b'}</th>
                </tr>
            </thead>
            <tbody>
            {foreach from=$customers item='customer'}
                <tr>
                    <td>{$customer.id}</td>
                    <td>{$customer.firstname} {$customer.lastname}</td>
                    <td>{$customer.email}</td>
                    <td>{$customer.phone}</td>
                    <td>{$customer.custom_company}</td>
                    <td>{$customer.custom_nip}</td>
                </tr>
            {/foreach}
            </tbody>
        </table>
    {else}
        <p class="alert alert-danger">{l s='There are no customers.' mod='cs_b2b'}</p>
    {/if}
</div>
{/block}
