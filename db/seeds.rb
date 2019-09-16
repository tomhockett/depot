# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all

images = Dir.glob('app/assets/images/*')
            .collect { |x| x.gsub('app/assets/images/', '') }
images_to_skip = ['rails.png', 'logo.svg', '7apps.jpg']

images.each do |img|
  next if images_to_skip.include?(img)

  Product.create!(title: FFaker::Book.title,
                  description:
                    %(<p>
                        <em>#{FFaker::Company.catch_phrase}</em>
                        #{FFaker::Book.description}
                    </p>),
                  image_url: img.to_s,
                  price: 26.00)
end
