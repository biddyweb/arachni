require_relative '../../spec_helper'

describe name_from_filename do
    include_examples 'module'

    def self.targets
        %w(Oracle ColdFusion InterBase PostgreSQL MySQL MSSql EMC SQLite DB2 Informix)
        #%w(MSSQL)
    end

    def self.elements
        [ Element::FORM, Element::LINK, Element::COOKIE, Element::HEADER ]
    end

    def issue_count_per_element
        {
            Element::FORM   => 4,
            Element::LINK   => 4,
            Element::COOKIE => 2,
            Element::HEADER => 10
        }
    end

    easy_test
end