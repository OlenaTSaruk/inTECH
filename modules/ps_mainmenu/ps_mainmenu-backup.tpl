{assign var=_counter value=0}
{function name="menu" nodes=[] depth=0 parent=null}
    {if $nodes|count}
        <ul class="top-menu" {if $depth == 0}id="top-menu"{/if} data-depth="{$depth}">
            {foreach from=$nodes item=node}
            <li class="{$node.type}{if $node.current} current {/if}" id="{$node.page_identifier}">
                {assign var=_counter value=$_counter+1}
                <a
                        class="{if $depth >= 0}dropdown-item{/if}{if $depth === 1} dropdown-submenu{/if}"
                        href="{$node.url}" data-depth="{$depth}"
                        {if $node.open_in_new_window} target="_blank" {/if}
                >
                    {if $node.children|count}
                        {* Cannot use page identifier as we can have the same page several times *}
                        {assign var=_expand_id value=10|mt_rand:100000}
                        <span class="float-xs-right hidden-md-up">
                    <span data-target="#top_sub_menu_{$_expand_id}" data-toggle="collapse" class="navbar-toggler collapse-icons">
                      <i class="material-icons add">&#xE313;</i>
                      <i class="material-icons remove">&#xE316;</i>
                    </span>
                  </span>
                    {/if}
                    {$node.label}
                </a>
                {if $node.children|count}
                <div {if $depth === 0} class="popover sub-menu js-sub-menu collapse"{else} class="collapse"{/if} id="top_sub_menu_{$_expand_id}">
{*                                    {menu nodes=$node.children depth=$node.depth parent=$node}*}
                    <div id="submenu-tabs" class="tabs">
                        <ul class="nav nav-tabs">
                        {foreach from=$node.children item='node1' name='node1'}
                            <li class="nav-item">
                                <a
                                  class="nav-link{if $smarty.foreach.node1.first} active{/if}"
                                  data-toggle="tab"
                                  href="#submenu1-{$node1.page_identifier}{$node1.id}"
                                  data-toggle="tab"
                                  aria-controls="submenu1-{$node1.page_identifier}{$node1.id}"
                                  {if $smarty.foreach.node1.first}} aria-selected="true"{/if}>{$node1.label}</a>
                            </li>
                        {/foreach}
                        </ul>
                        <div class="right-column tab-content" id="menu-tab-content">
                        {foreach from=$node.children item='node1' name='node1'}
                            <div class="tab-pane fade in nav nav-tabs{if $smarty.foreach.node1.first} active{/if}" id="submenu1-{$node1.page_identifier}{$node1.id}" role="tabpanel">
                            {foreach from=$node1.children item=node2}
                                <div class="{$node2.label}">
                                    <a
                                    href="{$node2.url}"
                                    {if $node2.open_in_new_window} target="_blank" {/if}
                                    >
                                        {$node2.label}
                                    </a>
                                </div>
{*                                <div class="nav-item">*}
{*                                    <a*}
{*                                            class="nav-link{if $smarty.foreach.node2.first} active{/if}"*}
{*                                            data-toggle="tab"*}
{*                                            href="#submenu2-{$node2.page_identifier}{$node2.id}"*}
{*                                            data-toggle="tab"*}
{*                                            aria-controls="submenu2-{$node2.page_identifier}{$node2.id}"*}
{*                                            {if $smarty.foreach.node1.first}} aria-selected="true"{/if}>{$node2.label}</a>*}
{*                                </div>*}
                            {/foreach}
                            </div>
                        {/foreach}
                        </div>
{*                        <ul class="nav nav-tabs">*}
{*                            {foreach from=$node.children item='node1' name='node1'}*}
{*                                {foreach from=$node1.children item=node2}*}
{*                                    <li class="nav-item">*}
{*                                        <a*}
{*                                                class="nav-link{if $smarty.foreach.node2.first} active{/if}"*}
{*                                                data-toggle="tab"*}
{*                                                href="#submenu2-{$node2.page_identifier}{$node2.id}"*}
{*                                                data-toggle="tab"*}
{*                                                aria-controls="submenu2-{$node2.page_identifier}{$node2.id}"*}
{*                                                {if $smarty.foreach.node1.first}} aria-selected="true"{/if}>{$node2.label}</a>*}
{*                                    </li>*}
{*                                {/foreach}*}
{*                            {/foreach}*}
{*                        </ul>*}
                        <div class="right-column tab-content" id="menu-tab-content">
                            {foreach from=$node.children item='node1' name='node1'}
                                {foreach from=$node1.children item=node2}
                                    <div class="tab-pane fade in{if $smarty.foreach.node1.first} active{/if}" id="submenu2-{$node1.page_identifier}{$node1.id}" role="tabpanel">
                                        {foreach from=$node2.children item=node3}
                                            <div class="{$node3.label}">
                                                <a
                                                        href="{$node3.url}"
                                                        {if $node3.open_in_new_window} target="_blank" {/if}
                                                >
                                                    {$node3.label}
                                                </a>
                                            </div>
                                        {/foreach}
                                    </div>
                                {/foreach}
                            {/foreach}
                        </div>
                    </div>
                </div>
                {/if}
                </li>
            {/foreach}
        </ul>
    {/if}
{/function}
<div class="menu js-top-menu position-static hidden-sm-down" id="_desktop_top_menu">
    {menu nodes=$menu.children}
    <div class="clearfix"></div>
</div>
