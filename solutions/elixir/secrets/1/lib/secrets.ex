defmodule Secrets do
  def secret_add(secret) do
    # Please implement the secret_add/1 function
    adder = fn param ->
      param + secret
    end
  end

  def secret_subtract(secret) do
    subtract = &(&1 - secret)
  end

  def secret_multiply(secret) do
    # Please implement the secret_multiply/1 function
    multiply = fn param ->
      param * secret
    end
  end

  def secret_divide(secret) do
    divide = fn param -> 
      div(param, secret)
    end
  end

  def secret_and(secret) do
    bitwise_and = fn param -> 
      Bitwise.band(param, secret)
    end
  end

  def secret_xor(secret) do
    xor = fn param -> 
      Bitwise.bxor(param, secret)
    end
  end

  def secret_combine(secret_function1, secret_function2) do
    combine = fn param -> 
    param 
    |> secret_function1.() 
    |> secret_function2.()
    end
  end
end
