class Fixnum
  define_method(:allergies) do
    target_score = self

    output = []

    allergens = {"cats"         => 128,
                 "pollen"       => 64,
                 "chocolate"    => 32,
                 "tomatoes"     => 16,
                 "strawberries" => 8,
                 "shellfish"    => 4,
                 "peanuts"      => 2,
                 "eggs"         => 1}

    until target_score.==(0)
      allergens.each do |k1, v1|
        if target_score >= (v1)
          output.push(k1)
          target_score = target_score.-(v1)
        end
      end
    end

    output

  end
end
