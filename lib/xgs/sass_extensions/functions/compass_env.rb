module Xgs::SassExtensions::Functions::CompassEnv
    def compass_env
        Sass::Script::String.new((Compass.configuration.environment || 'development').to_s)
    end
end
