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
  ('Home Renovation', 'Complete renovation services for residential properties', FALSE , 'https://media.istockphoto.com/id/1145284794/photo/modern-home-kitchen-and-dinning-room.jpg?s=612x612&w=0&k=20&c=wnJMSdcBJ3EKHTzzpH20q2FZ4-o3EFW3gx6WYe5vnYc='),
  ('Landscaping Design', 'Customized landscaping design and implementation', FALSE , 'https://i.pinimg.com/564x/3d/ff/a2/3dffa254dcba0b7c540ecc4d80152435.jpg'),
  ('Roof Repair', 'Professional roof repair and maintenance', FALSE , 'https://i.pinimg.com/564x/f9/ac/ca/f9accafcf3fb6e77630a2edead689031.jpg'),
  ('Plumbing Services', 'Comprehensive plumbing solutions for homes and businesses', FALSE , 'https://i.pinimg.com/564x/b4/bb/68/b4bb683fcef239d8507b01351bda8d96.jpg'),
   ('Painting Services', 'Interior and exterior painting services with a variety of color options', FALSE , 'https://i.pinimg.com/564x/62/11/81/6211813e8878be3c7da57077d6457f6e.jpg'),
  ('Flooring Installation', 'High-quality flooring installation for different types of flooring', FALSE , 'https://i.pinimg.com/564x/bd/26/f2/bd26f26dc09bc9d7073c1546b06aa6f6.jpg'),
  ('HVAC Maintenance', 'Regular maintenance and repair of heating, ventilation, and air conditioning systems', FALSE , 'https://i.pinimg.com/564x/32/6c/4e/326c4e5dd91534b69f048c13eaca6511.jpg'),
 ('Carpentry and Woodwork', 'Custom carpentry and woodwork for various projects', FALSE , 'https://i.pinimg.com/564x/05/33/14/0533142f308c02a04baa5c0385aadf98.jpg'),
('Electrician', 'Skilled electricians for all your electrical needs', FALSE , 'https://i.pinimg.com/564x/70/d2/a5/70d2a5bfb09edcb66b7507e1a3e199ec.jpg');



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
  
INSERT INTO reviews(contractor_id, user_id, name, review, rating)
VALUES
 
  (1, 1, 'john_doe', 'great service', 5),
 
  (1, 2, 'jane_smith', 'ok service', 3),
 
  (2, 3, 'bob_jones', 'i could do better', 1);



INSERT INTO 
  project_listings (user_id, services_id, title, summary, budget, completed) 
  VALUES 
  (1, 1, 'Window Replacement', 'Looking for someone to replace my broken living room window ASAP', NULL, FALSE),
  (2, 9, 'House Rewiring, Expert Needed', 'I need my whole house rewired.', 1450, FALSE),
  (3, 1, 'Kitchen Remodel', 'We just built our first house and we are looking to redo the kitchen. Looking for an experienced renovator.', NULL, FALSE),
  (4, 5, 'Paint Job', '144sqft room to be painted. Paint supplied.', 125, FALSE),
  (5, 7, 'Radiator Down', 'Heat is on but no HEAT! Need Done ASAP', NULL, FALSE),
  (1, 6, 'Laminated Tile Job', 'Supplies Included. 500sqft of flooring to do.', 4000, TRUE),
  (1, 2, 'Tree Pruning', 'Redwood tree in need of pruning, 60ft ', 650, TRUE),
  (1, 5, 'Outlet Issues', 'Outlet is not powering.', NULL, TRUE),
  (2, 4, 'Bathtub Clogged', 'Tub is stopped.', NULL, FALSE);

