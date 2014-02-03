######################## WORKING CODE BOTH SEARCH OPTIONS AND BUTTON ####################

Deface::Override.new(:virtual_path => "spree/shared/_filters",
	:name => "removing filters",
	:remove => "[data-hook='navigation'],erb[loud]:contains('t(:search)')"
)
Deface::Override.new(:virtual_path => "spree/shared/_sidebar",
	:name => "removing sidebar",
	:remove => "[id='sidebar']"
)

############################################## END OF WORKING CODE ##############################################

Deface::Override.new(:virtual_path => 'spree/address/_form',
  :name => 'add_lastname_label_to_address',
  :remove => "erb[loud]:contains('label :lastname')"
)
Deface::Override.new(:virtual_path => 'spree/address/_form',
  :name => 'add_lastname_*_to_address',
  :remove => "[class='required']"
)
Deface::Override.new(:virtual_path => 'spree/address/_form',
  :name => 'add_lastname_text_to_address',
  :replace => "erb[loud]:contains('text_field :lastname')",
  :text => "<%= form.label :lastname, Spree.t(:last_name) %></span><br />
            <%= form.text_field :lastname %>"
)

######################################### LAST NAME REMOVED PARTIALLY ##############################
