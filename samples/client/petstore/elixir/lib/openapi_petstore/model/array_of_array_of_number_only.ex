# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenapiPetstore.Model.ArrayOfArrayOfNumberOnly do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :ArrayArrayNumber
  ]

  @type t :: %__MODULE__{
    :ArrayArrayNumber => [[float()]] | nil
  }
end

defimpl Poison.Decoder, for: OpenapiPetstore.Model.ArrayOfArrayOfNumberOnly do
  def decode(value, _options) do
    value
  end
end

