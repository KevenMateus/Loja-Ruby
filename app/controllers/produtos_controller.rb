class ProdutosController < ApplicationController

    def index 

        @produtos = Produto.order:nome 

        @produtos_com_desconto = Produto.order(:preco).limit 10

    end

    def create 
      
       produto = params.require(:produto).permit(:nome, :descricao, :preco, :quantidade)        
        Produto.create produto
   redirect_to root_path
    end 

end  