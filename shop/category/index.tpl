{ use app\services\CategoryService as C}

{$CI->core->set_meta_tags($category->seoTitle?:$category->title, $category->seoKeywords, $category->seoDescription)}

<!-- BSHOP CATEGORY -->
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
		{if count($models)}
			<small>{count($models)} {tlang('product(s) in category')}</small>
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
                    {foreach $models as $product}
                        {$CI->template->display('shop/category/product_item', ['product' => $product])}
                    {/foreach}
                    <div class="b-products_grid-pagination">
                        {$pagination}
                    </div>
                </div>
                <div class="b-content__list">
                    <div class="b-content_item-text b-category_desc">
                        <div class="b-category_image b-content__item-image">{echo $category->getImgHtml('picture')}</div>
                        {$category.description}
                    </div>
                </div>
            </div>
        </div>
	</div>
</div>
