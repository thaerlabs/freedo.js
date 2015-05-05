[#macro slider]

	[@layout.put block="header_styles"]
		<style>
			.stage {
				padding: 50px 0;
				margin: 0 auto 20px;
				width: 62.5rem;
				background-color: #ddd;
			}
		</style>
	[/@layout.put]

	<div class="stage">
		<p style="text-align:center">I'm a slider and I'm on slide: <span id="slider__count">1</span></p>
	</div>

	[@layout.put block="footer_scripts"]
		<script>
			var sliderCount = document.getElementById('slider__count'),
				i = 2;

			setInterval(function(){
				sliderCount.innerHTML = i;
				i = (i%6 == 0) ? 1 : i + 1;
			}, 1000);
		</script>
	[/@layout.put]
[/#macro]