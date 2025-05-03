# Style::TrailingCommaInArguments

When running RuboCop on a project I saw the following errors:

```
2 errors occurred:
An error occurred while Style/TrailingCommaInArguments cop was inspecting /IdeaProjects/kettle-soup-cover/kettle-soup-cover.gemspec:52:15.
An error occurred while Style/TrailingCommaInArguments cop was inspecting /IdeaProjects/kettle-soup-cover/kettle-soup-cover.gemspec:59:26.

Errors are usually caused by RuboCop bugs.
Please, update to the latest RuboCop version if not already in use, and report a bug if the issue still occurs on this version.
https://github.com/rubocop/rubocop/issues

Mention the following information in the issue report:
1.75.4 (using Parser 3.3.8.0, rubocop-ast 1.44.1, analyzing as Ruby 2.7, running on ruby 3.4.2) [x86_64-linux]
```

The code at those specific lines was:

```ruby
  spec.files = Dir[
    "lib/**/*.rb",
    "lib/**/rakelib/*.rake",
    "sig/**/*.rbs",
  ]
```

and

```ruby
  spec.extra_rdoc_files = Dir[
    "CHANGELOG.md",
    "CODE_OF_CONDUCT.md",
    "CONTRIBUTING.md",
    "LICENSE.txt",
    "README.md",
    "SECURITY.md",
  ]
```

In both cases the error pointed to the `D` in `Dir` on the first line of each.