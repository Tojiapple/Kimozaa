CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `article` (`id`, `title`, `summary`, `content`, `created`, `category_id`, `member_id`, `image_id`, `published`) VALUES
(1, 'Ethereal Forest', 'Digital painting of a mystical forest', 'Ethereal Forest is a digital painting that captures the glow and magic of a mystical woodland. The piece uses vibrant light effects and soft brush strokes to create a dreamlike atmosphere.', '2026-02-23 10:00:00', 1, 1, 1, 1),
(2, 'Neon Cityscape', 'Cyberpunk city in digital art style', 'Neon Cityscape depicts a bustling futuristic metropolis at night, rendered with neon lights and reflective surfaces. The work explores urban density and vibrant color contrasts.', '2026-02-23 10:30:00', 1, 2, 2, 1),
(3, 'Space Travel', 'Futuristic spaceship in a nebula', 'This digital painting shows a spaceship traveling through a colorful nebula. The use of dynamic lighting and cosmic textures creates a sense of speed and vastness.', '2026-02-23 11:00:00', 1, 1, 3, 1),
(4, 'Pixel Dreamscape', 'Low-poly digital landscape', 'Pixel Dreamscape is a retro-inspired low-poly digital environment. It emphasizes geometric forms, bold colors, and simplified textures for a nostalgic digital aesthetic.', '2026-02-23 11:30:00', 2, 2, 4, 1),
(5, 'Fantasy Creature', 'Digital dragon illustration', 'Fantasy Creature features a dragon in a magical forest. The illustration combines traditional fantasy art composition with digital painting techniques to enhance realism and color vibrancy.', '2026-02-23 12:00:00', 1, 3, 5, 1),
(6, 'Abstract Waves', 'Generative digital painting', 'Abstract Waves is a generative artwork using fluid shapes and bright gradients. The piece explores algorithmic design in digital painting, producing unique compositions each time.', '2026-02-23 12:30:00', 2, 1, 6, 1),
(7, 'Digital Portrait', 'Hyperrealistic character artwork', 'A hyperrealistic digital portrait of a young woman, showcasing detailed textures and lighting effects. The artwork blends 3D rendering with traditional digital painting techniques.', '2026-02-23 13:00:00', 1, 2, 7, 1),
(8, 'Glitch Landscape', 'Abstract digital painting with glitch effects', 'Glitch Landscape is an abstract artwork that incorporates digital errors into a surreal cityscape. The piece highlights the aesthetic potential of corrupted digital data.', '2026-02-23 13:30:00', 2, 3, 8, 1),
(9, 'Robot Friend', '3D character design for creative projects', 'Robot Friend is a cute digital 3D character created for games and animations. Its friendly design makes it suitable for interactive experiences and digital storytelling.', '2026-02-23 14:00:00', 3, 1, 9, 1),
(10, 'Digital Still Life', 'Modern still-life digital painting', 'Digital Still Life presents a contemporary take on classic still-life compositions. Objects are rendered with digital textures, lighting, and shadows to produce depth and realism.', '2026-02-23 14:30:00', 1, 2, 10, 1),
(11, 'Interactive UI Kit', 'Digital product templates for apps', 'This interactive UI kit provides designers with pre-made elements for digital products, including buttons, sliders, and panels, optimized for modern web and mobile applications.', '2026-02-23 15:00:00', 2, 3, 11, 1),
(12, 'Fantasy Castle', 'Digital illustration of floating island', 'Fantasy Castle is a digital painting depicting a castle on a floating island. The composition combines imaginative architecture and lush environments with dynamic lighting.', '2026-02-23 15:30:00', 1, 1, 12, 1),
(13, 'Vector Nature', 'Flat vector digital landscape', 'Vector Nature is a digital illustration using clean geometric shapes and flat colors to depict mountains, rivers, and forests. It highlights scalability and crisp visual clarity.', '2026-02-23 16:00:00', 2, 2, 13, 1),
(14, 'Sci-Fi Interior', 'Futuristic room digital render', 'Sci-Fi Interior is a digital painting of a high-tech room with neon accents and advanced furniture design. The piece blends architectural visualization with creative digital art.', '2026-02-23 16:30:00', 2, 1, 14, 1),
(15, 'Motion Graphics Sample', 'Animated digital art showcase', 'Motion Graphics Sample demonstrates the application of motion design in digital art products. Smooth transitions and liquid animation techniques are featured to enhance visual storytelling.', '2026-02-23 17:00:00', 3, 2, 15, 1),
(16, 'Digital Logo Pack', 'Brand identity design', 'Digital Logo Pack contains modern logo designs optimized for digital platforms. Each logo combines vector precision with aesthetic considerations for branding consistency.', '2026-02-23 17:30:00', 3, 3, 16, 1),
(17, 'Pixel Art Character', 'Retro pixel design for games', 'Pixel Art Character is designed for game assets and animations. Its low-resolution charm brings nostalgia while remaining compatible with modern game engines.', '2026-02-23 18:00:00', 2, 1, 17, 1),
(18, 'Social Media Kit', 'Template pack for creatives', 'Social Media Kit provides animated and static templates for promoting digital art. It includes customizable layouts, typography, and effects for maximum engagement.', '2026-02-23 18:30:00', 3, 2, 18, 1),
(19, 'Digital Landscape Noir', 'Moody black-and-white digital art', 'Digital Landscape Noir explores contrast, shadows, and textures in monochromatic digital paintings. The series conveys mood and atmosphere through composition and lighting.', '2026-02-23 19:00:00', 1, 3, 19, 1),
(20, 'Interactive E-Book', 'Digital book layout for tablets', 'Interactive E-Book offers engaging layouts for digital reading. Features include embedded media, interactive maps, and responsive design to suit various devices.', '2026-02-23 19:30:00', 3, 1, 20, 1),
(21, 'Augmented Avatar', '3D character for AR/VR', 'Augmented Avatar is a stylized 3D character designed for virtual reality and augmented reality applications. Its design prioritizes approachability and expressive motion.', '2026-02-23 20:00:00', 3, 2, 21, 1),
(22, 'Liquid Animation', 'Web-based digital motion art', 'Liquid Animation is a set of smooth, organic movements rendered digitally for web interfaces. It uses lightweight animation files optimized for fast-loading pages.', '2026-02-23 20:30:00', 3, 3, 22, 1),
(23, 'Smart Dashboard', 'UI design for IoT devices', 'Smart Dashboard is a digital product for managing smart home devices. Its card-based design allows users to monitor energy and data efficiently in an interactive interface.', '2026-02-23 21:00:00', 2, 1, 23, 1),
(24, 'Fantasy Illustration', 'Whimsical dreamlike digital painting', 'Fantasy Illustration combines vivid colors, surreal landscapes, and imaginative characters to create an immersive digital art experience, suitable for prints or digital showcases.', '2026-02-23 21:30:00', 1, 2, 24, 1);

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navigation` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `category` (`id`, `name`, `description`, `navigation`) VALUES
(1, 'Print', 'Inspiring graphic design', 1),
(2, 'Digital', 'Powerful pixels', 1),
(3, 'Illustration', 'Hand-drawn visual storytelling', 1),
(4, 'Photography', 'Capturing every moment', 1);


CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `file` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `image` (`id`, `file`, `alt`) VALUES
(1, 'ethereal-forest.jpg', 'Digital painting of a mystical forest with glowing lights'),
(2, 'neon-cityscape.jpg', 'Vibrant cyberpunk city at night in digital art style'),
(3, 'space-travel-art.jpg', 'Futuristic spaceship flying through a colorful nebula'),
(4, 'pixel-dreamscape.jpg', 'Low-poly digital art landscape with retro pixel style'),
(5, 'fantasy-creature.jpg', 'Digital illustration of a dragon in a magical environment'),
(6, 'abstract-waves.jpg', 'Colorful generative abstract painting with flowing shapes'),
(7, 'digital-portrait.jpg', 'Hyperrealistic digital portrait of a young woman'),
(8, 'glitch-landscape.jpg', 'Abstract landscape with glitch effects and neon colors'),
(9, 'robot-friend.jpg', 'Cute digital 3D robot character in a playful scene'),
(10, 'digital-still-life.jpg', 'Modern still-life painting rendered digitally'),
(11, 'interactive-ui-kit.jpg', 'UI/UX digital product templates for apps and websites'),
(12, 'fantasy-castle.jpg', 'Digital painting of a castle on a floating island'),
(13, 'vector-nature.jpg', 'Flat vector digital art of mountains and rivers'),
(14, 'sci-fi-interior.jpg', 'Futuristic interior design illustrated digitally'),
(15, 'motion-graphics-sample.jpg', 'Animated digital product showing fluid motion graphics'),
(16, 'digital-logo-pack.jpg', 'Set of modern digital logos for creative brands'),
(17, 'pixel-art-character.jpg', 'Pixel art character design for a game'),
(18, 'social-media-kit.jpg', 'Pack of templates for social media posts'),
(19, 'digital-landscape-noir.jpg', 'Monochrome digital landscape with dramatic lighting'),
(20, 'interactive-ebook.jpg', 'Digital book layout displayed on a tablet'),
(21, 'augmented-avatar.jpg', '3D avatar designed for AR or VR experiences'),
(22, 'liquid-animation.jpg', 'Smooth digital liquid animation for websites'),
(23, 'smart-dashboard.jpg', 'Interactive digital dashboard for tracking data'),
(24, 'fantasy-illustration.jpg', 'Whimsical digital painting of a dreamlike scene');

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `forename` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `joined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `picture` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `member` (`id`, `forename`, `surname`, `email`, `password`, `joined`, `picture`) VALUES
(1, 'Earl', 'Dizon', 'earl@movie.link', 'pass-1234', '2021-01-26 12:04:23', 'earl.jpg'),
(2, 'Sean', 'Matias', 'sean@movie.link', 'pass-5678', '2021-01-26 12:15:18', 'sean.jpg'),
(3, 'Brent', 'Balajadia', 'brent@movie.link', 'pass-9012', '2021-02-12 10:53:47', 'brent.jpg');

-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `author_id` (`member_id`),
  ADD KEY `image_id` (`image_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `category_exists` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `image_exists` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`),
  ADD CONSTRAINT `member_exists` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);
