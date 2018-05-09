class PersonController < Sinatra::Base

  $people = [{
      e_mail: "BlackD@gmail.com",
      firstName: "Dave",
      lastName: "Black",
      age: 59
    },
    {
      e_mail: "HouseH@gmail.com",
      firstName: "Hailey",
      lastName: "House",
      age: 31
    },
    {
      e_mail: "KramM@gmail.com",
      firstName: "Mark",
      lastName: "Kram",
      age: 22
    }]

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

    # Index
    get "/" do
      @title = "People"
      @person = $people
      erb :"posts/index"
    end

    # New
    get "/new" do
      "this is the new form"
    end
    # Show
    get "/:id" do
      id = params[:id].to_i
      @person = $people[id]
      erb :"posts/show"
    end

    # Edit
    get "/:id/edit" do
      id = params[:id].to_i
      @person = $people[id]
      erb :"posts/edit"
    end

    # Post
    post "/" do

      "POST"
    end

    # Update
    patch "/:id" do
      id = params[:id]

      "UPDATE: #{id}"
    end

    # Delete
    delete "/:id" do
      id = params[:id]

      "DELETE: #{id}"
    end

end
