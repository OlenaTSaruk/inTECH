{foreach from=$links item='link'}
    <li class="list-group-item{if $page.page_name == $link.page_name} active{/if}"><a href="{$link.url}">{$link.label}</a></li>
{/foreach}