<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        [@layout.block name="title"]
            <title>${title!'page title'}</title>
        [/@layout.block]


        [@layout.block name="header_styles"]
            <link rel="stylesheet" href="css/global.css">
        [/@layout.block]
    </head>
    <body>

        <div class="top-nav"></div>
        <div class="main-nav"></div>

        <div class="wrapper">
            
            [@layout.block name="slider_area" /]

            <div class="container">
                <div class="main">
                    [@layout.block name="container__main"]
                        <h1>Main Content</h1>
                    [/@layout.block]
                </div>
                <!-- end main -->
                <div class="sidebar">
                    [@layout.block name="container__sidebar"]
                        <h3>Sidebar Content</h3>
                    [/@layout.block]
                </div>
                <!-- end sidebar -->
            </div>
            <!-- end container -->
            <div class="footer"></div>
        </div>
        <!-- end wrapper -->
        
        [@layout.block name="footer_scripts"]
        [/@layout.block]
    </body>
</html>