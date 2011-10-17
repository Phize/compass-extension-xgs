module Xgs::SassExtensions::Functions
end

%w(compass_env).each do |func|
    require "#{Xgs.lib_directory}/xgs/sass_extensions/functions/#{func}"
end

module Sass::Script::Functions
    include Xgs::SassExtensions::Functions::CompassEnv unless method_defined? :compass_env
end
