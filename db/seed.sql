\c prorated_dev;

INSERT INTO 
    users(username, password, email, first_name, last_name, phone_number, profile_picture, location)
VALUES
  ('john_doe', 'password123', 'john.doe@example.com', 'John', 'Doe', '555-123-4567', 'https://media.licdn.com/dms/image/C5103AQGuwfeQgfoVvA/profile-displayphoto-shrink_800_800/0/1567531966812?e=2147483647&v=beta&t=pO6Bx-mJSM_RSJM3ooVe0e2DivgGQ-VafcZDLHHaNIM', 'New York'),
  ('jane_smith', 'pass456', 'jane.smith@example.com', 'Jane', 'Smith', '555-987-6543', 'https://www.perfocal.com/blog/content/images/size/w960/2021/01/Perfocal_17-11-2019_TYWFAQ_100_standard-3.jpg', 'Los Angeles'),
  ('bob_jones', 'letmein', 'bob.jones@example.com', 'Bob', 'Jones', '555-567-8901', 'https://avatarfiles.alphacoders.com/209/209573.jpg', 'Chicago'),
  ('sarah_white', '12345678', 'sarah.white@example.com', 'Sarah', 'White', '555-234-5678', 'https://cloudfront-us-east-2.images.arcpublishing.com/reuters/EHAIKCVG6NLBNNVXZE7AXPAAJ4.jpg', 'San Francisco'),
  ('mike_jackson', 'p@ssw0rd', 'mike.jackson@example.com', 'Mike', 'Jackson', '555-876-1234', 'https://celebdial.s3.amazonaws.com/celeb_pic/michael-jackson.jpg', 'Miami');

