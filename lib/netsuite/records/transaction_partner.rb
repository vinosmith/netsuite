module NetSuite
  module Records

    class TransactionPartner
      include Support::Records
      include Support::Fields
      include Support::Actions
      include Support::RecordRefs
      include Namespaces::ListRel

      fields :name, :isPrimary
      record_refs :klass, :partner_role, :partner

      attr_reader   :internal_id
      attr_accessor :external_id

      def initialize(attributes = {})
        @internal_id = attributes.delete(:internal_id) || attributes.delete(:@internal_id)
        @external_id = attributes.delete(:external_id) || attributes.delete(:@external_id)
        initialize_from_attributes_hash(attributes)
      end

    end

  end
end
