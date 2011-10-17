module Xgs::SassExtensions::Functions::Number
    def int(number)
        assert_type number, :Number
        Sass::Script::Number.new(number.to_i)
    end
end
