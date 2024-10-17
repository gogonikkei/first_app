class PostsController < ApplicationController
  def index  # indexアクションを定義した
    @posts = Post.all  # すべてのレコードを@postsに代入
  end

  def new
  end

  def create
    Post.create(content: params[:content])
    redirect_to "/posts"
  end
end


# config/routes.rbを見ると、こことのつながりがわかる
# routesには、
# get 'posts', to 'posts#index' とある
# これはpostsというパスにGETメソッドでリクエストが送られてきた時に
# postsコントローラーのindexアクションを呼び出す、
# という設定であることがわかる
# 
#routingとコントロ設定が繋がってdbができたここまでできて初めて
#アプリrails s！！
#
#<%= @post %>  <%# RubyコードをHTMLに埋め込む %>覚えること

