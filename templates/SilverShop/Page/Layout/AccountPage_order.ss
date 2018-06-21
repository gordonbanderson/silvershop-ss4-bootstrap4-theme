<div class="container content typography" id="Account">
    <div class="row">
        <article class="col-md-12">
            <div class="breadcrumbs">$Breadcrumbs</div>

            <h1>$Title</h1>

            <% if $Order %>
                <% with $Order %>
                    <h2><%t SilverShop\Model\Order.OrderHeadline "Order #{OrderNo} {OrderDate}" OrderNo=$Reference OrderDate=$Created.Nice %></h2>
                <% end_with %>
            <% end_if %>
            <% if $Message %>
                <p class="message $MessageType">$Message</p>
            <% end_if %>
            <% if $Order %>
                <% with $Order %>
                    <% include SilverShop\Model\Order %>
                <% end_with %>
                $ActionsForm
            <% end_if %>

        </article>
    </div>
</div>
