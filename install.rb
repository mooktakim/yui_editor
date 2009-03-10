require 'erb'

config = File.dirname(__FILE__) + '/../../../config/yui_editor.yml'

puts "Copying files..."

unless File.exist? config
  config_template = IO.read(File.dirname(__FILE__) + '/yui_editor.yml.tpl')
  File.open(config, 'w') { |f| f << ERB.new(config_template).result }
end

dir = "javascripts"
["yui-image-uploader.js"].each do |js_file|
	dest_file = File.join(RAILS_ROOT, "public", dir, js_file)
	src_file = File.join(File.dirname(__FILE__) , dir, js_file)
	FileUtils.cp_r(src_file, dest_file)
end

puts "Files copied - Installation complete!"

puts IO.read(File.join(File.dirname(__FILE__), 'README'))
