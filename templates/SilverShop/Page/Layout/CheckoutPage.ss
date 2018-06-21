<% require css("silvershop/core: client/dist/css/checkout.css") %>


<div class="container content typography" id="Checkout">
    <div class="row">
        <article class="col-md-12">
            <div class="breadcrumbs">$Breadcrumbs</div>

            <h1>$Title</h1>

            <% if $PaymentErrorMessage %>
                <div class="message error alert alert-danger">
                    <%t SilverShop\Page\CheckoutPage.PaymentErrorMessage 'Received error from payment gateway:' %>
                    $PaymentErrorMessage
                </div>
            <% end_if %>

            $Content

            <% if $Cart %>
                <% with $Cart %>
                    <% include SilverShop\Cart\Cart ShowSubtotals=true %>
                <% end_with %>
                $OrderForm
            <% else %>
                <div class="alert alert-warning message warning"><%t SilverShop\Cart\ShoppingCart.NoItems "There are no items in your cart." %></div>
            <% end_if %>

        </article>
    </div>
</div>
