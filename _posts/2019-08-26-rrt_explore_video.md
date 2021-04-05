---
layout: article
categories: media
title: RRT Exploration Visualization
image:
  teaser: media/rrt_explore.png
---
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/DNyDNMVtx9M" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

This video extends our application of Rapidly Exploring Random Trees (RRT) to the exploration of an unknown, obstacle filled space by a car.

The RRT algorithm is unchanged from our initial implementation, however the number of iterations is greatly reduced. It generates a tree of several dozen potential states by:  
- Choosing a random point in free space  
- Finding the closest existing node  
- Generating a random control  
- Applying that random control to the previously found node  
- Checking that the new state is within free space  
- Adding the new state to the tree and repeating

Once the algorithm has created a tree of sufficient size, it creates an estimate of 'knowledge gained' for a subset of the potential states. Essentially, it is predicting how useful it would be to go to each position by estimating how much more of the map would be revealed.

The algorithm then selects a path to execute using a combination of the 'knowledge gained' parameter for both the next node and it's children.

In the simulation, the car follows the selected path and the map is updated. This is repeated for a fixed number of steps.

For comparison, the video also demonstrates an identical simulation in which the RRT is removed and the car generates and executes a random control. As seen, the RRT method is more efficient in exploring the space.
