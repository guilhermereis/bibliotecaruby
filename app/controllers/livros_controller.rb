class LivrosController < ApplicationController
  def create
    @pessoa = Pessoa.find(params[:pessoa_id])
    @livro = @pessoa.livros.create(params[:livro])
    redirect_to pessoa_path(@pessoa)
  end	
end
