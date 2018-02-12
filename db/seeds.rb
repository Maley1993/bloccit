require 'random_data'

# Create Posts

50.times do
  Post.create!(

    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

posts.find_or_create_by(title: 'Uqkduqye') do |post|
  post.body = RandomData.random_paragraph
end

# Create Comments
# #3
100.times do
  Comment.create!(
# #4
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end
Comment.find_or_create_by(body: 'a nicely written comment body') do |comment|
  comment.post_id = 51
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
