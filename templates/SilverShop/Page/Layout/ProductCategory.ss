<div class="container content typography" id="ProductGroup">
    <div class="row">
        <article class="col-md-9">
            <h1>$Title</h1>
            $Content
            <% if $Products %>
                <div id="Products" class="category row">
                        <% loop $Products %>
                            <% include SilverShop\Includes\ProductGroupItem %>
                        <% end_loop %>
                </div>
                <% with $Products %><% include PageFurniture/Pagination %><% end_with %>

            <% end_if %>
        </article>

        <% include SilverShop\Includes\SideBar %>

    </div>
</div>
