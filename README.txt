# Project Description

This Grocery store robot aims to assist customers in the tedious task of grocery shopping.

Project Features:
- Manipulation techniques like aligning, grasping, lifting and placing using KOMO objectives
- Robot and Cart motion
- Detection of objects/obstacle using Perception and OpenCV
- User interaction with GUI
- Integration of a .txt file to update the result of shopping
- Obstacle detection and collision-prevention
- Use of meshes for environment setup

Challenges Faced:
- Spherical objects -> round structure makes the object sliding and falling from the shelf
- Cart Motion -> robot pushes the cart, while the objects appear to be static and remain at the same position
- Simulation runtime –> difficult to control as lesser simulation time will unable the gripper to correctly align and grasp the objects
- Perception
	1. Broader view of the left and the right camera makes it able to detect the masks of the already placed objects; which hinders the grasping and lifting of similar (color)   			 objects
	2. Random KOMO optimization errors

# Design Layout
![alt text](https://github.com/Gunjan1917/Robotics/blob/Gunjan1917-patch-1/projectpicture.PNG)

# How to run the project
Clone the folder scenarios, shoppingList.txt and RoboKart_project.ipynb in the same location.
From the current location, run the command: jupyter-notebook Robotkart_project.ipynb
