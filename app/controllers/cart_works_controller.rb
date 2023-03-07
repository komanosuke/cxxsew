class CartWorksController < ApplicationController
    before_action :logged_in_user, except: [:create, :delete]
    before_action :set_cart_work, only: %i[ show edit update destroy ]
    
    # GET /cart_works or /cart_works.json
    def index
      @cart_works = CartWork.all
    end
    
    # GET /cart_works/1 or /cart_works/1.json
    def show
      @cart_work = CartWork.find(params[:id])
    end
    
    # GET /cart_works/new
    def new
      @cart_work = CartWork.new
    end
    
    # GET /cart_works/1/edit
    def edit
    end
    
    # POST /cart_works or /cart_works.json
    def create
      @cart_work = CartWork.new(cart_work_params)
      if @cart_work.save
        @work = Work.find(cart_work_params[:work_id])
        if @work.onlyone == '1'
            @cart_work.update(status: 'checked')
        else
            @cart_work.update(status: 'default')
        end
        redirect_to '/works/' + @cart_work.work_id.to_s
        flash[:notice] = "商品がカートに追加されました！"
      else
        redirect_to '/works/' + @cart_work.work_id.to_s
        flash.now[:alert] = "カートの作成に失敗しました。問題の発生が続く場合、次のメールアドレスまで問い合わせ願います。"
      end
    end
    
    # PATCH/PUT /cart_works/1 or /cart_works/1.json
    # def update
    #   # respond_to do |format|
    #   if @cart_work.update(cart_work_params)
    #     redirect_to "/cart_works/" + params[:id] + "/edit"
    #     flash[:notice] = "商品カテゴリーが更新されました！"
    #     # format.html { redirect_to cart_work_url(@cart_work), notice: "CartWork was successfully updated." }
    #     # format.json { render :show, status: :ok, location: @cart_work }
    #   else
    #     flash.now[:alert] = "作成に失敗しました"
    #     # format.html { render :edit, status: :unprocessable_entity }
    #     # format.json { render json: @cart_work.errors, status: :unprocessable_entity }
    #   end
    #   # end
    # end

    def delete
        @cart_work = CartWork.find_by(work_id: params[:work_id])
        @cart_work.destroy
        if params[:command] == 'show'
            redirect_to '/works/' + params[:work_id].to_s
            flash[:notice] = "商品が削除されました！"
        else
            redirect_to '/purchase'
            flash[:notice] = "商品が削除されました！"
        end
    end
    
    # DELETE /cart_works/1 or /cart_works/1.json
    def destroy
      @cart_work.destroy
    
      respond_to do |format|
        format.html { redirect_to cart_works_url, notice: "CartWork was successfully destroyed." }
        format.json { head :no_content }
      end
    end
    
    private
      def set_cart_work
        @cart_work = CartWork.find(params[:id])
      end
    
      def cart_work_params
        params.require(:cart_work).permit(:cart_id, :work_id, :status)
      end
end
  