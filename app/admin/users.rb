ActiveAdmin.register User do

  index do
    column :email
    column :username
    column :avatar
    column :admin
    column :created_at
    column :friend_count
    column :tweets_count
    column :likes_given
    column :retweet_given

    actions
  end
end
