markitup-rails
========================

This is a gem that contains the vendor assets for [markitup](http://markitup.jaysalvat.com/home/).

## Support 

Should support rails 3.0 and higher.

### Supported markup languages:

* `html`
* `textile`
* `markdown`
* `wiki`
* `texty`
* `css`

## Usage

### Installing the Gem

Require `markitup-rails` in your `Gemfile`.

    gem 'markitup-rails'
    
Install the gem via `bundle` command.


### Using it in your application

Add to `application.css`

    *= require markitup
    *= require markitup-[markup lang]

Example

    *= require markitup
    *= require markitup-textile

And in `application.js`

    //= require markitup
    //= require markitup-[markup lang]

Example

    //= require markitup
    //= require markitup-textile


### Using markitup

Include in either `application.js` or another file that will be included in the pipelin:

    // To target all text areas
    $(document).ready(function() {
      $("textarea").markItUp(mySettings);
    });
    
    //----- OR
    
    // To target a specific ID
    $(document).ready(function() {
      $("textarea#my_id").markItUp(mySettings);
    });
    
    //----- OR
    
    // To target a specific class
    $(document).ready(function() {
      $("textarea.markitup").markItUp(mySettings);
    });

    
See the [markitup documentation](http://markitup.jaysalvat.com/documentation/) for more info.

----

*Based on the [blueprint-rails gem](https://github.com/bai/blueprint-rails)*