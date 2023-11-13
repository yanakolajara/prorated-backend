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
  contractors(name, description, ratings, reviews)
VALUES
  ('Smith Construction', 'General construction services for residential and commercial projects', 4.8, 35),
  ('GreenScape Landscaping', 'Specializing in sustainable and creative landscaping solutions', 4.5, 28),
  ('Swift Roofing Experts', 'Swift and reliable roofing services with attention to detail', 4.9, 42),
  ('PlumbMasters', 'Your go-to experts for all plumbing needs, from repairs to installations', 4.7, 39),
  ('Wired Wizards', 'Electrical wizards providing safe and efficient wiring solutions', 4.6, 31),
  ('ColorSplash Painters', 'Transforming spaces with a splash of colors and professional painting', 4.9, 47),
  ('FloorCrafters', 'Crafting beautiful and durable floors with precision and expertise', 4.8, 36),
  ('CoolBreeze HVAC', 'Keeping your home comfortable with top-notch HVAC maintenance', 4.7, 40),
  ('BugBusters Pest Control', 'Busting bugs and pests to keep your home and business pest-free', 4.6, 29),
  ('MasterCrafter Carpentry', 'Masterful carpentry and woodwork for unique and custom projects', 4.8, 38),
  ('IronGuard Fencing', 'Providing strong and aesthetically pleasing fence installations', 4.7, 33),
  ('CrystalClear Windows', 'Experts in professional window replacement for energy-efficient homes', 4.9, 45),
  ('ApplianceSavers', 'Saving your appliances with quick and reliable repair services', 4.5, 27),
  ('BathBliss Remodeling', 'Bringing bliss to your bathroom with transformative remodeling', 4.8, 41),
  ('SecureHaven Security', 'Creating secure havens with advanced home security installations', 4.9, 50),
  ('PowerSpark Electricians', 'Powerful solutions for all your electrical needs', 4.7, 37);


INSERT INTO 
  services(name, description, image)
VALUES
  ('Home Renovation', 'Complete renovation services for residential properties', 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
  ('Landscaping Design', 'Customized landscaping design and implementation', 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
  ('Roof Repair', 'Professional roof repair and maintenance', 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
  ('Plumbing Services', 'Comprehensive plumbing solutions for homes and businesses', 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
  ('Electrical Wiring', 'Safe and efficient electrical wiring installation and repair', 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
  ('Painting Services', 'Interior and exterior painting services with a variety of color options', 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
  ('Flooring Installation', 'High-quality flooring installation for different types of flooring', 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
  ('HVAC Maintenance', 'Regular maintenance and repair of heating, ventilation, and air conditioning systems', 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
  ('Pest Control', 'Effective pest control services for homes and commercial spaces', 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
  ('Carpentry and Woodwork', 'Custom carpentry and woodwork for various projects', 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
  ('Fence Installation', 'Durable and aesthetically pleasing fence installation', 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
  ('Window Replacement', 'Professional window replacement services for improved energy efficiency', 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
  ('Appliance Repair', 'Quick and reliable repair services for household appliances', 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
  ('Bathroom Remodeling', 'Transformative bathroom remodeling with modern designs', 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
  ('Home Security Installation', 'Installation of advanced home security systems for enhanced safety', 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg'),
  ('Electrician', 'Skilled electricians for all your electrical needs', 'https://cdn1.vectorstock.com/i/1000x1000/32/95/isometric-construction-vertical-composition-vector-18283295.jpg');


INSERT INTO
  contractors_services (contractor_id, service_id)
VALUES
  (1, 1),
  (1, 3),
  (2, 2),
  (2, 10),
  (3, 4),
  (3, 11),
  (4, 5),
  (4, 14),
  (5, 6),
  (5, 15),
  (6, 7),
  (6, 8),
  (7, 9),
  (7, 12),
  (8, 13),
  (8, 16),
  (9, 12),
  (9, 16),
  (10, 16),
  (10, 16);
