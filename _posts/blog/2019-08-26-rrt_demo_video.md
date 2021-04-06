---
layout: article
categories: blog
title: RRT Visualization
image:
  teaser: blog/rrt_demo.png
---
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/yWHRLkHt8Vg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

This video demonstrates our application of Rapidly Exploring Random Trees (RRT) to path-planning for a kinematic car model.

The algorithm first generates a tree of several thousand potential states. It does this by:  
- Choosing a random point in free space  
- Finding the closest existing node  
- Generating a random control  
- Applying that random control to the previously found node  
- Checking that the new state is within free space  
- Adding the new state to the tree and repeating

Once the algorithm has created a tree of sufficient size, it then looks for at all the nodes within a certain radius of the goal. For each node in the group, it counts the number of parent nodes, and selects the one with the fewest parents. Using the tree of controls and states, it then determines the controls required to get to the desired state from the starting state. This produces an estimate of the most time / space efficient path and the controls required to execute it.
