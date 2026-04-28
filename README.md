# Creative Coding Godot Project<br>Interactive Sound Tool

## 📌 Overview
This project is a simple interactive musical tool built using Godot.  
It allows the user to play sounds, control volume, and generate a random rhythm with visual feedback.

The goal of the project is to explore basic sound interaction, UI controls, and simple generative systems.

## 🎮 Features

- Sound Buttons  
  Three buttons trigger different sounds (Kick, Snare, Hi-hat)

- Keyboard Controls  
  - Q → Kick  
  - W → Snare  
  - E → Hi-Hat  

- Volume Slider  
  Controls overall volume of all sounds
  Controls rhythm speed for the random melody

- Auto Melody Mode  
  Toggle automatic random rhythm generation  
  (button switches between ON/OFF)

- Visual Feedback  
  A circle reacts to sound:
  - changes size based on volume  
  - changes color when a sound plays  
  - smoothly shrinks back over time  

## ⚙️ How It Works

- Sounds are played using AudioStreamPlayer
- Volume is controlled using a slider and converted with linear_to_db
- A timer is used to generate random sounds in Auto mode
- Visuals are drawn using _draw()

---

## ▶️ How to Run

1. Open the project in Godot
2. Run the main scene (main.tscn)
3. Use buttons or keyboard to play sounds
4. Adjust the slider for volume
5. Enable Auto Melody for random playback

## 🎥 Demo Video

[bump](https://youtu.be/R39U2wHSDGE)

## 🧰 Technologies Used

- Godot Engine  
- GDScript
- [Website for finding sounds](https://www.noiiz.com )

## ✨ Author

- Name: Rostyslav Khludov
- Programme Code: TU850
- Student Number: A00039455