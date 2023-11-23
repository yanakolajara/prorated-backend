\c prorated_dev;

INSERT INTO 
    users(username, password, email, first_name, last_name, phone_number, profile_picture, location)
VALUES
  ('john_doe', 'password123', 'john.doe@example.com', 'John', 'Doe', '555-123-4567', 'https://media.licdn.com/dms/image/C5103AQGuwfeQgfoVvA/profile-displayphoto-shrink_800_800/0/1567531966812?e=2147483647&v=beta&t=pO6Bx-mJSM_RSJM3ooVe0e2DivgGQ-VafcZDLHHaNIM', 'New York'),
  ('jane_smith', 'pass456', 'jane.smith@example.com', 'Jane', 'Smith', '555-987-6543', 'https://www.perfocal.com/blog/content/images/size/w960/2021/01/Perfocal_17-11-2019_TYWFAQ_100_standard-3.jpg', 'Los Angeles'),
  ('bob_jones', 'letmein', 'bob.jones@example.com', 'Bob', 'Jones', '555-567-8901', 'https://avatarfiles.alphacoders.com/209/209573.jpg', 'Chicago'),
  ('sarah_white', '12345678', 'sarah.white@example.com', 'Sarah', 'White', '555-234-5678', 'https://cloudfront-us-east-2.images.arcpublishing.com/reuters/EHAIKCVG6NLBNNVXZE7AXPAAJ4.jpg', 'San Francisco'),
  ('mike_jackson', 'p@ssw0rd', 'mike.jackson@example.com', 'Mike', 'Jackson', '555-876-1234', 'https://celebdial.s3.amazonaws.com/celeb_pic/michael-jackson.jpg', 'Miami');

INSERT INTO
  contractors(name, description, location)
VALUES
  ('Smith Construction', 'General construction services for residential and commercial projects', 'Brooklyn'),
  ('GreenScape Landscaping', 'Specializing in sustainable and creative landscaping solutions', 'Manhattan'),
  ('Swift Roofing Experts', 'Swift and reliable roofing services with attention to detail', 'Brooklyn'),
  ('PlumbMasters', 'Your go-to experts for all plumbing needs, from repairs to installations', 'Queens' ),
  ('PowerSpark Electricians', 'Powerful solutions for all your electrical needs', 'Manhattan, Bronx'),
  ('ColorSplash Painters', 'Transforming spaces with a splash of colors and professional painting', 'Staten Island'),
  ('FloorCrafters', 'Crafting beautiful and durable floors with precision and expertise', 'NYC'),
  ('CoolBreeze HVAC', 'Keeping your home comfortable with top-notch HVAC maintenance', 'Hempstead'),
  ('PlumberMike', 'Keeping your home comfortable with top-notch HVAC maintenance', 'Manhattan'),
  ('PlumbingMike', 'Keeping your home comfortable with top-notch HVAC maintenance', 'Queens'),
 ('MasterCrafter Carpentry', 'Masterful carpentry and woodwork for unique and custom projects', 'Bronx');


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
  