defmodule CredoMultiAliasExample.Foo do
  @moduledoc "This module has a function"

  def test, do: :ok
end

defmodule CredoMultiAliasExample.Bar do
  @moduledoc "This module aliases another module"

  alias CredoMultiAliasExample.Foo
end

defmodule CredoMultiAliasExample.Baz do
  @moduledoc "This module aliases a different module under the same parent"

  alias CredoMultiAliasExample.Bar
end
