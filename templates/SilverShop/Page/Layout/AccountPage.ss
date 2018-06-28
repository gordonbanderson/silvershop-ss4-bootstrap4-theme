<% require css("silvershop/core: client/dist/css/account.css") %>

<div class="container content typography" id="Checkout">
    <div class="row">
        <article class="col-md-12">
            <div class="breadcrumbs">$Breadcrumbs</div>

            <h1>$Title</h1>

            $Content
            <h2 class="pagetitle"><%t SilverShop\Page\AccountPage.PastOrders 'Past Orders' %></h2>
            <% with $Member %>
                <% if $PastOrders %>
                    <% include SilverShop\Includes\OrderHistory %>
                <% else %>
                    <p class="message warning"><%t SilverShop\Page\AccountPage.NoPastOrders 'No past orders found.' %></p>
                <% end_if %>
            <% end_with %>

        </article>
    </div>
</div>
