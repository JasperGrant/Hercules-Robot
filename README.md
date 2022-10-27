# Hercules Robot

![Hercules](https://user-images.githubusercontent.com/72110751/198208753-6c7bbf29-8c1f-4f3d-8917-d99af416e648.png)
Seen here with sunglasses

Design project for ECED3901.

2nd place winner of the Gregson Robotic Design Competition.

Team consists of Andy Doucet, Spencer Dugas, and Jasper Grant.

# Problem

The goal of the project is to create a robot to autonomously capture and dispose of mines while navigating a maze and avoiding wildlife.

The robot will have to deal with randomly placed mines that must be defused before contact is made, and wildlife in the form of a carboard deer cutout which walks back and forth through the maze using a pulley system.

# High Level Robot Architecture

![image](https://user-images.githubusercontent.com/72110751/198210040-3440406b-10c8-417f-8066-cefcd878eff2.png)

# Solution

Our robot's control code consisted of an esoteric programming language in which a 3x7x7 array of characters is interpreted as an executable. This array can be filled with cardinal directions or other symbols. Each array element points to the next element to be executed.

Once a mine is detected by the robot's limit switches, the robot will switch from following the forwards array, to the return array until the mine has been disposed of. Finally the robot will follow a third return array back to it's next position in the mine hunt.

The final program used for competition:
char map[NUMBEROFMAPS][MAPSIZE][MAPSIZE][MAXSTRINGLEN] = {
	"N", "E", "E", "S", "S", "N", "E",
  "", "E", "N", "M", "W", "W", "SEE",
  "", "N", "N", "N", "W", "W", "S",
  "", "", "", "", "", "M", "W",
  "", "", "", "N", "N", "E", "W",
  "", "", "", "M", "S", "N", "W",
  "", "", "N", "N", "W", "", "",
  
  "", "E", "N", "N", "E", "E", "S",
  "", "E", "W", "N", "E", "E", "S",
  "", "N", "e", "S", "S", "N", "E",
  "", "", "", "", "", "E", "E",
  "", "", "E", "S", "S", "S", "S",
  "", "", "R", "S", "E", "S", "S",
  "", "", "W", "S", "S", "", "",
  
  "", "WwNF", "WwNNWWSSEF", "WwNNWWSSF", "WwNNWWSF", "NNNWWH", "NNNWWH",
  "", "WwNF", "WwNNWSF", "EF", "WwNNWWF", "NNNWWH", "NNNWWH",
  "", "WwNF", "WwNF", "WwNNF", "WwNNWF", "NNNNWWWSWF", "NNNNWWWSF",
  "", "", "", "", "", "ENNF", "NNNNWWWF",
 	"", "", "", "WNNF", "WNNNF", "NNNF", "NNNNWWF",
  "", "", "", "WNF", "NF", "NNNNF", "NNNNWF",
  "", "", "ENF", "ENNF", "ENNWF", "NNNWWWWF", "NNNWWWWF"};
 
 # Optimization
 
 Path planning was done using Adaptive Monte Carlo Localization on a constantly kept up to date LIDAR map.
 Included in the repo also the most up to date and successful pathfinding parameters.
