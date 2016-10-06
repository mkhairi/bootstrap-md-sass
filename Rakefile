require "bundler/gem_tasks"

source_dir = "materialize-src" 

namespace :javascripts do
  
  task :turbolinks_init do
    files =  Dir.glob('app/assets/javascripts/**/*.js').reject { |file| file.end_with?(".min.js") and File.file?(file) }
    files.each do |file|
      selected_files = %w(empty-state.js carousel.js button-ripple.js smooth-scrolling.js _init.js app-bar.js navigation-drawer.js ramjet.js)
      file_name = File.basename file
      #only selected file
      if selected_files.include?(file_name)
        content = File.read(file)
        fixed_content = content.gsub("$(document).ready(", "$(document).on('turbolinks:load', ")
        File.open(file, "w") { |f| f.puts fixed_content}
      end
    end
  end 
  

  desc "Setup javascript assets"
  task setup: [:turbolinks_init]
end

namespace :stylesheets do


end

desc "Setup or update assets files"
task setup: ["javascripts:setup"]
