
quarta-feira, 15 de janeiro de 2014
Ruby - How to Create GEMS
How to Create GEMS
    Very simple to create a GEM
    1. Create the directory structure
    .
    --- Rakefile
    --- bin
         --- hello_anderson
    --- hello_anderson.gemspec
    --- lib
         --- hello_anderson.rb
    --- test
         --- test_hello_anderson.rb

        Inside lib it is necessary to have a rb file with the same name of the GEM.
        Ex:
            class HelloAnderson
              def self.say_hello
                puts "Hello Anderson!"
              end
            end

    hello_anderson.gemspec is responsible for model the gem.  Inside it we have what the gem is and its version.  
    Ex:
        Gem::Specification.new do |s|
          s.name        = 'hello_anderson'
          s.version     = '0.0.0'
          s.date        = '2013-12-12'
          s.summary     = "Hellow Anderson!"
          s.description = "Example of a gem saing hello to Anderson"
          s.authors     = ["Anderson Araujo Lopes"]
          s.email       = 'romalopes@yahoo.com.br'
          s.files       = ["lib/hello_anderson.rb", other files...]
          s.homepage    =
            'http://rubygems.org/gems/hello_anderson'
          s.license       = 'MIT'
        end

    To build a GEM
        $ gem build hello_anderson.gemspec
    To install a GEM
        $ gem install ./hello_anderson-0.0.0.gem

    To use a GEM
        use: require "hello_anderson"
                HelloAnderson.say_hello

    The published geuemms are in: 
        http://rubygems.org/
        Process:
        1. To setup the computer with your RubyGems account:
            $ curl -u qrush https://rubygems.org/api/v1/api_key.yaml >
~/.gem/credentials; chmod 0600 ~/.gem/credentials
        2 . gem push hello_anderson-0.0.0.gem

    To see the GEM in rubygems.org
        $ gem list -r hello_anderson
    To install the GEM from rubygems.org
        $ gem install hola

Adding a executable
    place the file bin/hello_anderson
    chmod a+x bin/hello_anderson

    #!/usr/bin/env ruby

    require 'hello_anderson'
    puts Hola.say_hello()


    To run the GEM
        $ ruby -Ilib ./bin/hello_anderson

    Test
        Fill Rakefile
            require 'rake/testtask'
            Rake::TestTask.new do |t|
              t.libs << 'test'
            end

            desc "Run tests"
            task :default => :test

        Fill test/test_hello_anderson.rb
            require 'test/unit'
            require 'hello_anderson'

            class HelloAndersonTest < Test::Unit::TestCase
              def test_hello_anderson
                assert_equal "Hello Anderson", HelloAnderson.say_hello
              end
            end

        run test
            $ rake test
            OR
            $ rake

    Rest Rspec
      $ rspec --init
            Result:
               create   .rspec
               create   spec/spec_helper.rb

    Document
        Gems use RDoc to generate docs

    Git
      git init
      git add . 
      git commit xxxxx
      git remote add origin https://github.com/romalopes/hello_anderson.git
      git push https://github.com/romalopes/hello_anderson.git --all
