# elearning

# E-Learning App

A new Flutter project.
A modern Flutter application designed for online learning. This app provides a platform for users to browse, search, and view details of various online courses.

## Features

*   **Home Dashboard**:
    *   Personalized greeting.
    *   Search functionality to find specific courses.
    *   **Category Slider**: Browse courses by categories.
    *   **Course Sliders**: Horizontal scroll views for "Popular Courses", "Course For You", and "Trending Courses".
    *   **Bottom Navigation**: Easy access to Courses, Cart, Home, My Courses, and Profile.
*   **Course Details**:
    *   Comprehensive course information including title, instructor, price, and rating.
    *   Course duration and section count.
    *   "About Course" description.
    *   List of lessons/sections with duration.
    *   "Buy Now" functionality.
*   **UI/UX**:
    *   Clean and modern interface using `Iconly` icons.
    *   Custom course tiles with bookmarking support.
    *   Responsive layout.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:
### Prerequisites

- Lab: Write your first Flutter app
- Cookbook: Useful Flutter samples
*   Flutter SDK
*   Dart SDK

### Installation

1.  Clone the repository.
2.  Navigate to the project directory.
3.  Install dependencies:
    ```bash
    flutter pub get
    ```
4.  Run the app:
    ```bash
    flutter run
    ```

## Project Structure

*   `lib/main.dart`: Entry point of the application, defines routes and theme.
*   `lib/pages/`: Contains the screen widgets (`HomePage`, `CourseDetailsPage`, etc.).
*   `lib/components/`: Reusable UI components (`CourseTile`, `CategoryIcon`, `MySearchbar`, etc.).
*   `lib/data/`: Data sources for courses and categories.
*   `lib/models/`: Data models.

For help getting started with Flutter development, view the
online documentation, which offers tutorials,
samples, guidance on mobile development, and a full API reference.