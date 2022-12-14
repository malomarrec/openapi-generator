# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenapiPetstore.Model.File do
  @moduledoc """
  Must be named `File` for test.
  """

  @derive [Poison.Encoder]
  defstruct [
    :sourceURI
  ]

  @type t :: %__MODULE__{
    :sourceURI => String.t | nil
  }
end

defimpl Poison.Decoder, for: OpenapiPetstore.Model.File do
  def decode(value, _options) do
    value
  end
end

