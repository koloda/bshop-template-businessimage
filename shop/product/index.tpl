{ use app\services\ProductService as C}
{ use kartik\rating\StarRating}

{$CI->core->set_meta_tags($product->seoTitle?:$product->title, $product->seoKeywords, $product->seoDescription)}

<!-- BSHOP PRODUCT -->
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
<div class="b-content b-product_page">
	<div class="g-container">
        <div class="g-row g-row_indent-20">
            <div class="g-col-5 g-col-12_from-m">
                <!-- PICTURES -->
                <div class="b-content__list">
                    <div class="b-product_image b-content__item-image">
                        <img src="{echo $product->getImgSrc('picture', 560)}">
                    </div>
                </div>
            </div>
            <div class="g-col-7 g-col-12_from-m">
                <!-- CONTENT-->
                <div class="b-content__list">
                    <div class="b-content_item-text b-product_desc">
                        <h1 class="b-content__title">{$product.title}</h1>
                        {$product.description}
                    </div>
                    <div class="b-product_controls">
                        <div class="g-row g-row_indent-20">
                            <div class="g-col-3">
                                <input class="b-product_controls__count" type="number" value="1" min="1" step="1"></input>
                            </div>
                            <div class="g-col-4">
                                <input type="button" class=" btn btn-block btn-wide btn-big b-product_controls__buy" value="{tlang('Add to cart')}">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</div>
</div>