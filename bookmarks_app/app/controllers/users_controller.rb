class UsersController < ApplicationController

  def index
    @users = all_users
  end

  def show 
    @user = all_users[params[:id].to_i]
  end

  def new
    
  end

  def create
    flash[:success] = "Welcome Cluterbox!"
    redirect_to user_path(1)
  end

  def edit
    
  end

  def update
    flash[:success] = "Updated Account"
    redirect_to user_path(1)
  end

  def destroy
    flash[:success] = "Removed user"
    redirect_to users_path
  end

  def all_users
    [
      { first_name: "Billy", 
        last_name:  "Bob",
        username:   "BBob",
        email:      "bbob@gmail.com",
        password:   "password",
        followers:  "2",
        following:  "4",
        bookmarks:  [
          {
            url:         "http://www.yahoo.com",
            domain:      "yahoo.com",
            title:       "I don't know why I bookmarked this",
            description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            rating:     1
          },
          {
            url:         "http://www.github.com",
            domain:      "github.com",
            title:       "My favorite git website",
            description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            rating:     4
          },
          {
            url:         "http://www.google.com",
            domain:      "google.com",
            title:       "Google: a wonderful search engine",
            description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            rating:     5
          },
          {
            url:         "http://blogs.reuters.com/felix-salmon/2012/09/18/kickstarter-vaporware-of-the-day-lifx-edition/",
            domain:      "blogs.reuters.com",
            title:       "Some article on kickstarter",
            description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            rating:     3
          },
        ]
      },
      { first_name: "Joe", 
        last_name:  "Smoe",
        username:   "Smoelester",
        email:      "smoe@gmail.com",
        password:   "password",
        followers:  "2",
        following:  "4",
        bookmarks:  [
          {
            url:         "http://www.yahoo.com",
            domain:      "yahoo.com",
            title:       "I don't know why I bookmarked this",
            description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            rating:     1
          },
          {
            url:         "http://www.github.com",
            domain:      "github.com",
            title:       "My favorite git website",
            description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            rating:     4
          },
          {
            url:         "http://www.google.com",
            domain:      "google.com",
            title:       "Google: a wonderful search engine",
            description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            rating:     5
          },
          {
            url:         "http://blogs.reuters.com/felix-salmon/2012/09/18/kickstarter-vaporware-of-the-day-lifx-edition/",
            domain:      "blogs.reuters.com",
            title:       "Some article on kickstarter",
            description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            rating:     3
          },
        ]
      },
      { first_name: "Sarah", 
        last_name:  "Connor",
        username:   "ihaterobots",
        email:      "skynetsucks@gmail.com",
        password:   "password",
        followers:  "2",
        following:  "4",
        bookmarks:  [
          {
            url:         "http://www.yahoo.com",
            domain:      "yahoo.com",
            title:       "I don't know why I bookmarked this",
            description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            rating:     1
          },
          {
            url:         "http://www.github.com",
            domain:      "github.com",
            title:       "My favorite git website",
            description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            rating:     4
          },
          {
            url:         "http://www.google.com",
            domain:      "google.com",
            title:       "Google: a wonderful search engine",
            description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            rating:     5
          },
          {
            url:         "http://blogs.reuters.com/felix-salmon/2012/09/18/kickstarter-vaporware-of-the-day-lifx-edition/",
            domain:      "blogs.reuters.com",
            title:       "Some article on kickstarter",
            description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            rating:     3
          },
        ]
      }
    ]
  end
end