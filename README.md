# CredoMultiAliasExample

Repository to report what I think is a bug in [credo](https://github.com/rrrene/credo)

## What this is

This repository was made through the following steps:
- `mix new credo_multi_alias_example`
- `mix credo gen.config`
- Editing `.credo.exs` to enable `Credo.Check.Consistency.MultiAliasImportRequireUse`
- Deleting the unused `test` folder
- Adding the files found in `lib`

If you run `mix credo` you will see it reports:
> Consistency  
> ┃  
> ┃ [C] ↗ Most of the time you are using the multi-alias/require/import/use syntax, but here you are using multiple single directives  
> ┃       lib/credo_multi_alias_example.ex:16 #(CredoMultiAliasExample.Baz)  

But this is a false negative because those aren't aliases in the same scope, they can't be collapsed into a multi-alias.
