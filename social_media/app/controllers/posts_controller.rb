class PostsController < ApplicationController

	# def index
	# 	@post = Post.all.json
	# 	render @post
	# end

	# def new
	# 	p "=====================hello i m in new================"		
	# end

	def create
		p "=====================hello i m here================"		
		title = params[:post][:title]
		text = params[:post][:text]
		# user = "1"
		post_params = {
			title: title,
			text: text,
			# user_id: user
		}
		@post = Post.new(post_params)
		if @post.save
			render json: {success: true, post: post_params}
		else
			p @post.errors.full_messages.join(', ')
			render json: {error: true}
		end
	end

	def index
		@post = Post.all
		render json: @post	
	end
end
