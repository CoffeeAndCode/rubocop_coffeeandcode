# Rubocop Settings for Coffee and Code

This gem includes the base rubocop configuration preferences for [Coffee and Code][0].

## Installation

`rubocop_coffeeandcode` is [cryptographically signed][1]. To be sure the gem you install
hasn't been tampered with:

```
# Add my public key (if you haven’t already) as a trusted certificate
gem cert --add <(curl -Ls https://raw.github.com/CoffeeAndCode/rubocop_coffeeandcode/master/certs/coffeeandcode.pem)
```

Then, add this line to your application's Gemfile:

```ruby
group :development, :test do
  gem 'rubocop_coffeeandcode'
end
```

And then execute:

    $ bundle --trust-policy MediumSecurity

Or install it yourself as:

    $ gem install rubocop_coffeeandcode -P MediumSecurity

The MediumSecurity trust profile will verify signed gems, but allow the
installation of unsigned dependencies. This is necessary because not all of
this gem's dependencies are signed, so we cannot use HighSecurity.

Lastly, you'll need to explicitly require the extension in your Rubocop config
like so:

```yaml
inherit_gem:
  rubocop_coffeeandcode:
    - config/default.yml
    - config/rails.yml

inherit_mode:
  merge:
    - Exclude
# the rest of your app's custom config...
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then,
run `rake test` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

Make sure that the project has no errors when running `bundle exec rake` which
will run `rubocop` on the project source and `bundle exec rake test`.

To release a new version, update the version number in `lib/rubocop_coffeeandcode/version.rb` and run `bin/release`, which will do
the following:

- run tests
- run linters
- create a git tag for the version
- push git commits and tags
- push the `.gem` file to [rubygems.org][2]
- create checksums of new version
- create new git commit that adds new checksum files to the repo

### Increasing Current Certificate Expiration

Once a certificate expires, it can be re-signed to extend the expiration using the existing
private key with:

`gem cert --certificate ./certs/coffeeandcode.pem --days 365 --private-key ~/.ssh/gem-private_key.pem --re-sign`

## Contributing

While you can submit bug reports and pull requests on GitHub at https://github.com/CoffeeAndCode/rubocop_coffeeandcode, this gem is used for
a specific company's needs so not all issues or pull requests will be accepted.

[0]: https://www.coffeeandcode.com
[1]: http://guides.rubygems.org/security/
[2]: https://rubygems.org
