class PostsController < ApplicationController
 before_action:authenticate_user!, except:[:index, :show]
 
 def index
    @posts=Post.all.reverse
  end
  
  def new
    @post=Post.new
  end
  
  def create
    @post=Post.new(post_params)
    @post.user_id=current_user.id
    if @post.save
    redirect_to @post
    else
    render 'new'
    
    end
    
  end
  
  def show
    @post=Post.find(params[:id])
    
  end
  
  def edit
    @post=Post.find(params[:id])
  end
  
  
  def update
    @post=Post.find(params[:id])
    @post.update(params[:post].permit(:title, :content))
    
    redirect_to root_path
  end
  
  
  def destroy
    @post=Post.find(params[:id])
    @post.destroy
    
    redirect_to root_path
    
  end
  def profile
    @profile_user=User.find(params[:id])
  end

  private
  
  def post_params
    params.require(:post).permit(:title, :content, :image)
  end
end
