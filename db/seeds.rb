# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Productmain.delete_all
pm1 = Productmain.create!(name:'Clothes')
pm2 = Productmain.create!(name:'Accessories')
pm3 = Productmain.create!(name:'Shoes')
pm4 = Productmain.create!(name:'Bags')

ProductType.delete_all
pt1 = ProductType.create!(name:'Sweatshirt')
pt2 = ProductType.create!(name:'Jackets & Coats')
pt3 = ProductType.create!(name:'Trouser')
pt4 = ProductType.create!(name:'Jumpers & Cardigans')
pt5 = ProductType.create!(name:'T-shirts')
pt6 = ProductType.create!(name:'Shirts')
pt7 = ProductType.create!(name:'Shorts')
pt8 = ProductType.create!(name:'Suits')
pt9 = ProductType.create!(name:'Belts')
pt10 = ProductType.create!(name:'Ties')
pt11 = ProductType.create!(name:'Caps & Hats')
pt12 = ProductType.create!(name:'Boat shoes')
pt13 = ProductType.create!(name:'Boots')
pt14 = ProductType.create!(name:'Flip Flops')
pt15 = ProductType.create!(name:'Formal Shoes')
pt16 = ProductType.create!(name:'Loafer & Drivers')
pt17 = ProductType.create!(name:'Pimsolls')
pt18 = ProductType.create!(name:'Trainers')
pt19 = ProductType.create!(name:'Bum Bag')
pt20 = ProductType.create!(name:'Flight Bag')
pt21 = ProductType.create!(name:'Messenger Bag')
pt22 = ProductType.create!(name:'Satchel')

ProductBrandName.delete_all
pb1 = ProductBrandName.create!(name:'Disel')
pb2 = ProductBrandName.create!(name:'Ralph Laurent')
pb3 = ProductBrandName.create!(name:'Espirit')
pb4 = ProductBrandName.create!(name:'Ted Baker')
pb5 = ProductBrandName.create!(name:'River Island')

Size.delete_all
s1 = Size.create!(name:'S')
s2 = Size.create!(name:'M')
s3 = Size.create!(name:'L')

Colour.delete_all
c1 = Colour.create!(name:'Black')
c2 = Colour.create!(name:'Brown')
c3 = Colour.create!(name:'Beige')
c4 = Colour.create!(name:'Blue')
c5 = Colour.create!(name:'Gold')
c6 = Colour.create!(name:'Grey')
c7 = Colour.create!(name:'Green')
c8 = Colour.create!(name:'Navy')
c9 = Colour.create!(name:'Black')
c10 = Colour.create!(name:'Orange')
c11 = Colour.create!(name:'Purple')
c12 = Colour.create!(name:'Pink')
c13 = Colour.create!(name:'Red')
c14 = Colour.create!(name:'Stone')
c15 = Colour.create!(name:'Tan')
c16 = Colour.create!(name:'White')
c17 = Colour.create!(name:'Yellow')
c18 = Colour.create!(name:'Multi')

User.delete_all
u1 = User.new(firstName: 'richill', lastName: 'tamakloe', email: 'richill@gmail.com', password: 'password', password_confirmation: 'password')
u1.save!

Product.delete_all
p1 = Product.create!(name:'Bellis Heritage T-shirt Slim Fit', product_type_id: pt6.id, price: 15.00, product_brand_name_id: pb1.id, size_id: s1.id,  colour_id: c1.id, stock: 5, description: 'Lorem ipsum dolor sit amet ac dapibus quam, sed ornare augue. Nunc rutrum felis eget placerat pellentesque. Sed vel vestibulum quam. Nunc malesuada risus quis rhoncus porttitor. Pellentesque tristique varius placerat. Donec est ligula, feugiat nec pulvinar aliquam, imperdiet ut arcu.', productmain_id: pm1.id, product_image: File.open(File.join(Rails.root, '/public/images/seed_pic1.jpg')))

