require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  describe "Signed in" do

    before(:each) {sign_in}

    describe "GET /posts/new " do
      it "responds with 200" do
      
        get :new
        expect(response).to have_http_status(200)
      end
    end

    describe "POST /" do
      it "responds with 200" do
        post :create, params: { post: { message: "Hello, world!" } }
        expect(response).to redirect_to(posts_url)
      end

      it "creates a post" do
        post :create, params: { post: { message: "Hello, world!" } }
        expect(Post.find_by(message: "Hello, world!").message).to eq "Hello, world!"
      end
    end

    describe "GET /" do
      it "responds with 200" do
        get :index
        expect(response).to have_http_status(200)
      end
    end

    # describe "PATCH /" do
    #   it "edits a post" do
    #     post :create, params: { post: { message: "Hello, world!" } }
    #     @id = Post.find_by(message: "Hello, world!").id
    #     post :update , params: { post: { message: "Hellooo, world!" } }
       
    #     expect(Post.find_by(message: "Hellooo, world!").message).to eq "Hellooo, world!"
    #   end
    # end
  end

  describe "Signed out" do
    describe "GET /posts/new " do
      it "responds with 302" do
        get :new
        expect(response).to have_http_status(302)
      end
    end
  end
end
