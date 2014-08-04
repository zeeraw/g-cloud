module GCloud

  LOTS = Hash[
    "IaaS" => 1,
    "PaaS" => 2,
    "SaaS" => 3,
    "SCS"  => 4,
  ].freeze

  module Lot

    def self.by_number(number)
      LOTS.invert[number.to_i]
    end

    def self.by_term(term)
      Hash[ LOTS.map { |k,v| [ k.upcase, v ] } ][term.to_s.upcase]
    end

    def self.list
      LOTS.keys
    end

  end

end