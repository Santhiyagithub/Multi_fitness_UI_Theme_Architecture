# Multi Fitness UI Theme Architecture

A comprehensive, multi-theme web architecture designed for modern fitness and gym websites. This project features 10 distinct, fully functional UI themes for a single gym brand ("Iron & Soul Gym"). It includes a built-in global theme switcher that allows users to seamlessly transition between all 10 visual styles dynamically without needing a central portal page.

## Features

- **10 Unique Themes:** Ranges from Performance Dashboards to Cyberpunk Neon and Luxury Elite.
- **Global Theme Switcher:** A persistent top-bar switcher that allows instant navigation across all themes.
- **Responsive Design:** Mobile-friendly layouts that adapt to any screen size.
- **PowerShell Automation:** Includes robust scripts for rapid scaffolding and mass-refactoring across the entire architecture.

## Themes Included

1. Theme 1: Performance Dashboard
2. Theme 2: Dark Power
3. Theme 3: Glassmorphism Premium
4. Theme 4: Classic Structured
5. Theme 5: Energetic Gradient
6. Theme 6: Brutalist Raw
7. Theme 7: Holistic Wellness
8. Theme 8: Cyberpunk Neon
9. Theme 9: Earth Nature
10. Theme 10: Luxury Elite

## Project Structure

```text
Works_theme_website/
├── Gym-Themes-Project/
│   ├── shared/                # Global theme switcher CSS & JS
│   ├── theme1-performance-dashboard/
│   ├── theme2-dark-power/
│   ├── ... (themes 3 to 10)
├── setup.ps1                  # Initial project scaffold script
├── refactor.ps1               # Automation script to update HTML across all themes
└── README.md
```

## Getting Started

### Prerequisites
- Node.js (optional, for using `http-server`)
- Python (optional, as an alternative local server)

### Viewing the Project Locally

1. Clone the repository:
   ```bash
   git clone https://github.com/Santhiyagithub/Multi_fitness_UI_Theme_Architecture.git
   ```

2. Navigate to the project folder:
   ```bash
   cd Multi_fitness_UI_Theme_Architecture/Gym-Themes-Project
   ```

3. Start a local server:
   
   **Using Node.js (Recommended):**
   ```bash
   npx http-server
   ```
   
   **Using Python:**
   ```bash
   python -m http.server 8000
   ```

4. Open your browser and navigate to `http://localhost:8080` (or `http://localhost:8000`). You will be automatically redirected to Theme 1, where you can use the global switcher to view the others!

## Automation Scripts

This project includes PowerShell scripts to manage the multi-theme architecture:

- **`setup.ps1`**: Scaffolds the initial directory structure, base HTML, and empty CSS/JS files.
- **`refactor.ps1`**: A powerful maintenance script that ensures structural HTML consistency across all 10 theme directories while preserving individual style configurations. Both scripts utilize dynamic relative paths for robust portability.
