// Global Theme Switcher Injector
document.addEventListener('DOMContentLoaded', () => {

    // Helper to determine what theme we are currently in based on URL
    let currentThemeNum = "1";
    const match = window.location.href.match(/theme(\d+)/);
    if(match && match[1]) {
        currentThemeNum = match[1];
    }

    const themeFolders = [
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
    ];

    const switcherHTML = `
        <div id="global-theme-switcher">
            <div class="switcher-left">
                <div class="company-logo">
                    <!-- SVG approximating the Vaibhav.ai logo provided in prompt -->
                    <svg viewBox="0 0 100 100" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M20 20 L50 80 L80 20" stroke="url(#blue-gold)" stroke-width="12" stroke-linejoin="round"/>
                        <circle cx="80" cy="20" r="6" fill="#2d939e"/>
                        <circle cx="70" cy="40" r="5" fill="#2d939e"/>
                        <circle cx="90" cy="50" r="5" fill="#2d939e"/>
                        <line x1="80" y1="20" x2="70" y2="40" stroke="#2d939e" stroke-width="2"/>
                        <line x1="80" y1="20" x2="90" y2="50" stroke="#2d939e" stroke-width="2"/>
                        <defs>
                            <linearGradient id="blue-gold" x1="0%" y1="0%" x2="100%" y2="100%">
                                <stop offset="0%" stop-color="#0a5c88" />
                                <stop offset="50%" stop-color="#0e8392" />
                                <stop offset="100%" stop-color="#b89345" />
                            </linearGradient>
                        </defs>
                    </svg>
                    VAIBHAV.AI
                </div>
                <div style="width: 20px;"></div>
                <span class="switcher-label">SELECT THEME</span>
                <div class="switcher-buttons" id="switcher-btn-container">
                    <!-- Buttons injected via JS -->
                </div>
            </div>
            <div class="switcher-right">
                <i class="fa-solid fa-cart-shopping cart-icon"></i>
            </div>
        </div>
    `;

    // Inject into body
    document.body.insertAdjacentHTML('afterbegin', switcherHTML);

    // Generate buttons 1 to 10
    const btnContainer = document.getElementById('switcher-btn-container');
    
    for(let i = 1; i <= 10; i++) {
        const btn = document.createElement('a');
        btn.href = `../${themeFolders[i-1]}/index.html`;
        btn.className = `theme-btn ${currentThemeNum == i ? 'active' : ''}`;
        btn.dataset.num = i;
        btn.textContent = i;
        btnContainer.appendChild(btn);
    }
});