INSERT INTO contractors (name, description, jobtitle, location, experience, contact, phone_number, logo)
VALUES
('Smith Construction', 'Transforming dreams into reality, Smith Construction excels in providing comprehensive residential and commercial construction services. With a commitment to quality craftsmanship, we bring innovation and precision to every project, ensuring satisfaction from foundation to finishing touches.', 'Construction Manager', 'Albany, NY', 4.8, 'smith@example.com', '987-654-3210', 'https://i.imgur.com/Pteh4jv.png' 
),
   ('GreenScape Landscaping', 'Immerse yourself in the beauty of nature with GreenScape Landscaping. Our team specializes in creating sustainable and artistic landscaping solutions that harmonize with the environment. From vibrant gardens to tranquil outdoor spaces, we turn your landscape dreams into living, breathing works of art.', 'Landscaping Specialist', 'Utica, NY', 4.5, 'greenscape@example.com', '111-222-3333', 'https://i.imgur.com/O48kP3E.png'
),
  ('Swift Roofing Experts', 'Elevate your property with Swift Roofing Experts, where reliability meets excellence. Our roofing services are swift, efficient, and detail-oriented, ensuring your roof stands the test of time. Trust us to safeguard your home with top-notch craftsmanship and unparalleled expertise.', 'Roofing Expert', 'Long Island City, NY', 4.9, 'swiftroofing@example.com', '555-666-7777', 'https://i.imgur.com/i800wRz.png'
 ),
  ('PlumbMasters', 'PlumbMasters is your trusted partner for all things plumbing. From minor repairs to complex installations, our master plumbers bring unparalleled expertise and precision to every job. Expect seamless solutions and unmatched customer service for a stress-free plumbing experience.', 'Master Plumber', 'Rochester, NY', 4.7, 'plumbmasters@example.com', '999-888-7777', 'https://i.imgur.com/6T5TyXz.png'
   ),
  ('PowerSpark Electricians', 'Empower your space with PowerSpark Electricians. Our team delivers robust solutions for all your electrical needs, combining cutting-edge technology with seasoned expertise. From intricate wiring to energy-efficient installations, we spark innovation in every corner.', 'Electrical Specialist', 'Yonkers, NY', 4.7, 'powerspark@example.com', '333-444-5555', 'https://i.imgur.com/LKDY6qY.png'
   ),
  ('ColorSplash Painters', 'ColorSplash Painters brings life and personality to your surroundings. Our professional painters are artists with a brush, transforming spaces with a vibrant palette. Experience a splash of creativity and meticulous craftsmanship that turns your vision into a masterpiece.', 'Professional Painter', 'Saratoga Springs, NY', 4.9, 'colorsplash@example.com', '777-888-9999', 'https://i.imgur.com/J4XaYF8.png'
  ),
  
  ('FloorCrafters', 'Step into luxury with FloorCrafters, where every step is a work of art. We specialize in crafting beautiful and durable floors that elevate your space. With precision and expertise, we bring flooring dreams to life, creating a foundation for lasting beauty and comfort.', 'Flooring Specialist', 'Syracuse, NY', 4.8, 'floorcrafters@example.com', '222-333-4444', 'https://i.imgur.com/eatKemZ.png'
  ),
  
  ('CoolBreeze HVAC', 'CoolBreeze HVAC is your key to year-round comfort. Our top-notch HVAC technicians are dedicated to keeping your home cool in summer and warm in winter. Experience unmatched maintenance and service that ensures your indoor climate is always just right.', 'HVAC Technician', 'Plattsburgh, NY', 4.7, 'coolbreeze@example.com', '666-777-8888', 'https://i.imgur.com/W3LnoNR.png'
  ),
  
  ('MasterCrafter Carpentry', 'MasterCrafter Carpentry is where imagination meets craftsmanship. Our experts specialize in masterful carpentry and woodwork, creating unique and custom projects that reflect your style. From intricate details to sturdy structures, we bring your visions to life with unparalleled skill.', 'Carpentry Expert', 'Troy, Ny', 4.8, 'mastercrafter@example.com', '444-555-6666', 'https://i.imgur.com/Ga6f5wl.png?1'
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
 
  (2, 3, 'bob_robinson', 'i could do better', 1),



  (2, 1, 'Jayden_Perez', 'I recently hired Greenscape Landscaping for a landscaping project, and I am extremely satisfied with the results. The attention to detail, creativity, and dedication to customer satisfaction were impressive. Greenscape Landscaping transformed my outdoor space into a beautiful and functional area. I highly recommend their services.', 5),

  (2, 2, 'Peyton_Bryant', 'Working with Greenscape Landscaping was a positive experience. The team demonstrated professionalism, and the project was completed on schedule. I appreciate the effort they put into understanding my vision and delivering results that exceeded my expectations. I would definitely hire Greenscape Landscaping for future projects.', 4),

  (2, 3, 'Evelyn_Kim', 'Greenscape Landscaping is a reliable and skilled contractor. The communication throughout the project was excellent, and the team ensured that every aspect of the landscaping met my specifications. I am happy with the results, and my outdoor space now looks stunning. I highly recommend Greenscape Landscaping.', 5),
  
  (2, 4, 'Braxton_Lopez', 'I had the pleasure of working with Greenscape Landscaping on a landscaping project, and the results were outstanding. The team''s attention to detail and commitment to delivering high-quality work were evident from the start. Greenscape Landscaping exceeded my expectations, and I would enthusiastically recommend their services.', 5),

  (2, 5, 'Aubrey_Ramirez', 'Choosing Greenscape Landscaping for my landscaping needs was a great decision. The team was attentive, creative, and ensured that the project was completed to my satisfaction. Greenscape Landscaping transformed my outdoor space into a beautiful and functional area. I am impressed with their work.', 5),

  (2, 1, 'Kai_Holland', 'Greenscape Landscaping provided exceptional landscaping services. From the initial consultation to the final completion of the project, the team demonstrated professionalism and a keen eye for detail. I am thrilled with the results and would not hesitate to recommend Greenscape Landscaping to others.', 5),

  (2, 2, 'Lila_Campbell', 'I recently had the pleasure of working with Greenscape Landscaping on a landscaping project, and I am delighted with the results. The team''s creativity, attention to detail, and commitment to customer satisfaction were evident throughout the process. Greenscape Landscaping transformed my outdoor space into a beautiful oasis.', 4),

  (2, 3, 'Kaden_Wells', 'Greenscape Landscaping is a top-notch landscaping contractor. The team''s professionalism, expertise, and dedication to delivering quality work were evident from the beginning of the project. I am extremely satisfied with the results and would highly recommend Greenscape Landscaping for any landscaping needs.', 5),

  (2, 4, 'Raegan_McCarthy', 'I recently hired Greenscape Landscaping for a landscaping project, and the experience was fantastic. The team was responsive, and their attention to detail resulted in a beautifully landscaped outdoor space. Greenscape Landscaping delivered beyond my expectations, and I would gladly hire them for future projects.', 4),

  (2, 5, 'Zayden_Clark', 'Greenscape Landscaping is a trustworthy and skilled landscaping contractor. The team''s commitment to delivering high-quality work was evident throughout the project. I am pleased with the results, and my outdoor space now looks inviting and well-designed. I highly recommend Greenscape Landscaping.', 5),

  (2, 1, 'Aria_Torres', 'I recently had the pleasure of working with Greenscape Landscaping, and the experience was outstanding. The team''s professionalism, creativity, and attention to detail were commendable. Greenscape Landscaping transformed my outdoor space into a beautiful and functional area. I highly recommend their landscaping services.', 5),

  (2, 2, 'Ryker_Simmons', 'Working with Greenscape Landscaping was a positive experience from start to finish. The team was responsive, and the project was completed with precision. Greenscape Landscaping exceeded my expectations, and I am delighted with the results. I would not hesitate to recommend their landscaping services.', 4),

  (2, 3, 'Myla_Morris', 'Greenscape Landscaping is a reliable and skilled landscaping contractor. The team''s attention to detail, clear communication, and commitment to customer satisfaction were evident throughout the project. I am pleased with the landscaping results and would choose Greenscape Landscaping for future projects.', 5),

  (2, 4, 'Kobe_Nguyen', 'I recently hired Greenscape Landscaping for a landscaping project, and the experience was fantastic. The team was professional, and the project was completed on time. Greenscape Landscaping''s attention to detail and creativity resulted in a beautifully landscaped outdoor space. I highly recommend their services.', 4),

  (2, 5, 'Adalyn_Fletcher', 'Greenscape Landscaping provided exceptional landscaping services. The team was attentive, and the project was executed with precision. I am thrilled with the results, and Greenscape Landscaping has transformed my outdoor space into a visually stunning area. I would choose them again for future landscaping needs.', 5),

  (2, 1, 'Zander_Thompson', 'I recently had the pleasure of working with Greenscape Landscaping, and I am impressed with their landscaping services. The team''s professionalism, creativity, and a commitment to delivering high-quality work were evident throughout the process. Greenscape Landscaping exceeded my expectations, and I would highly recommend their services.', 5),

  (2, 2, 'Nola_Cox', 'Working with Greenscape Landscaping was a positive experience. The team was responsive, and the landscaping project was completed with precision. Greenscape Landscaping exceeded my expectations, and I am pleased with the results. I would not hesitate to recommend their landscaping services.', 4),

  (2, 3, 'Amara_Gardner', 'My experience with Greenscape Landscaping was exceptional. The team exhibited professionalism and creativity throughout the landscaping project. Greenscape Landscaping transformed my outdoor space into a beautiful and serene area. I am delighted with the results and would highly recommend their services.', 5),

  (2, 4, 'Sawyer_Hudson', 'Greenscape Landscaping provided top-notch landscaping services. The team was attentive to my preferences, and the project was executed with precision. I am thrilled with the results, and Greenscape Landscaping has added significant value to my property. I would choose them again for future landscaping needs.', 4),

  (2, 5, 'Nova_Palmer', 'Choosing Greenscape Landscaping was a wise decision. The team demonstrated expertise, creativity, and a commitment to customer satisfaction. Greenscape Landscaping transformed my outdoor space into a visually appealing and functional area. I am extremely satisfied with their work.', 5),

  (2, 1, 'Finnegan_Watkins', 'I recently worked with Greenscape Landscaping on a landscaping project, and the experience was outstanding. The team''s attention to detail, clear communication, and dedication to delivering quality work were commendable. Greenscape Landscaping exceeded my expectations, and I highly recommend their services.', 5),

  (2, 2, 'Lila_Collier', 'Greenscape Landscaping provided excellent landscaping services. The team was professional, and the project was completed within the agreed-upon timeframe. Greenscape Landscaping''s attention to detail and creative approach resulted in a stunning outdoor space. I am pleased with the results.', 4),

  (2, 3, 'Axel_Gibbs', 'Working with Greenscape Landscaping was a positive experience. The team demonstrated professionalism, and the landscaping project was completed with precision. Greenscape Landscaping exceeded my expectations, and I am satisfied with the transformation of my outdoor space.', 5),

  (2, 4, 'Elise_McCoy', 'I recently hired Greenscape Landscaping for a landscaping project, and the results were fantastic. The team was responsive, and their attention to detail was evident throughout the process. Greenscape Landscaping has added beauty and functionality to my outdoor space. I highly recommend their services.', 4),

  (2, 5, 'Zion_Saunders', 'Greenscape Landscaping is a reliable and skilled landscaping contractor. The team''s professionalism and expertise were evident from the start. Greenscape Landscaping transformed my outdoor space into an oasis, and I am thrilled with the results. I would choose them again for future landscaping needs.', 5),

  (2, 1, 'Arianna_Phelps', 'I had the pleasure of working with Greenscape Landscaping on a landscaping project, and the experience was fantastic. The team''s attention to detail, clear communication, and a dedication to delivering high-quality work were commendable. Greenscape Landscaping exceeded my expectations, and I highly recommend their services.', 5),

  (2, 2, 'Ezekiel_Booth', 'Choosing Greenscape Landscaping was the right decision for my landscaping project. The team''s professionalism, communication, and expertise were evident throughout the process. Greenscape Landscaping transformed my outdoor space into a beautiful and functional area. I am impressed with their work.', 4),

  (2, 3, 'Ayla_Castro', 'I recently worked with Greenscape Landscaping on a landscaping project, and the experience was positive. The team was responsive, and the project was completed with precision. Greenscape Landscaping''s attention to detail resulted in a visually appealing outdoor space. I am satisfied with the results.', 4),

  (2, 4, 'Jett_Huffman', 'Greenscape Landscaping provided excellent landscaping services. The team demonstrated professionalism, creativity, and a commitment to customer satisfaction. Greenscape Landscaping transformed my outdoor space into a beautiful and serene area. I highly recommend their services.', 5),

  (2, 5, 'Anya_Douglas', 'Working with Greenscape Landscaping was a positive experience. The team was attentive, and the project was completed on time. Greenscape Landscaping''s attention to detail and creative approach resulted in a stunning outdoor space. I am delighted with the transformation.', 4),

  (2, 1, 'Landon_Sullivan', 'I recently hired Greenscape Landscaping for a landscaping project, and the experience was excellent. The team exhibited professionalism and expertise throughout the process. Greenscape Landscaping exceeded my expectations, and I am thrilled with the results. I highly recommend their services.', 5),

  (2, 2, 'Adaline_Hendrix', 'Choosing Greenscape Landscaping for my landscaping project was a wise decision. The team demonstrated creativity, attention to detail, and a commitment to delivering high-quality work. Greenscape Landscaping transformed my outdoor space into a beautiful oasis. I am impressed with their work.', 5),

  (2, 3, 'Jaxton_Roberts', 'I recently worked with Greenscape Landscaping on a landscaping project, and the results were outstanding. The team demonstrated professionalism, clear communication, and a dedication to delivering quality work. Greenscape Landscaping has added significant value to my property. I highly recommend their services.', 4),

   (3, 3, 'Sienna_Richards', 'I recently had the pleasure of working with Smith Construction on a construction project, and the experience was exceptional. The team exhibited professionalism, clear communication, and a commitment to delivering high-quality work. Smith Construction exceeded my expectations, and I highly recommend their services.', 5),
    (3, 4, 'Zaiden_Fraser', 'Choosing Smith Construction for my construction needs was a wise decision. The team demonstrated expertise, attention to detail, and a commitment to customer satisfaction. Smith Construction transformed my space into a visually appealing and functional area. I am extremely satisfied with their work.', 4),
    (3, 5, 'Lorelai_Ramsey', 'Smith Construction provided top-notch construction services. The team was responsive, and the project was completed with precision. Smith Construction''s attention to detail and creative approach resulted in a stunning outcome. I am pleased with the results and would choose them again for future projects.', 5),
    (3, 1, 'Bentley_Boone', 'I recently worked with Smith Construction for a construction project, and the experience was fantastic. The team exhibited professionalism, creativity, and a dedication to delivering high-quality work. Smith Construction exceeded my expectations, and I highly recommend their services.', 5),
    (3, 2, 'Emery_Frost', 'Choosing Smith Construction was the right decision for my construction project. The team''s professionalism, communication, and expertise were evident throughout the process. Smith Construction transformed my space into a beautiful and functional area. I am impressed with their work.', 4),
    (3, 3, 'Cataleya_Wallace', 'Working with Smith Construction was a positive experience. The team demonstrated professionalism, and the construction project was completed with precision. Smith Construction exceeded my expectations, and I am satisfied with the transformation of my space.', 5),
    (3, 4, 'Jase_Butler', 'I recently hired Smith Construction for a construction project, and the results were fantastic. The team was responsive, and their attention to detail was evident throughout the process. Smith Construction has added beauty and functionality to my space. I highly recommend their services.', 4),
    (3, 5, 'Zara_Shepherd', 'Smith Construction is a reliable and skilled construction contractor. The team''s professionalism and expertise were evident from the start. Smith Construction transformed my space into a visually appealing area. I would choose them again for future construction needs.', 5),
    (3, 1, 'Elin_Arroyo', 'I had the pleasure of working with Smith Construction on a construction project, and the experience was fantastic. The team''s attention to detail, clear communication, and a dedication to delivering high-quality work were commendable. Smith Construction exceeded my expectations, and I highly recommend their services.', 5),
    (3, 2, 'Khalil_Morton', 'Choosing Smith Construction was the right decision for my construction project. The team''s professionalism, communication, and expertise were evident throughout the process. Smith Construction transformed my space into a beautiful and functional area. I am impressed with their work.', 4),
    (3, 3, 'Averie_Mcguire', 'I recently worked with Smith Construction on a construction project, and the experience was positive. The team was responsive, and the project was completed with precision. Smith Construction''s attention to detail resulted in a visually appealing outcome. I am satisfied with the results.', 4),
    (3, 4, 'Kylan_Delgado', 'Smith Construction provided excellent construction services. The team demonstrated professionalism, creativity, and a commitment to customer satisfaction. Smith Construction transformed my space into a beautiful and functional area. I highly recommend their services.', 5),
    (3, 5, 'Jovanny_Camacho', 'Working with Smith Construction was a positive experience. The team was attentive, and the project was completed on time. Smith Construction''s attention to detail and creative approach resulted in a stunning outcome. I am delighted with the transformation.', 4),
    (3, 1, 'Briella_Tyson', 'I recently hired Smith Construction for a construction project, and the experience was excellent. The team exhibited professionalism and expertise throughout the process. Smith Construction exceeded my expectations, and I am thrilled with the results. I highly recommend their services.', 5),
    (3, 2, 'Amirah_Cummings', 'Choosing Smith Construction for my construction project was a wise decision. The team demonstrated creativity, attention to detail, and a commitment to delivering high-quality work. Smith Construction transformed my space into a beautiful outcome. I am impressed with their work.', 5),
    (3, 3, 'Makai_Wong', 'I recently worked with Smith Construction on a construction project, and the results were outstanding. The team demonstrated professionalism, clear communication, and a dedication to delivering quality work. Smith Construction has added significant value to my property. I highly recommend their services.', 4),

    (3, 3, 'Ryann_Hoffman', 'My experience with Smith Construction was outstanding. The team exhibited professionalism, clear communication, and a dedication to delivering high-quality work. Smith Construction exceeded my expectations, and I highly recommend their services.', 5),
    (3, 4, 'Karsyn_Giles', 'Choosing Smith Construction for my construction needs was a wise decision. The team demonstrated expertise, attention to detail, and a commitment to customer satisfaction. Smith Construction transformed my space into a visually appealing and functional area. I am extremely satisfied with their work.', 4),
    (3, 5, 'Jamison_Ellis', 'Smith Construction provided top-notch construction services. The team was responsive, and the project was completed with precision. Smith Construction''s attention to detail and creative approach resulted in a stunning outcome. I am pleased with the results and would choose them again for future projects.', 5),
    (3, 1, 'Aiyanna_Mcintosh', 'I recently worked with Smith Construction for a construction project, and the experience was fantastic. The team exhibited professionalism, creativity, and a dedication to delivering high-quality work. Smith Construction exceeded my expectations, and I highly recommend their services.', 5),
    (3, 2, 'Kannon_Davis', 'Choosing Smith Construction was the right decision for my construction project. The team''s professionalism, communication, and expertise were evident throughout the process. Smith Construction transformed my space into a beautiful and functional area. I am impressed with their work.', 4),
    (3, 3, 'Emmalynn_Guzman', 'Working with Smith Construction was a positive experience. The team demonstrated professionalism, and the construction project was completed with precision. Smith Construction exceeded my expectations, and I am satisfied with the transformation of my space.', 5),
    (3, 4, 'Jaelynn_Olson', 'I recently hired Smith Construction for a construction project, and the results were fantastic. The team was responsive, and their attention to detail was evident throughout the process. Smith Construction has added beauty and functionality to my space. I highly recommend their services.', 4),
    (3, 5, 'Cassius_Figueroa', 'Smith Construction is a reliable and skilled construction contractor. The team''s professionalism and expertise were evident from the start. Smith Construction transformed my space into a visually appealing area. I would choose them again for future construction needs.', 5),
    (3, 1, 'Yareli_Moran', 'I had the pleasure of working with Smith Construction on a construction project, and the experience was fantastic. The team''s attention to detail, clear communication, and a dedication to delivering high-quality work were commendable. Smith Construction exceeded my expectations, and I highly recommend their services.', 5),
    (3, 2, 'Kale_Haney', 'Choosing Smith Construction was the right decision for my construction project. The team''s professionalism, communication, and expertise were evident throughout the process. Smith Construction transformed my space into a beautiful and functional area. I am impressed with their work.', 4),
    (3, 3, 'Audrina_Herman', 'I recently worked with Smith Construction on a construction project, and the experience was positive. The team was responsive, and the project was completed with precision. Smith Construction''s attention to detail resulted in a visually appealing outcome. I am satisfied with the results.', 4),
    (3, 4, 'Marcel_Lester', 'Smith Construction provided excellent construction services. The team demonstrated professionalism, creativity, and a commitment to customer satisfaction. Smith Construction transformed my space into a beautiful and functional area. I highly recommend their services.', 5),
    (3, 5, 'Charlize_Ross', 'Working with Smith Construction was a positive experience. The team was attentive, and the project was completed on time. Smith Construction''s attention to detail and creative approach resulted in a stunning outcome. I am delighted with the transformation.', 4),
    (3, 1, 'Rayan_Mclean', 'I recently hired Smith Construction for a construction project, and the experience was excellent. The team exhibited professionalism and expertise throughout the process. Smith Construction exceeded my expectations, and I am thrilled with the results. I highly recommend their services.', 5),
    (3, 2, 'Elisabeth_Carpenter', 'Choosing Smith Construction for my construction project was a wise decision. The team demonstrated creativity, attention to detail, and a commitment to delivering high-quality work. Smith Construction transformed my space into a beautiful outcome. I am impressed with their work.', 5),
    (3, 3, 'Cael_Hampton', 'I recently worked with Smith Construction on a construction project, and the results were outstanding. The team demonstrated professionalism, clear communication, and a dedication to delivering quality work. Smith Construction has added significant value to my property. I highly recommend their services.', 4);



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
  (7, 'https://kelmwoodflooring.com/images/floor_refinishing_2_375x250-OptimizedSmushed.jpg'),
  (8, 'https://i.imgur.com/nems9gb.jpg'),
  (8, 'https://i.imgur.com/i4n6kzE.jpg'),
  (8, 'https://i.imgur.com/NrLJmsR.jpg'),
  (8, 'https://i.imgur.com/nRed4Y6.jpg'),
  (8, 'https://i.imgur.com/AZbWoN0.jpg'),
  (9, 'https://i.imgur.com/EI64frq.jpg'),
  (9, 'https://i.imgur.com/Ksz3tqm.jpg'),
  (9, 'https://i.imgur.com/ICYuBoz.jpg'),
  (9, 'https://i.imgur.com/V0PYbdt.jpg'),
  (9, 'https://i.imgur.com/vgkW8v2.jpg');

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