p2 = Product.create!(name:'Geep Heritage T-shirt Slim Fit', product_type_id: pt6.id, price: 25.00, product_brand_name_id: pb1.id, size_id: s2.id,  colour_id: c3.id, stock: 3, description: 'Lorem ipsum dolor sit amet ac dapibus quam, sed ornare augue. Nunc rutrum felis eget placerat pellentesque. Sed vel vestibulum quam. Nunc malesuada risus quis rhoncus porttitor. Pellentesque tristique varius placerat. Donec est ligula, feugiat nec pulvinar aliquam, imperdiet ut arcu.', productmain_id: pm1.id, product_image: File.open(File.join(Rails.root, '/public/images/seed_pic2.jpg')))

p3 = Product.create!(name:'River Island T-Shirt', product_type_id: pt6.id, price: 18.00, product_brand_name_id: pb5.id, size_id: s2.id,  colour_id: c1.id, stock: 4, description: 'Lorem ipsum dolor sit amet ac dapibus quam, sed ornare augue. Nunc rutrum felis eget placerat pellentesque. Sed vel vestibulum quam. Nunc malesuada risus quis rhoncus porttitor. Pellentesque tristique varius placerat. Donec est ligula, feugiat nec pulvinar aliquam, imperdiet ut arcu.', productmain_id: pm1.id, product_image: File.open(File.join(Rails.root, '/public/images/seed_pic3.jpg')))

p4 = Product.create!(name:'ASOS Stripe Long Sleeve T-Shirt', product_type_id: pt6.id, price: 55.00, product_brand_name_id: pb4.id, size_id: s2.id,  colour_id: c4.id, stock: 2, description: 'Lorem ipsum dolor sit amet ac dapibus quam, sed ornare augue. Nunc rutrum felis eget placerat pellentesque. Sed vel vestibulum quam. Nunc malesuada risus quis rhoncus porttitor. Pellentesque tristique varius placerat. Donec est ligula, feugiat nec pulvinar aliquam, imperdiet ut arcu.', productmain_id: pm1.id, product_image: File.open(File.join(Rails.root, '/public/images/seed_pic4.jpg')))

p5 = Product.create!(name:'Serschel Little America Backpack', product_type_id: pt22.id, price: 15.00, product_brand_name_id: pb3.id, size_id: s2.id,  colour_id: c6.id, stock: 2, description: 'Lorem ipsum dolor sit amet ac dapibus quam, sed ornare augue. Nunc rutrum felis eget placerat pellentesque. Sed vel vestibulum quam. Nunc malesuada risus quis rhoncus porttitor. Pellentesque tristique varius placerat. Donec est ligula, feugiat nec pulvinar aliquam, imperdiet ut arcu.', productmain_id: pm4.id, product_image: File.open(File.join(Rails.root, '/public/images/seed_pic6.jpg')))

p6 = Product.create!(name:'Yack Wills Backpack', product_type_id: pt21.id, price: 35.00, product_brand_name_id: pb4.id, size_id: s1.id,  colour_id: c8.id, stock: 1, description: 'Lorem ipsum dolor sit amet ac dapibus quam, sed ornare augue. Nunc rutrum felis eget placerat pellentesque. Sed vel vestibulum quam. Nunc malesuada risus quis rhoncus porttitor. Pellentesque tristique varius placerat. Donec est ligula, feugiat nec pulvinar aliquam, imperdiet ut arcu.', productmain_id: pm4.id, product_image: File.open(File.join(Rails.root, '/public/images/seed_pic7.jpg')))

