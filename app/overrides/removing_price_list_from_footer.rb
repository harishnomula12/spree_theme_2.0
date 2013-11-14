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