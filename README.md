# 🎵 AnimatedBuilder Widget Demo - Spinning Vinyl

This is a simple **demo music player** created for an in-class presentation.  
It demonstrates the use of the **AnimatedBuilder** widget to create a performant spinning vinyl record animation in a mock music player UI.

---

## Widget Description

**AnimatedBuilder**:  
A performance-optimizing widget that rebuilds only a specific part of the UI in response to an animation, preventing unnecessary rebuilds of static widgets.

---

## 🚀 How to Run the Project

### 1️⃣ Clone the repository
```bash
git clone https://github.com/TammyBriggs/Animated-Builder-Widget-Presentation
```

### 2️⃣ Navigate into the project directory
```bash
cd Animated-Builder-Widget-Presentation
cd animated_builder_widget
```

### 3️⃣ Install dependencies
```bash
flutter pub get
```

### 4️⃣ Run the app
```bash
flutter run
```

## The Three Key Attributes Demonstrated

During my presentation, I focused on the three core properties of the AnimatedBuilder widget that make it work:

### animation
- A required property that takes an `Animation` object, typically an `AnimationController`.
- It acts as the "engine" that drives the animation and notifies the builder when to update the UI.

### builder
- A callback function executed on every tick of the animation.
- Responsible for returning the widget tree that reflects the animation's current state.
- In this demo, it returns a `Transform.rotate` widget.

### child
- An optional but crucial optimization.
- Any widget passed to `child` is built only once, then reused across frames.
- This prevents static, expensive widgets from being rebuilt unnecessarily, keeping the animation smooth and efficient.

## 🖼️ Final UI Screenshot 📸

Here is a screenshot of the final music player screen:

![App Screenshot](screenshot.png)

## Presentation Link
https://prezi.com/view/TmD5NP53gwj3NowHAww3/?referral_token=y9l0rklnB3FN

## Author

**Tamunotonye Briggs**
