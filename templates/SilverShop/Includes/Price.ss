<% if $PriceRange %>
	<div class="price">
		<span class="value">$PriceRange.Min.Nice</span>
		<% if $PriceRange.HasRange %>
			- <span class="value">$PriceRange.Max.Nice</span>
		<% end_if %>
		<span class="currency">$Price.Currency</span>
	</div>
<% else_if $Price %>
	<div class="price">
		<span class="value">$Price.Nice</span> <span class="currency">$Price.Currency</span>
	</div>
<% end_if %>
