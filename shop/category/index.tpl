<div class="b-breadcrumbs">
    <div class="g-container">
        <ul class="g-clearfix">
            <li class="b-breadcrumbs__item">
                <a class="b-breadcrumbs__item-link g-link" href="http://imc.loc/">Home</a>
            </li>
            <li class="b-breadcrumbs__item">
                <span class="b-breadcrumbs__item-text">Услуги</span>
            </li>
        </ul>
    </div>
</div>

<div class="b-content">
	<div class="g-container">
		<h1 class="b-content__title">{$category.title}
		{if count($category.products)}
			<small>{count($category.products)} {tlang('product(s) in category')}</small>
		{/if}
		</h1>
        <div class="g-row g-row_indent-20">
            <div class="g-col-3 g-col-12_from-m">
                <div class="b-sidebar">
                    <!--LEFT PANEL-->
                    <div class="b-sidebar__section">
                        <nav class="b-subcats g-section-s">
                            <h4 class="g-section-s__title">{tlang('Child categories')}</h4>
                            <!-- ITEMS -->
                        </nav>
                    </div>
                </div>

            </div>
            <div class="g-col-9 g-col-12_from-m">
                <!-- CONTENT-->
                <div class="b-content__list b-products_grid">
                    {foreach $category.products as $product}
                        <div class="g-col-3">
                            <div class="b-product_item">
                                <div class="b-product_title">
                                    <a href="{$product.url}">
                                        <h4>{$product.title}</h4>
                                    </a>
                                </div>
                                <div class="b-product-image">
                                    <a href="{$product.url}">
                                        <img src="{echo $product->getImgSrc('picture', 200)}" alt="{$product.title}">
                                    </a>
                                </div>
                                <div class="b-product_controls">
                                    {if $product.available}
                                        <div class="b-product_buy_button">
                                            <a href="/a" class="btn btn-block">{tlang('Add to cart')}</a>
                                        </div>
                                    {else:}
                                        <div class="b-product_not_available">
                                            <span class="btn btn-block disabled">{tlang('Not available now')}</span>
                                        </div>
                                    {/if}
                                </div>
                            </div>
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
	</div>
</div>
