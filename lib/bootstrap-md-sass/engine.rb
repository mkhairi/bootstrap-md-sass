module Bootstrap
  module Md
    module Sass
      class Engine < ::Rails::Engine
        initializer 'boostrap-md-sass.assets.precompile' do |app|
          %w(stylesheets javascripts fonts images).each do |sub|
            app.config.assets.paths << root.join('app/assets', sub).to_s
          end
          app.config.assets.precompile << %r(MaterialDesignIcon\.(?:eot|svg|ttf|woff2?)$)
        end
      end
    end
  end
end
