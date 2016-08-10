module Bootstrap
  module Md
    module Sass
      class Engine < ::Rails::Engine
        initializer 'boostrap-md-sass.assets.precompile' do |app|
          %w(stylesheets javascripts fonts images).each do |sub|
            app.config.assets.paths << root.join('app/assets', sub).to_s
          end
          app.config.assets.precompile << %r(material/MaterialIcons-Regular\.(?:eot|svg|ttf|woff2?)$)
          app.config.assets.precompile << %r(material/materialdesignicons-webfont\.(?:eot|svg|ttf|woff2?)$)
          app.config.assets.precompile << %r(roboto/Roboto-[\w-]+\.(?:eot|svg|ttf|woff|woff2?)$)
        end
      end
    end
  end
end
