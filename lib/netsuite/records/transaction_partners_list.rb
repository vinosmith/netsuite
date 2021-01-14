module NetSuite
  module Records
    class TransactionPartnersList < Support::Sublist
      include Namespaces::TranSales
      sublist :partners, TransactionPartner
    end
  end
end
