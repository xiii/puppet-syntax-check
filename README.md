puppet-syntax-check
===================

Syntax check for puppet manifests,YAML files,ERB files plus puppet-lint.Usefull for git repos that have
puppet code.You can comment the puppet-lint part of the script if you are not interested in linting or
you can modify it to your environment.

## Installation of the pre-commit ##
 To use it copy the file pre-commit under the .git/hooks/ folder and then try to change and commit a pp,yaml,erb file to see it in action.

 Make sure you have puppet-lint installed for the lint part. ( gem install puppet-lint )

## ERB & YAML Validation ##

* ruby-yaml-validate.sh
* ruby-erb-validate.sh

Using ruby you can validate YAML files and ERB files.I use the same commands in the pre-commit script
with the only difference the input are the commited files.Using those shell scripts you can specify
the input file your self.

eg
 
```
$ ./ruby-yaml-validate.sh puppet/hiera/common.yaml
$ ./ruby-erb-validate.sh template/test.erb
```
