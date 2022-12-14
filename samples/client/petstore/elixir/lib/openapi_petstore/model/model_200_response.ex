# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenapiPetstore.Model.Model200Response do
  @moduledoc """
  Model for testing model name starting with number
  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :class
  ]

  @type t :: %__MODULE__{
    :name => integer() | nil,
    :class => String.t | nil
  }
end

defimpl Poison.Decoder, for: OpenapiPetstore.Model.Model200Response do
  def decode(value, _options) do
    value
  end
end

