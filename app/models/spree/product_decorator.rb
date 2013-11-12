Spree::Product.class_eval do
  default_scope order: "#{self.table_name}.name ASC"
end