p7 = Product.create!(name:'Backpack with Contrast Straps', product_type_id: pt21.id, price: 45.00, product_brand_name_id: pb2.id, size_id: s3.id,  colour_id: c11.id, stock: 4, description: 'Lorem ipsum dolor sit amet ac dapibus quam, sed ornare augue. Nunc rutrum felis eget placerat pellentesque. Sed vel vestibulum quam. Nunc malesuada risus quis rhoncus porttitor. Pellentesque tristique varius placerat. Donec est ligula, feugiat nec pulvinar aliquam, imperdiet ut arcu.', productmain_id: pm4.id, product_image: File.open(File.join(Rails.root, '/public/images/seed_pic8.jpg')))

p8 = Product.create!(name:'Rackspace with Straps', product_type_id: pt21.id, price: 18.00, product_brand_name_id: pb5.id, size_id: s2.id,  colour_id: c6.id, stock: 2, description: 'Lorem ipsum dolor sit amet ac dapibus quam, sed ornare augue. Nunc rutrum felis eget placerat pellentesque. Sed vel vestibulum quam. Nunc malesuada risus quis rhoncus porttitor. Pellentesque tristique varius placerat. Donec est ligula, feugiat nec pulvinar aliquam, imperdiet ut arcu.', productmain_id: pm4.id, product_image: File.open(File.join(Rails.root, '/public/images/seed_pic5.jpg')))

p9 = Product.create!(name:'Felts Skinny Fit Smart Trousers In Cotton Sateen', product_type_id: pt3.id, price: 105.00, product_brand_name_id: pb3.id, size_id: s2.id,  colour_id: c16.id, stock: 6, description: 'Lorem ipsum dolor sit amet ac dapibus quam, sed ornare augue. Nunc rutrum felis eget placerat pellentesque. Sed vel vestibulum quam. Nunc malesuada risus quis rhoncus porttitor. Pellentesque tristique varius placerat. Donec est ligula, feugiat nec pulvinar aliquam, imperdiet ut arcu.', productmain_id: pm1.id, product_image: File.open(File.join(Rails.root, '/public/images/seed_pic9.jpg')))

p10 = Product.create!(name:'Slim Chinos In Denim Herringbone', product_type_id: pt3.id, price: 105.00, product_brand_name_id: pb1.id, size_id: s2.id,  colour_id: c8.id, stock: 1, description: 'Lorem ipsum dolor sit amet ac dapibus quam, sed ornare augue. Nunc rutrum felis eget placerat pellentesque. Sed vel vestibulum quam. Nunc malesuada risus quis rhoncus porttitor. Pellentesque tristique varius placerat. Donec est ligula, feugiat nec pulvinar aliquam, imperdiet ut arcu.', productmain_id: pm1.id, product_image: File.open(File.join(Rails.root, '/public/images/seed_pic10.jpg')))

p11 = Product.create!(name:'Vintage ironous Tie', product_type_id: pt10.id, price: 11.00, product_brand_name_id: pb4.id, size_id: s2.id,  colour_id: c13.id, stock: 1, description: 'Lorem ipsum dolor sit amet ac dapibus quam, sed ornare augue. Nunc rutrum felis eget placerat pellentesque. Sed vel vestibulum quam. Nunc malesuada risus quis rhoncus porttitor. Pellentesque tristique varius placerat. Donec est ligula, feugiat nec pulvinar aliquam, imperdiet ut arcu.', productmain_id: pm2.id, product_image: File.open(File.join(Rails.root, '/public/images/seed_pic11.jpg')))

p12 = Product.create!(name:'Slip On Plimsolls', product_type_id: pt17.id, price: 25.00, product_brand_name_id: pb1.id, size_id: s2.id,  colour_id: c6.id, stock: 1, description: 'Lorem ipsum dolor sit amet ac dapibus quam, sed ornare augue. Nunc rutrum felis eget placerat pellentesque. Sed vel vestibulum quam. Nunc malesuada risus quis rhoncus porttitor. Pellentesque tristique varius placerat. Donec est ligula, feugiat nec pulvinar aliquam, imperdiet ut arcu.', productmain_id: pm3.id, product_image: File.open(File.join(Rails.root, '/public/images/seed_pic12.jpg')))


