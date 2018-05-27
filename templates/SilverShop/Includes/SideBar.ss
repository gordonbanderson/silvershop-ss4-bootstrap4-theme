<div id="Sidebar" class="col-md-3">
    <% if $GroupsMenu %>
        <% include SilverShop\Includes\ProductMenu %>
    <% else %>
        <% with $Parent %>
            <% include SilverShop\Includes\ProductMenu %>
        <% end_with %>
    <% end_if %>
    <div class="cart mt4">
      <% include SilverShop\Cart\SideCart %>
  </div>
</div>
