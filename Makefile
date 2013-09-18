test :
	ruby rendered_maps.rb
maps:
	ruby -I lib/ generate.rb
	#	rake fech:maps
