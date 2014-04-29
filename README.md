puppet-syntax-check
===================

Syntax check for puppet manifests,YAML files,ERB files plus puppet-lint.Usefull for git repos that have puppet code.You can comment the puppet-lint part of the script if you are not interested in linting or you can modify it to your environment.

## Installation ##
 To use it copy the file pre-commit under the .git/hooks/ folder and then try to change and commit a pp,yaml,erb file to see it in action.

 Make sure you have puppet-lint installed for the lint part. ( gem install puppet-lint )
