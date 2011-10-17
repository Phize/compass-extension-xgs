module Xgs::SassExtensions::Functions::Color
    def hex_value(color)
        assert_type color, :Color
        Sass::Script::String.new(color.send(:hex_str)[1..-1])
    end
end
