
Spree::Product.class_eval do
  default_scope order: "#{self.table_name}.name + 0 ASC"
end
