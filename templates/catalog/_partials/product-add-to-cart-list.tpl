{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
<div class="product-add-to-cart js-product-add-to-cart">
  {if !$configuration.is_catalog}

    {block name='product_quantity'}
    
      <div class="product-quantity clearfix">
      {if $product.add_to_cart_url}
        <div class="qty">
          <input
            type="text"
            name="qty"
            pattern="[0-9]*"
            {if $product.quantity_wanted}
              value="{$product.quantity_wanted}"
            {else}
              value="1"
            {/if}
            class="input-group quantity_wanted"
            aria-label="{l s='Quantity' d='Shop.Theme.Actions'}"
          >
        </div>
        {/if}

        <div class="add">
          {if $page.page_name != "product"}
            {if !$product.add_to_cart_url}
              <a class="btn btn-primary add-to-cart" href="{$product.url}">
                {*            <i class="material-icons shopping-cart">&#xE547;</i>*}
                {l s='Show' d='Shop.Theme.Actions'}
              </a>
            {else}
              <button
                      class="btn btn-primary add-to-cart without-icon-cart"
                      data-button-action="add-to-cart"
                      type="submit"
                      {if !$product.add_to_cart_url}
                        disabled
                      {/if}
              >

                {*<i class="material-icons shopping-cart">&#xE547;</i>*}
                {l s='Add to cart' d='Shop.Theme.Actions'}
              </button>

              <button
                      class="btn btn-primary add-to-cart icon-cart"
                      data-button-action="add-to-cart"
                      type="submit"
                      {if !$product.add_to_cart_url}
                        disabled
                      {/if}
              >
                <i class="material-icons shopping-cart">&#xE547;</i>
              </button>

            {/if}

          {else}
              <button
                      class="btn btn-primary add-to-cart without-icon-cart-mini"
                      data-button-action="add-to-cart"
                      type="submit"
                      {if !$product.add_to_cart_url}
                          disabled
                      {/if}
              >
                  {*            <i class="material-icons shopping-cart">&#xE547;</i>*}
                  {l s='Add to cart' d='Shop.Theme.Actions'}
              </button>

              <button
                      class="btn btn-primary add-to-cart icon-cart-mini"
                      data-button-action="add-to-cart"
                      type="submit"
                      {if !$product.add_to_cart_url}
                        disabled
                      {/if}
              >
                <i class="material-icons shopping-cart">&#xE547;</i>
              </button>
          {/if}
        </div>
      </div>
    {/block}
  {/if}
</div>
