markitup-rails
========================

Gem for the vendor assets for markitup textile. Requires Rails 3.1 or higher. Currently only supports **textile** with simple skin.

## Usage

Add to application.css 

    *= require markitup
    *= require markitup-textile

And in application.js 

    //= require markitup
    //= require markitup-textile

Include in either `application.js` or another file that will be included in the pipelin:

    $(document).ready(function() {
      $("textarea").markItUp(mySettings);
    });

## Planned Development

* Support for rails 3.0
* All falvours of markitup (markdown, html, etc.)