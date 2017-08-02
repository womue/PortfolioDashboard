The files in this folder will overwrite the default views by blacklight.

The blacklight documentation says: Overriding Views (templates and partials)...
As a Rails Engine, you can easily override views in your app. You can see what views and partials are provided by looking in ./app/views inside the Blacklight source. Once you find the view you'd like to change, you should create a file with the same name and relative path in your own application (e.g. if you wanted to override ./app/views/catalog/_show_partials/_default.html.erb you would create ./app/views/catalog/_show_partials/_default.html.erb in your local application. Frequently, you will start by copying the existing Blacklight view and modifying it from there.
It is generally recommended that you override as little as possible, in order to maximize your forward compatibility. Look to override either a small, focused partial template, or a helper method of partial template called from a larger template, so your application's version can call out to those same helpers or partial templates within blacklight core code.

Source: https://github.com/projectblacklight/blacklight/wiki/Providing-your-own-view-templates