# Definir modulo "Ruta.nombre del modulo" do
defmodule StoresWeb.HealthController do
  # Estoy incluyendo código definido en la funcion controller del modulo StoreWeb
  use StoresWeb, :controller

  # Definir la funcion que recibe el request del health
  # Las funciones reciben "conn" que es el que recibe la información del request
  # Las funciones reciben "params" son los parametros como los de la url (filtros e ids) y el body
  def health(conn, _params) do
    send_resp(conn, :ok, "xD")
  end
end
