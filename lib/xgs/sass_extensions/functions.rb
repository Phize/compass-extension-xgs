module Xgs::SassExtensions::Functions
end

%w(compass_env number color).each do |func|
    require "#{Xgs.lib_directory}/xgs/sass_extensions/functions/#{func}"
end

module Sass::Script::Functions
    include Xgs::SassExtensions::Functions::CompassEnv
    include Xgs::SassExtensions::Functions::Number
    include Xgs::SassExtensions::Functions::Color
end
