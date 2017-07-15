# Lsgh (ls github)

List a github organisation/user repositories and open pull requests for each repository in a directory hirarchy format

## Installation

install if via `gem`, an executable `lsgh` will be available in your system

    $ gem install lsgh

## Usage

```
Usage: lsgh [options]...
    -v, --version                    Print version
    -h, --help                       Show this help text
    -t, --token=github_token         Github access token, if not specified the environment variable GITHUB_API_TOKEN is used
    -o, --org=organisation_name      github organisation name to list repositories for
    -u, --user=username              github user name to list repositories for
    -r, --repo=Repository            list a specific repository pull requests for this user or org
```

## Example output

```
$ lsgh -u blazeeboy
```

lists all repositories in that format
```
user/private|public/repo name/user name/pull request title
```

```
blazeeboy/public/active_admin
blazeeboy/public/Airpad
blazeeboy/public/amun
blazeeboy/public/askwiki
blazeeboy/public/awesome-static-analysis
blazeeboy/public/Birdflu
blazeeboy/public/blazeeboy.github.io
blazeeboy/public/Bounce-Game
blazeeboy/public/capistrano-decompose
blazeeboy/public/chef-postgresql
blazeeboy/public/Codeigniter-Egypt
blazeeboy/public/CodeIgniter-Ion-Auth
blazeeboy/public/Colosseum-plugin
blazeeboy/public/CommunityRules
blazeeboy/public/CS3D499-Plugin
blazeeboy/public/darkroomjs
blazeeboy/public/deploy
blazeeboy/public/devtools
blazeeboy/public/dirtree
blazeeboy/public/dirtree/nemoload/Local dependencies
blazeeboy/public/EgyptianGeeksArchive
blazeeboy/public/fb2jekyll
blazeeboy/public/Gamra
blazeeboy/public/Github-PHP-Wiki
blazeeboy/public/inquirer.rb
blazeeboy/public/jumping-blocks
blazeeboy/public/noty
blazeeboy/public/octopress
blazeeboy/public/portableBrowser
blazeeboy/public/QA
blazeeboy/public/Quantum
blazeeboy/public/rubrowser
blazeeboy/public/RubyScripts
blazeeboy/public/Sefa-lang
blazeeboy/public/Sema-lang
blazeeboy/public/timer
blazeeboy/public/Todo
blazeeboy/public/touch-mouse
blazeeboy/public/xlog
```

## Conjunctions

You can use it in conjunction with [dirtree](https://www.github.com/blazeeboy/dirtree) to draw an interactive tree from the output.

![](http://i.imgur.com/nkmQNKu.png)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/blazeeboy/lsgh. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Lsgh project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/blazeeboy/lsgh/blob/master/CODE_OF_CONDUCT.md).
