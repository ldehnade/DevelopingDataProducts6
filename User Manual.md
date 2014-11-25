---
title: "QuacksR'us User Manual"
author: ""
date: "November 22, 2014"
output: html_document
---

## Description

Quacks'R'us is an application that provide users with a Metabolic Assessment. The assessment is based on a range of health markers.  
All these markers are estimated based on formulas using as input personal data provided by the user. 


## Layout

The layout of the application is fairly intuitive.

- The left panel is use by the user to input data (See section: **Input Data**)
- The right panel displays the metabolic assessment (See section: **Metabolic Assessment**)

## Input Data:

- Data is enter using radio buttons, selectInput and NumericInput objets to control what the user can enter.

The application uses some very basic subject information as input data

1. Gender
2. Age (in Years)
3. Height (in Centimeters)
4. Weight (In Kilograms)
5. Activity level (None / Light / Moderate / Active / Athlete)
6. Resting Hear beat (RHR)


Resting Heart Beat: To find your resting heart rate,  as soon as you wake up,  count your pulse for one minute while still in bed. Average your heart rate over three mornings to obtain your average resting heart rate (RHR). Add the three readings together and divide by three to get the RHR. For example, (62 + 65 + 63) / 3 = 63


## Metabolic Assessment:


An estimation of the following metabolic markers is returned

1. Body Mass Index (BMI) (kg/m2): Measure of relative weight based on an individual's mass and height
2. Ideal Weight (Kilograms): weight that is believed to be maximally healthful for a person.
3. Basal Metabolic Rate (BMR) (in calories/Kg): Rate of energy expenditure at rest
4. Resting HR: heart rate when a person is awake, in a neutrally temperate environment, and not having recently exerted himself or any form of stimulation
5. Target Heart Rate: Desired range of heart rate reached during aerobic exercise which enables one's heart and lungs to receive the most benefit from a workout
6. Maximal Heart Rate: Highest heart rate an individual can achieve without severe problems through exercise stress
7. Reserve Heart Rate: Difference between a person s measured or predicted maximum heart rate and resting heart rate.
8. VO2 Max (Liter/Minutes): Maximum rate of oxygen consumption as measured during incremental exercise: Rate of performing work
9. Power (in Watts)

The application is based on the metric system.

**Enjoy!!!!**

Note: Even though the formulas implemented  were sourced from different web sites the application isn't meant as a real metabolic assessment tool. It was only built to illustrate the concept discussed in the frame of the Building Data products course.
