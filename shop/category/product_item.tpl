{ use app\services\ProductService as P}

<div class="g-col-3">
    <div class="b-product_item">
        <div class="b-product_title">
            <a href="{echo P::getUrl($product)}">
                <h4>{$product.title}</h4>
            </a>
        </div>
        <div class="b-product-image">
            <a href="{echo P::getUrl($product)}">
                <img src="{echo $product->getImgSrc('picture', 200)}" alt="{$product.title}">
            </a>
        </div>
        <div class="b-product_controls">
            {if $product.available}
                <div class="b-product_price">
                    <span>{echo P::getFPrice($product)}</span>
                </div>
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