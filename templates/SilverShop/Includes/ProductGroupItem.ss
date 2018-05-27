<div class="col-sm-6 col-lg-4">
    <div class="card mb-4">
        <% if $Image %>
            <a href="$Link"
               title="<%t SilverShop\Generic.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$Title %>">
                <img class="card-img-top" src="$Image.Thumbnail(200,200).URL"
                     alt="<%t SilverShop\Page\Product.ImageAltText "{Title} image" Title=$Title %>"/>
            </a>
        <% end_if %>
        <div class="card-body">
            <h3 class="card-title productTitle"><a href="$Link"
                                                   title="<%t SilverShop\Generic.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$Title %>">$Title</a>
            </h3>
            <p class="card-text">Some example text.</p>
            <% include SilverShop\Includes\Price %>

            <% if $Model %><p><strong><%t SilverShop\Page\Product.Model "Model" %>:</strong> $Model.XML</p><% end_if %>

            <% if $View %>
                <div class="view">
                    <a href="$Link"
                       title="<%t SilverShop\Generic.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$Title %>">
                        <%t SilverShop\Page\Product.View "View Product" %>
                    </a>
                </div>
            <% else %>
                <% if $canPurchase %>
                    <div class="add">
                        <a href="$addLink"
                           title="<%t SilverShop\Page\Product.AddToCartTitle "Add &quot;{Title}&quot; to your cart" Title=$Title %>">
                            <%t SilverShop\Page\Product.AddToCart "Add to Cart" %>
                            <% if $IsInCart %>
                                ($Item.Quantity)
                            <% end_if %>
                        </a>
                    </div>
                <% end_if %>
            <% end_if %>
        </div>
    </div>
</div>
