## Overview

This document summarizes the Hexagon Adams assignment for the Multi-body Space Structures course, at the Aerospace Engineering MD, University of Rome Sapienza. The project focuses on modeling the payload release mechanism from an upper stage into space. The mechanism ensures minimal nutation, a maximum spin rate under 5 degrees per second for payloads, a minimum distance of 1 meter between payloads post-release, and a simulation duration not exceeding 10 seconds.

## Problem Description

The task involves an upper stage and two spacecraft with varying masses and inertias. Upon ignition of the upper stage's two thrusters, a release mechanism separates the spacecraft. The primary challenge is to fulfill several requirements concerning time, spin rate, nutations, and payload separation distance to avoid collisions.

## Design Variables (DVs)

The project introduces various design variables to simplify and parameterize forces within the model. Key variables include the desired angular velocity of the upper stage, thruster force magnitude, tiedown forces' stiffness and damping coefficients, and the push-off springs' characteristics crucial for payload separation.

## Thruster Forces

Thruster forces are modeled combining constant functions and conditional expressions to achieve and maintain desired angular velocities. The arrangement accounts for the unaligned axes of the thrusters, affecting the upper stage's center of mass and introducing unbalanced force components.

## Tiedown Forces

Modeled as general forces with components for both force and torque across all axes, tiedown forces secure the payloads to the upper stage against thrusters and centrifugal forces until their deactivation allows for payload separation.

## Push-off Springs Forces

Implemented to physically separate the payloads from the upper stage, the push-off springs exert force primarily along the z-axis, calculated to ensure separation without exceeding specified limits.

## Optimization and Results

Through simulation, design variables were adjusted to optimize the release mechanism, ensuring all requirements were met. Notable adjustments included the thruster force magnitude, the upper stage's angular velocity, and the timing and preload of the push-off springs. The optimization process focused on minimizing payload nutations while ensuring safe separation distances between the payloads and from the upper stage.

## Final Results

The final simulation results indicate successful compliance with all requirements, including minimized nutation, controlled spin rate, and adequate separation distances. Adjustments to the design variables, such as increased thruster force and precise control of release timings, contributed to achieving these outcomes.

## Conclusions

This project demonstrates the effective use of Hexagon Adams software in modeling and optimizing a complex multi-body space structure mechanism. Through careful adjustment of design variables and an iterative optimization process, the project team successfully met the assignment's stringent requirements, paving the way for safer and more efficient space payload deployment.

## Software
The project has been carried out with the Hexagon Adams software
