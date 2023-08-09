{if $customers}
    <table class="table">
        <thead>
            <tr>
                <th>{l s='ID' mod='cs_b2b'}</th>
                <th>{l s='First and last name' mod='cs_b2b'}</th>
                <th>{l s='E-mail' mod='cs_b2b'}</th>
                <th>{l s='Company' mod='cs_b2b'}</th>
                <th>{l s='VAT number' mod='cs_b2b'}</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
        {foreach from=$customers item='customer'}
            <tr>
                <td>{$customer.id}</td>
                <td>{$customer.firstname} {$customer.lastname}</td>
                <td>{$customer.email}</td>
                <td>{$customer.custom_company}</td>
                <td>{$customer.custom_nip}</td>
                <td class="text-end"><button class="btn btn-small js-csb2b-customer-share" data-customer-id="{$customer.id}">{l s='Hand over' mod='cs_b2b'}</button></td>
            </tr>
        {/foreach}
        </tbody>
    </table>
{else}
    <p class="alert alert-danger">{l s='There are no matching customers.' mod='cs_b2b'}</p>
{/if}