module NetSuite
  module Records
    class AdHocItem
      include Support::Fields
      include Support::RecordRefs
      include Support::Records
      include Support::Actions
      include Namespaces::ListAcct

      actions :search

      attr_reader :internal_id
      attr_accessor :external_id, :search_joins

      def initialize(attributes = {})
        @internal_id = attributes.delete(:internal_id) || attributes.delete(:@internal_id)
        @external_id = attributes.delete(:external_id) || attributes.delete(:@external_id)
        @attributes = attributes
      end

      def self.search_class_name
        "Item"
      end
    end
  end
end
