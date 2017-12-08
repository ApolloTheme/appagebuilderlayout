{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
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
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{extends file='catalog/listing/product-list.tpl'}

{block name='product_list_header'}
    <div class="block-category card card-block {$category.class}">
      <div class="row">
        <div class="block-left col-xl-6 col-lg-6 col-xs-12">
          <h1 class="h1 category-name">{$category.name}</h1>
          <h4 class="title-caption">{$category.caption1}</h4>
          {if $category.image.large.url}
          <div class="category-cover hidden-lg-up">
            <img class="img-fluid" src="{$category.image.large.url}" alt="{$category.image.legend}">
          </div>
          {/if}
          {if $category.description}
            <div id="category-description">{$category.description nofilter}</div>
          {/if}
        </div>
        <div class="block-right hidden-md-down col-xl-6 col-lg-6 col-xs-12">
          {if $category.image.large.url}
          <div class="category-cover">
            <img class="img-fluid" src="{$category.image.large.url}" alt="{$category.image.legend}">
          </div>
          {/if}
        </div>
      </div>
    </div>
{/block}