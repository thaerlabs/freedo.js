[#import "lib/layout.ftl" as layout]

[#include "components/slider.ftl"]

[@layout.extends name="layouts/base.ftl"]

	[@layout.put block="slider_area"]
		[@slider/]
	[/@layout.put]
	
[/@layout.extends]