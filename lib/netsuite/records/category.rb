module NetSuite
  module Records
    class Category
      include Support::RecordRefs
      include Support::Fields
      include Support::Records
      include Namespaces::ListRel

      attr_reader   :internal_id
      attr_accessor :external_id
      def initialize(attributes = {})
        @internal_id = attributes.delete(:internal_id) || attributes.delete(:@internal_id)
        @external_id = attributes.delete(:external_id) || attributes.delete(:@external_id)
      end

    end
  end
end
