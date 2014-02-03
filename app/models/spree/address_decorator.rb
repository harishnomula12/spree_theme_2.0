Spree::Address.class_eval do

   # Remove the requirement on :lastname being present.
  _validators.reject!{ |key, _| key == :lastname }

  _validate_callbacks.each do |callback|
    callback.raw_filter.attributes.delete :lastname if callback.raw_filter.is_a?(ActiveModel::Validations::PresenceValidator)
  end
end
