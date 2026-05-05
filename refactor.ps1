$rootDir = "d:\ss11-01-26\Santhiya\Vaibhav.ai\Works_theme_website\Gym-Themes-Project"

# Remove old 6-10
$oldFolders = @("theme6-ai-command-center", "theme7-adaptive-journey", "theme8-cinematic-video", "theme9-component-system", "theme10-neuro-ux")
foreach ($folder in $oldFolders) {
    $path = Join-Path $rootDir $folder
    if (Test-Path $path) { Remove-Item -Recurse -Force $path }
}

$themes = @(
    "theme1-performance-dashboard",
    "theme2-dark-power",
    "theme3-glassmorphism-premium",
    "theme4-classic-structured",
    "theme5-energetic-gradient",
    "theme6-brutalist-raw",
    "theme7-holistic-wellness",
    "theme8-cyberpunk-neon",
    "theme9-earth-nature",
    "theme10-luxury-elite"
)

$htmlContent = @"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iron & Soul Gym</title>
    <!-- Switcher CSS & Main Theme CSS -->
    <link rel="stylesheet" href="../shared/switcher.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    
    <nav class="navbar" id="navbar">
        <div class="container nav-container">
            <a href="#" class="logo">
                <i class="fa-solid fa-dumbbell"></i> IRON & SOUL
            </a>
            <ul class="nav-links">
                <li><a href="#home">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#services">Services</a></li>
                <li><a href="#trainers">Trainers</a></li>
                <li><a href="#membership">Membership</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
            <div class="mobile-menu-btn"><i class="fa-solid fa-bars"></i></div>
        </div>
    </nav>

    <header id="home" class="hero">
        <div class="hero-overlay"></div>
        <div class="container hero-content">
            <h1>Forge Your <span>Ultimate</span> Self</h1>
            <p>Join the movement. Transform your body and mind with our state-of-the-art facilities and elite trainers.</p>
            <div class="hero-buttons">
                <a href="#membership" class="btn btn-primary">Start Your Trial</a>
                <a href="#services" class="btn btn-secondary">Explore Classes</a>
            </div>
        </div>
    </header>

    <section class="stats">
        <div class="container stats-container">
            <div class="stat-box"><h3>500+</h3><p>Active Members</p></div>
            <div class="stat-box"><h3>50+</h3><p>Classes Weekly</p></div>
            <div class="stat-box"><h3>24/7</h3><p>Gym Access</p></div>
        </div>
    </section>

    <section id="about" class="about">
        <div class="container about-container">
            <div class="about-text">
                <h2>Our Mission & Vision</h2>
                <div class="divider"></div>
                <p>At Iron & Soul, we believe fitness is more than just lifting weights. It's about building resilience, fostering community, and pushing your limits.</p>
                <ul class="features-list">
                    <li><i class="fa-solid fa-check-circle"></i> State-of-the-art Equipment</li>
                    <li><i class="fa-solid fa-check-circle"></i> Clean & Safe Environment</li>
                    <li><i class="fa-solid fa-check-circle"></i> Personalised Nutrition Plans</li>
                </ul>
            </div>
            <div class="about-image">
                <img src="https://images.unsplash.com/photo-1540497077202-7c8a3999166f?q=80&w=2070&auto=format&fit=crop" alt="Gym Overview">
            </div>
        </div>
    </section>

    <section id="services" class="services">
        <div class="container">
            <div class="section-header">
                <h2>Our Premium Services</h2>
                <p>Discover programs suited for all fitness levels.</p>
            </div>
            <div class="services-grid">
                <div class="service-card">
                    <img src="https://images.unsplash.com/photo-1581009146145-b5ef050c2e1e?q=80&w=2070&auto=format&fit=crop" alt="Weight Training">
                    <div class="service-info">
                        <h3>Strength Training</h3>
                        <p>Build muscle and increase power with our heavy lifting zones.</p>
                    </div>
                </div>
                <div class="service-card">
                    <img src="https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?q=80&w=2020&auto=format&fit=crop" alt="HIIT">
                    <div class="service-info">
                        <h3>HIIT Cardio</h3>
                        <p>High-intensity interval training to burn fat and boost endurance.</p>
                    </div>
                </div>
                <div class="service-card">
                    <img src="https://images.unsplash.com/photo-1599901860904-17e6ed7083a0?q=80&w=2070&auto=format&fit=crop" alt="Yoga">
                    <div class="service-info">
                        <h3>Yoga & Mobility</h3>
                        <p>Improve flexibility and mindfulness with expert-led classes.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="trainers" class="trainers">
        <div class="container">
            <div class="section-header">
                <h2>Meet The Experts</h2>
                <p>Our elite coaching staff is here to guide you.</p>
            </div>
            <div class="trainers-grid">
                <div class="trainer-card">
                    <img src="https://images.unsplash.com/photo-1568602471122-7832951cc4c5?q=80&w=2070&auto=format&fit=crop" alt="Trainer 1">
                    <div class="trainer-info">
                        <h3>Marcus Reed</h3>
                        <p>Head Coach - Powerlifting</p>
                    </div>
                </div>
                <div class="trainer-card">
                    <img src="https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?q=80&w=1976&auto=format&fit=crop" alt="Trainer 2">
                    <div class="trainer-info">
                        <h3>Sarah Jenkins</h3>
                        <p>HIIT & Nutrition Expert</p>
                    </div>
                </div>
                <div class="trainer-card">
                    <img src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=1964&auto=format&fit=crop" alt="Trainer 3">
                    <div class="trainer-info">
                        <h3>Elena Rodriguez</h3>
                        <p>Yoga & Flexibility</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="membership" class="membership">
        <div class="container">
            <div class="section-header">
                <h2>Membership Plans</h2>
                <p>Choose the right tier for your fitness goals.</p>
            </div>
            <div class="pricing-grid">
                <div class="pricing-card">
                    <h3>Basic</h3>
                    <div class="price"><span>$</span>29<span>/mo</span></div>
                    <ul>
                        <li>Access to Gym Floor</li>
                        <li>Locker Room Access</li>
                        <li>Standard Support</li>
                    </ul>
                    <a href="#" class="btn btn-outline">Select Plan</a>
                </div>
                <div class="pricing-card popular">
                    <div class="badge">Most Popular</div>
                    <h3>Pro</h3>
                    <div class="price"><span>$</span>59<span>/mo</span></div>
                    <ul>
                        <li>Everything in Basic</li>
                        <li>All Group Classes</li>
                        <li>1 PT Session / Month</li>
                    </ul>
                    <a href="#" class="btn btn-primary">Select Plan</a>
                </div>
                <div class="pricing-card">
                    <h3>Elite</h3>
                    <div class="price"><span>$</span>99<span>/mo</span></div>
                    <ul>
                        <li>Everything in Pro</li>
                        <li>Unlimited PT Sessions</li>
                        <li>Sauna & Spa Access</li>
                    </ul>
                    <a href="#" class="btn btn-outline">Select Plan</a>
                </div>
            </div>
        </div>
    </section>

    <section id="contact" class="contact">
        <div class="container">
            <div class="contact-grid">
                <div class="contact-form">
                    <h2>Get in Touch</h2>
                    <form>
                        <div class="form-group">
                            <input type="text" placeholder="Full Name" required>
                        </div>
                        <div class="form-group">
                            <input type="email" placeholder="Email Address" required>
                        </div>
                        <div class="form-group">
                            <textarea rows="4" placeholder="Your Message" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Send Message</button>
                    </form>
                </div>
                <div class="contact-info">
                    <h2>Visit Us</h2>
                    <p><i class="fa-solid fa-location-dot"></i> 123 Muscle Ave, Fit City, NY 10001</p>
                    <p><i class="fa-solid fa-phone"></i> +1 (555) 123-4567</p>
                    <p><i class="fa-solid fa-envelope"></i> hello@ironsoulgym.com</p>
                    <div class="map-placeholder">
                        <img src="https://images.unsplash.com/photo-1524661135-423995f22d0b?q=80&w=2074&auto=format&fit=crop" alt="Map Location" style="width:100%; height: 200px; object-fit: cover; border-radius: 8px;">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="container footer-content">
            <div class="footer-logo">
                <i class="fa-solid fa-dumbbell"></i> IRON & SOUL
            </div>
            <div class="social-links">
                <a href="#"><i class="fa-brands fa-instagram"></i></a>
                <a href="#"><i class="fa-brands fa-facebook"></i></a>
                <a href="#"><i class="fa-brands fa-twitter"></i></a>
            </div>
            <p>&copy; 2026 Iron & Soul Gym. All rights reserved.</p>
        </div>
    </footer>

    <!-- Theme Switcher Script -->
    <script src="../shared/switcher.js"></script>
    <!-- Basic mobile menu script -->
    <script src="script.js"></script>
</body>
</html>
"@

foreach ($theme in $themes) {
    $themeDir = Join-Path $rootDir $theme
    if (!(Test-Path $themeDir)) {
        New-Item -ItemType Directory -Force -Path $themeDir | Out-Null
    }
    Set-Content -Path (Join-Path $themeDir "index.html") -Value $htmlContent -Encoding UTF8
    
    # ensure style.css exists
    $stylePath = Join-Path $themeDir "style.css"
    if (!(Test-Path $stylePath)) {
        Set-Content -Path $stylePath -Value "/* Styles for $theme */" -Encoding UTF8
    }
}

Write-Output "Refactored HTML across 10 directories."
