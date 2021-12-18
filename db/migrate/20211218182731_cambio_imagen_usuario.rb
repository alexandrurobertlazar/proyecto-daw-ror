class CambioImagenUsuario < ActiveRecord::Migration[6.1]
  def change
    ## Cambiamos el tipo de dato de la imagen de string a binario
    remove_column :users, :image
    add_column :users, :image, :binary
  end
end
