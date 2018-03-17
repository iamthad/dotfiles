# Defined in - @ line 0
function dig-mdns --description 'alias dig-mdns=dig @224.0.0.251 -p 5353'
	dig @224.0.0.251 -p 5353 $argv;
end
