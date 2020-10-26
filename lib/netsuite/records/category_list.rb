module NetSuite
  module Records
    class CategoryList < Support::Sublist
      include Namespaces::ListRel
      sublist :category, NetSuite::Records::Category
      alias :categories :category
    end
  end
end
