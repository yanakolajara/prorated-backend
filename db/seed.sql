
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
  

