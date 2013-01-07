source "https://rubygems.org"

gemspec


platforms :jruby do
  gem "activerecord-jdbc-adapter", require: false
end

group :test do
  platforms :ruby do
    gem "sqlite3"
  end

  platforms :jruby do
    gem "activerecord-jdbcsqlite3-adapter", require: false
  end
end
