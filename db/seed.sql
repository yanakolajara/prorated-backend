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
  

INSERT INTO reviews(contractor_id, name, review, rating)
VALUES (1, 'carl', 'great service', 5), (1, 'mike', 'ok service', 3), (2, 'juan', 'i could do better', 1);




INSERT INTO images (contractor_id, image_url)
VALUES
  (1, 'https://www.cookremodeling.com/wp-content/uploads/general-contractor-01.jpg'),
  (1, 'http://st.depositphotos.com/1758504/2325/i/450/depositphotos_23254310-Male-construction-workers-pointing-at-house-under-construction.jpg'),
  (1, 'https://www.fortrockconstruction.com/uploads/1/0/5/4/105498039/istock-991867390-web_orig.jpg'),
  (1, 'https://aircontrolsnc.com/wp-content/uploads/2020/04/Stairs1-500x500.jpg'),
  (1, 'https://aircontrolsnc.com/wp-content/uploads/2020/04/JF-6300sf-Home0-730x400.jpg'),
  (2, 'https://ogradyslandscape.com/wp-content/uploads/2012/09/services_general.jpg'),
  (2, 'https://s42814.pcdn.co/wp-content/uploads/2020/01/Landscaping-iStock-498015683.0-768x576-300x300.jpg.webp'),
  (2, 'https://tjsgenerallandscaping.com/photo/tjsgenerallandscapingcom/general-landscaping.jpg'),
  (2, 'https://carolinaserviceslandscaping.com/wp-content/uploads/2021/07/carolina_grounds_hiring_landscapers.jpg'),
  (2, 'https://forevergreenlandscaper.com/wp-content/uploads/2020/09/west-palm-beach-florida-lawn-care-services-300x200.jpg'),
  (3, 'https://www.paramountroof.com/wp-content/uploads/roof-repair-roof-replace.jpg'),
  (3, 'https://4aroofing.com/wp-content/uploads/2022/07/Questions-To-Ask-Your-Roofing-Contractor.jpg'),
  (3, 'https://www.bryantx.gov/wp-content/uploads/2018/04/roof-repairs.jpg'),
  (3, 'https://primeroofingfl.com/wp-content/uploads/roofing-contractor-at-work.jpg'),
  (3, 'https://lirp.cdn-website.com/91d816be/dms3rep/multi/opt/7-432w.jpg'),
  (4, 'https://lirp.cdn-website.com/ca0987e6/dms3rep/multi/opt/GettyImages-1204813771-698w.jpg'),
  (4, 'https://rocketcert.com/images/category/construction/plumbingtraineeR.jpg'),
  (4, 'https://halbrookplumbing.com/wp-content/uploads/2018/01/demo-image-2.jpg'),
  (4, 'https://www.callrobertsplumbing.com/design/pages/plumbing-service/new-construction-3.jpg'),
  (4, 'https://pvu.thebluebook.com/inc/img/qp/53533/plumbing-services.jpg'),
  (5, 'https://www.homeadvisor.com/r/wp-content/uploads/2016/01/two-electricians-working.jpeg'),
  (5, 'https://www.nextinsurance.com/wp-content/uploads/2019/12/december_2019_17-300x300.jpg'),
  (5, 'https://www.ahelectric.com/wp-content/uploads/2019/08/electric-box.jpg'),
  (5, 'https://www.espelectrical.net/fbm-data/images/pages/lighting-installation.jpg'),
  (5, 'https://thumbs.dreamstime.com/b/electrician-worker-installation-electric-lamps-light-inside-apartment-construction-decoration-concept-electrician-worker-180152652.jpg'),
  (6, 'https://certapro.com/milwaukee/wp-content/uploads/sites/1296/cache/2018/08/z_footer/3702568283.jpg'),
  (6, 'https://procrewschedule.com/wp-content/uploads/2021/06/painting-img-2-cmp.jpg'),
  (6, 'https://www.housepaintinginc.com/images/interior/reseda-house.jpg'),
  (6, 'https://lirp.cdn-website.com/d1d8c52f/dms3rep/multi/opt/home+remodeling+mission+viejo+CA-396w.jpg'),
  (6, 'https://acleanlook.com/wp-content/uploads/2023/03/interiorpaint1_before-300x300.jpg'),
  (7, 'https://www.qf4l.com/wp-content/uploads/2017/12/Why-Hire-Professional-Flooring-Contractors.jpg'),
  (7, 'https://images.finehomebuilding.com/app/uploads/2014/02/10172728/project-house-wood-floor-repair-16x9-thumb-16x9.jpg'),
  (7, 'https://concetticontracting.com/wp-content/uploads/2014/09/tile-flooring-300x296.jpg'),
  (7, 'https://dynamicprotectivecoat.com/wp-content/uploads/2022/10/Flooring-Contractor-in-Maryland-Heights-MO-1-300x200.jpg'),
  (7, 'https://kelmwoodflooring.com/images/floor_refinishing_2_375x250-OptimizedSmushed.jpg');
