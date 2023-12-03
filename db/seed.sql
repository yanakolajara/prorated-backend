\c prorated_dev;

INSERT INTO 
    users(username, password, email, first_name, last_name, phone_number, profile_picture, location)
VALUES
  ('john_doe', 'password123', 'john.doe@example.com', 'John', 'Doe', '555-123-4567', 'https://media.licdn.com/dms/image/C5103AQGuwfeQgfoVvA/profile-displayphoto-shrink_800_800/0/1567531966812?e=2147483647&v=beta&t=pO6Bx-mJSM_RSJM3ooVe0e2DivgGQ-VafcZDLHHaNIM', 'New York'),
  ('jane_smith', 'pass456', 'jane.smith@example.com', 'Jane', 'Smith', '555-987-6543', 'https://www.perfocal.com/blog/content/images/size/w960/2021/01/Perfocal_17-11-2019_TYWFAQ_100_standard-3.jpg', 'Los Angeles'),
  ('bob_jones', 'letmein', 'bob.jones@example.com', 'Bob', 'Jones', '555-567-8901', 'https://avatarfiles.alphacoders.com/209/209573.jpg', 'Chicago'),
  ('sarah_white', '12345678', 'sarah.white@example.com', 'Sarah', 'White', '555-234-5678', 'https://cloudfront-us-east-2.images.arcpublishing.com/reuters/EHAIKCVG6NLBNNVXZE7AXPAAJ4.jpg', 'San Francisco'),
  ('mike_jackson', 'p@ssw0rd', 'mike.jackson@example.com', 'Mike', 'Jackson', '555-876-1234', 'https://celebdial.s3.amazonaws.com/celeb_pic/michael-jackson.jpg', 'Miami');

INSERT INTO contractors (name, description, jobtitle, location, experience, contact, phone_number)
VALUES
('Smith Construction', 'General construction services for residential and commercial projects', 'Construction Manager', 'City ABC', 4.8, 'smith@example.com', '987-654-3210' 
),
   ('GreenScape Landscaping', 'Specializing in sustainable and creative landscaping solutions', 'Landscaping Specialist', 'City PQR', 4.5, 'greenscape@example.com', '111-222-3333'
),
  ('Swift Roofing Experts', 'Swift and reliable roofing services with attention to detail', 'Roofing Expert', 'City DEF', 4.9, 'swiftroofing@example.com', '555-666-7777' 
 ),
  ('PlumbMasters', 'Your go-to experts for all plumbing needs, from repairs to installations', 'Master Plumber', 'City GHI', 4.7, 'plumbmasters@example.com', '999-888-7777' 
   ),
  ('PowerSpark Electricians', 'Powerful solutions for all your electrical needs', 'Electrical Specialist', 'City MNO', 4.7, 'powerspark@example.com', '333-444-5555'
   ),
  ('ColorSplash Painters', 'Transforming spaces with a splash of colors and professional painting', 'Professional Painter', 'City LMN', 4.9, 'colorsplash@example.com', '777-888-9999' 
  ),
  
  ('FloorCrafters', 'Crafting beautiful and durable floors with precision and expertise', 'Flooring Specialist', 'City XYZ', 4.8, 'floorcrafters@example.com', '222-333-4444' 
  ),
  
  ('CoolBreeze HVAC', 'Keeping your home comfortable with top-notch HVAC maintenance', 'HVAC Technician', 'City UVW', 4.7, 'coolbreeze@example.com', '666-777-8888' 
  ),
  
  ('MasterCrafter Carpentry', 'Masterful carpentry and woodwork for unique and custom projects', 'Carpentry Expert', 'City JKL', 4.8, 'mastercrafter@example.com', '444-555-6666'
  );


INSERT INTO 
  services(name, description, custom, image)
VALUES
  ('Home Renovation', 'Complete renovation services for residential properties', FALSE , 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
  ('Landscaping Design', 'Customized landscaping design and implementation', FALSE , 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
  ('Roof Repair', 'Professional roof repair and maintenance', FALSE , 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
  ('Plumbing Services', 'Comprehensive plumbing solutions for homes and businesses', FALSE , 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
   ('Painting Services', 'Interior and exterior painting services with a variety of color options', FALSE , 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
  ('Flooring Installation', 'High-quality flooring installation for different types of flooring', FALSE , 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
  ('HVAC Maintenance', 'Regular maintenance and repair of heating, ventilation, and air conditioning systems', FALSE , 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
 ('Carpentry and Woodwork', 'Custom carpentry and woodwork for various projects', FALSE , 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
('Electrician', 'Skilled electricians for all your electrical needs', FALSE , 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg');


INSERT INTO
  contractors_services (contractor_id, service_id)
VALUES
  (1, 1),
  (1, 3),
  (2, 2),
 
  (3, 3),
 
  (4, 4),

  (5, 9),
 
  (6, 5),
  
  (7, 6),
  
  (8, 7),
  
  (9, 8);
  

INSERT INTO reviews(contractor_id, user_id, review, rating)
VALUES (1, 1, 'great service', 5), (1, 2, 'ok service', 3), (2, 3, 'i could do better', 1);