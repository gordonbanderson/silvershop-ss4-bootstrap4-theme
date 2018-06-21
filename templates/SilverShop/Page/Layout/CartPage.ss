<div class="container content typography" id="ProductGroup">
    <div class="row">
        <article class="col-md-9">
            <h1>$Title</h1>
            $Content
            <% if $Cart %>

                <% if $CartForm %>
                    $CartForm
                <% else %>
                    <% with $Cart %><% include SilverShop\Cart\Cart Editable=true %><% end_with %>
                <% end_if %>

            <% else %>
                <p class="message warning"><%t SilverShop\Cart\ShoppingCart.NoItems "There are no items in your cart." %></p>
            <% end_if %>
            <div class="cartfooter">
                <% if $ContinueLink %>
                    <a class="continuelink btn btn-primary" href="$ContinueLink">
                        <%t SilverShop\Cart\ShoppingCart.ContinueShopping 'Continue Shopping' %>
                    </a>
                <% end_if %>
                <% if $Cart %>
                    <% if $CheckoutLink %>
                        <a class="btn btn-primary" href="$CheckoutLink">
                            <%t SilverShop\Cart\ShoppingCart.ProceedToCheckout 'Proceed to Checkout' %>
                        </a>
                    <% end_if %>
                <% end_if %>
            </div>
        </article>

        <% include SilverShop\Includes\SideBar %>

    </div>
</div>
