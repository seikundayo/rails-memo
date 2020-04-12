class MemosController < ApplicationController
    def index
        @memos = Memo.all.order(updated_at: :desc)
    end
    def new
        @categories = Category.all
    end
    def create
        memo = Memo.create(title: params["memos"]["title"], body: params["memos"]["body"], category_id:params["memos"]["category_id"])
        memo.save
        redirect_to "/"
    end
    def destroy
        memo = Memo.find(params[:id])
        memo.destroy
        redirect_to"/"
    end
    def edit
        @memo = Memo.find(params[:id])
        @categories =Category.all
    end
    def update
        memo = Memo.find(params[:id])
        memo.title = params["memos"]["title"]
        memo.body = params["memos"]["body"]
        memo.category_id = params["memos"]["category_id"]
        memo.save
        redirect_to"/"
    end
end
