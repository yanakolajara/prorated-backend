\c prorated_dev;

INSERT INTO 
    users(username, password, email, first_name, last_name, phone_number, profile_picture, location)
VALUES
  ('john_doe', 'password123', 'john.doe@example.com', 'John', 'Doe', '555-123-4567', 'https://media.licdn.com/dms/image/C5103AQGuwfeQgfoVvA/profile-displayphoto-shrink_800_800/0/1567531966812?e=2147483647&v=beta&t=pO6Bx-mJSM_RSJM3ooVe0e2DivgGQ-VafcZDLHHaNIM', 'New York'),
  ('jane_smith', 'pass456', 'jane.smith@example.com', 'Jane', 'Smith', '555-987-6543', 'https://www.perfocal.com/blog/content/images/size/w960/2021/01/Perfocal_17-11-2019_TYWFAQ_100_standard-3.jpg', 'Los Angeles'),
  ('bob_jones', 'letmein', 'bob.jones@example.com', 'Bob', 'Jones', '555-567-8901', 'https://avatarfiles.alphacoders.com/209/209573.jpg', 'Chicago'),
  ('sarah_white', '12345678', 'sarah.white@example.com', 'Sarah', 'White', '555-234-5678', 'https://cloudfront-us-east-2.images.arcpublishing.com/reuters/EHAIKCVG6NLBNNVXZE7AXPAAJ4.jpg', 'San Francisco'),
  ('mike_jackson', 'p@ssw0rd', 'mike.jackson@example.com', 'Mike', 'Jackson', '555-876-1234', 'https://celebdial.s3.amazonaws.com/celeb_pic/michael-jackson.jpg', 'Miami');

INSERT INTO contractors (name, description, ratings, reviews) VALUES
  ('Aundale', 'Experienced contractor in Electrician', 4, 20),
  ('Michael', 'Skilled in service 2 and Plumbing', 3, 15),
  ('Luis', 'Specializes in service 1 and Landscaping', 5, 30);


INSERT INTO services (name) VALUES
  ('Electrician'),
  ('Plumbing'),
  ('Carpentry'),
  ('Landscaping');

INSERT INTO contractors_services (contractor_id, service_id) VALUES
  (1, 1), -- Contractor1 offers Service1
  (2, 2), -- Contractor2 offers Service2
  (2, 3), -- Contractor2 also offers Service3
  (3, 1), -- Contractor3 offers Service1
  (3, 4); -- Contractor3 offers Service4

  INSERT INTO images (contractor_id, image_url) VALUES
    (1, "https://conductiveelectric.com/wp-content/uploads/2015/09/electricianworkingelectricalpanel.jpg"),
    (2, 'https://electricianridgewood.com/wp-content/uploads/2018/04/Wiring-New-Construction.jpg'),
  

