require 'compass'

module Xgs
end

module Xgs
    def base_directory
        File.expand_path(File.join(File.dirname(__FILE__), '..'))
    end
    def lib_directory
        File.expand_path(File.join(File.dirname(__FILE__)))
    end
    module_function :base_directory, :lib_directory
end

%w(sass_extensions).each do |lib|
   require "#{Xgs.lib_directory}/xgs/#{lib}"
end

Compass::Frameworks.register('xgs', :path => Xgs.base_directory)
