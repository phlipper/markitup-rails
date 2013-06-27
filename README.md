# markitup-rails

## Description

The [markItUp!](http://markitup.jaysalvat.com/home/) universal markup editor, bundled for Rails 3.1+ Asset Pipeline.

markItUp! is a JavaScript plug-in built on the jQuery library. It allows you to turn any textarea into a markup editor. HTML, Textile, Wiki Syntax, Markdown, BBcode or even your own Markup system can be easily implemented.

`markitup-rails` ships with several markup "sets" and editor "skins" including:

### Markup Sets

* `bbcode`
* `css`
* `default`
* `dotclear`
* `html`
* `markdown`
* `markmin`
* `rest`
* `textile`
* `texy`
* `txt2tags`
* `wiki`
* `xbbcode`

### Editor Skins

* `markitup`
* `simple`


## Requirements

This gem requires Rails 3.1+ and has been tested on the following versions:

* 3.1
* 3.2

This gem requires Ruby 1.9+ and has been tested against the following Ruby versions:

* 1.9.2
* 1.9.3
* JRuby
* Rubinius


## Installation

Add this line to your application's Gemfile:

```ruby
gem "markitup-rails"
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install markitup-rails
```


## Configuration

The `Markitup::Rails` module accepts a `configure` block with options to customize the engine behavior.

Place any custom configuration in a file such as `config/initializers/markitup_rails.rb`.


### Layout

Set the `layout` option to customize the layout used by the AJAX live preview:

```ruby
Markitup::Rails.configure do |config|
  config.layout = "other"  # default is `markitup`
end
```

You may also override the default locally by creating a new layout file at `app/views/layouts/markitup.html.erb`.

### Formatter

Set the `formatter` option to customize the renderer for the preview. This can be any object that responds to `call` and which takes a single argument with the markup to render:

```ruby
Markitup::Rails.configure do |config|
  config.formatter = -> markup { BBCodeParser.parse(markup) }
end
```

### Route

`markitup-rails` provides a URL endpoint that be mounted to support a live server-side preview of markItUp! content.

To enable, mount the engine in your `config/routes.rb` file:

```ruby
mount Markitup::Rails::Engine, at: "markitup", as: "markitup"
```

This will create a URL helper for `markitup.preview_url` which will route to `/markitup/preview`.

The preview URL will render the editor content using the `config.formatter` and display the content within the `config.layout`.


## Usage

For Rails 3.1 and greater, the files will be added to the asset pipeline and available for you to use.

To enable the markItUp! editor in your application, you will need to include the appropriate JavaScript and Stylesheet files for the Set and Skin you wish to use.

Example:

* Add the following line to the file `app/assets/javascripts/application.js` (or other [sprockets](https://github.com/sstephenson/sprockets) manifest):

```javascript
//= require markitup
//= require markitup/sets/xbbcode/set
```

* Add the following line to the file `app/assets/stylesheets/application.css`:

```css
*= require markitup/skins/markitup/style
*= require markitup/sets/xbbcode/style
```

You may also include the styles in your SCSS file directly:

```scss
@import "markitup/skins/markitup/style";
@import "markitup/sets/xbbcode/style";
```


### Using markItUp!

Example:

```coffee
jQuery ->

  # Target all text areas
  $("textarea").markItUp mySettings

  # Target a specific ID
  $("#my_id").markItUp mySettings

  # Target a specific class
  $("textarea.markitup").markItUp mySettings
```

See the [markItUp! documentation](http://markitup.jaysalvat.com/documentation/) for more information.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a Pull Request


## Contributors

Many thanks go to the following who have contributed to making this gem even better:

* **[@ugorelik](https://github.com/ugorelik)**
    * initial version
* **[@phlipper](https://github.com/phlipper)**
    * complete rewrite as an engine for Rails 3.1+
    * add AJAX live preview support
    * add support for Sets and Skins, add many defaults to choose from
* **[@ilja](https://github.com/ilja)**
    * update markitup to version 1.1.14
* **[@zinenko](https://github.com/zinenko)**
    * fix invalid images url in simple skin
* **[@tamaloa](https://github.com/tamaloa)**
    * added default /markitup/preview path to all default settings
* **[@tgjones](https://github.com/tgjones)**
    * allow multiple settings objects to be used within a single page


## License

**markitup-rails**

* Freely distributable and licensed under the [MIT license](http://phlipper.mit-license.org/2013/license.html).
* Copyright (c) 2013 Phil Cohen (github@phlippers.net) [![endorse](http://api.coderwall.com/phlipper/endorsecount.png)](http://coderwall.com/phlipper)
* http://phlippers.net/

**markItUp!**

* Author: [Jay Salvat](http://www.jaysalvat.com/)
* Licence: MIT/GPL
* http://markitup.jaysalvat.com/

markItUp! is released under both the MIT and GPL Open Source licenses.
In short, this means that markItUp! is totally Free, and you can do whatever you want with it. You are only obligated to keep the credits in place.
