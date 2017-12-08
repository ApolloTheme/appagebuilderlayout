
  <!-- New -->
  <section id="main" class="product-default product-rads" itemscope itemtype="https://schema.org/Product">
    <meta itemprop="url" content="{$product.url}">

      <div class="row">
        	<div class="col-lg-5 col-md-12">
        		<div class="product-title hidden-lg-up">
	            	{block name='page_header_container'}
		              {block name='page_header'}
		                <h1 class="h1 product-detail-name" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
		              {/block}
		              	<h4 class="detail-name-caption">{$product.caption1}</h4>
		            {/block}
	            </div>
          		{block name='page_content_container'}
		            <section class="page-content" id="content">
		              {block name='page_content'}
		                {block name='product_cover_thumbnails'}
		                  {include file='catalog/_partials/product-cover-thumbnails-rads.tpl'}
		                {/block}
		              {/block}
		            </section>
          		{/block}
          	</div>
	        <div class="detail-content col-lg-7 col-md-12">
	            <div class="product-title hidden-md-down">
	            	{block name='page_header_container'}
		              {block name='page_header'}
		                <h1 class="h1 product-detail-name" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
		              {/block}
		              	<h4 class="detail-name-caption">{$product.caption1}</h4>
		            {/block}
	            </div>
	            
	            {*{hook h='displayProductButtons' product=$product}
	             {hook h='displayLeoProductReviewExtra' product=$product}*}
	            

	            <div class="product-information">
	              	{block name='product_description_short'}
		            	<div id="product-description-short-{$product.id}" class="product-description" itemprop="description">{$product.description_short nofilter}</div>
		        	{/block}
					{block name='product_prices'}
		              {include file='catalog/_partials/product-prices.tpl'}
		            {/block}

	              {if $product.is_customizable && count($product.customizations.fields)}
	                {block name='product_customization'}
	                  {include file="catalog/_partials/product-customization.tpl" customizations=$product.customizations}
	                {/block}
	              {/if}
	              <div class="product-actions">
	                {block name='product_buy'}
	                  <form action="{$urls.pages.cart}" method="post" id="add-to-cart-or-refresh">
	                    <input type="hidden" name="token" value="{$static_token}">
	                    <input type="hidden" name="id_product" value="{$product.id}" id="product_page_product_id">
	                    <input type="hidden" name="id_customization" value="{$product.id_customization}" id="product_customization_id">

	                    {block name='product_variants'}
	                      {include file='catalog/_partials/product-variants.tpl'}
	                    {/block}

	                    {block name='product_pack'}
	                      {if $packItems}
	                        <section class="product-pack">
	                          <h3 class="h4">{l s='This pack contains' d='Shop.Theme.Catalog'}</h3>
	                          {foreach from=$packItems item="product_pack"}
	                            {block name='product_miniature'}
	                              {include file='catalog/_partials/miniatures/pack-product.tpl' product=$product_pack}
	                            {/block}
	                          {/foreach}
	                      </section>
	                      {/if}
	                    {/block}

	                    {block name='product_discounts'}
	                      {include file='catalog/_partials/product-discounts.tpl'}
	                    {/block}

	                    {block name='product_add_to_cart'}
	                      {include file='catalog/_partials/product-add-to-cart.tpl'}
	                    {/block}

	                    {block name='product_refresh'}
	                      <input class="product-refresh ps-hidden-by-js" name="refresh" type="submit" value="{l s='Refresh' d='Shop.Theme.Actions'}">
	                    {/block}
	                  </form>
	                {/block}

	              </div>

	            {*{block name='hook_display_reassurance'}
	                          {hook h='displayReassurance'}
	                        {/block}*}
	        	</div>
      		</div>
    </div>
    {if isset($USE_PTABS) && $USE_PTABS == 'tab'}
        {include file="sub/product_info/tab.tpl"}
    {else if isset($USE_PTABS) && $USE_PTABS == 'accordion'}
        {include file="sub/product_info/accordions.tpl"}
    {else}
        {include file="sub/product_info/default.tpl"}
    {/if}    

    

    {*{block name='product_footer'}
          {hook h='displayFooterProduct' product=$product category=$category}
        {/block}
    
        {block name='product_images_modal'}
          {include file='catalog/_partials/product-images-modal.tpl'}
        {/block}*}

    {block name='page_footer_container'}
      <footer class="page-footer">
        {block name='page_footer'}
          <!-- Footer content -->
        {/block}
      </footer>
    {/block}
  </section>