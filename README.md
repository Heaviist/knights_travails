# knights_travails
The Odin Project's Knight's Travails Project in Ruby

# Assignment
Build a function knight_moves that shows the shortest possible way for a chess knight (on a chess board) to get from one square to another by outputting all squares the knight will stop on along the way.

# Goal
Perform the following steps:
1. Put together a script that creates a game board and a knight.
2. Treat all possible moves the knight could make as children in a tree. Don’t allow any moves to go off the board
3. Decide which search algorithm is best to use for this case. Hint: one of them could be a potentially infinite series.
4. Use the chosen search algorithm to find the shortest path between the starting square (or node) and the ending square. Output what that full path looks like.

# Expectations and challenges
1. As this seems to tie a lot of the previous assignments and projects together, I assume the general idea will be clear. Then again, since it's all a little deeper than just the basic form, it should be extra important to write some good description of functionality and pseudo code. Also keep in mind to not run off the board.
2. Considering to give every position for the knight 8 children. My idea for now is to start from the basic position, add 8 children for every possible move. Then check if any of those positions is the destination. If not, add 8 children to those positions and check again. If, eventually, the desired destination is in the nodes, return the depth of that node. For now, making a bigger tree seems to not make any sense, as a knight should be able to reach any square on the board in 6 moves or less (https://chess.stackexchange.com/questions/34588/how-many-moves-needed-for-a-knight-to-go-from-any-square-to-any-other-square#:~:text=VI.,the%20squares%20have%20opposite%20colors).). An other thing to consider would be to just add 6 levels to the tree by definition and then check once. It might not make that much of a difference regarding time, though memory should be better if not always making the full tree.
3. I don't see where the infinite series would come from, unless you keep adding new levels to the tree all the time. Breadth first seems to make sense though, as we want the shortest path anyway. Then simply return depth of the first node that equals the desired destination square followed by the steps to get there by printing out the path from root.
4. Once we're able to figure it out, this should apply to all cases.
5. I might spend some time on finding ways to represent the chess board with actual chess pieces in the command line.

# Results and Evaluation
1. Took an approach at first that didn't really use coding to its full potential let's say. Rewriting a lot of similar code. Now, the solution was in my head, using a constant with all the possible moves the knight could make. I should have tried more to write down what I would expect my code to do to work from there, as I just couldn't get it figured out for a while. I should have listened to myself here let's say. The most frustrating part in the end is the solution isn't that complicated now that I see it...
2. I've gone for a simpler solution which just generates all the valid moves from any given position.
3. BFS it was. Almost forgot to just use a queue. Simply adding a parent instance variable to each knight makes it easier to trace the path back to where we should be.
4. Seems to be working.
5. Definitely did. Fun to see that work

# Notes for future revisiting
1. Mostly an important note to self: Write more pseudocode. And keep in mind principles like queues and parents and so on.
2. The generation of the children is very wasteful currently, as it just generates all possible moves. On revisiting, I will change this to only create 63 children.
3. Generally, the structure is a bit messy and all over the place. Should all fix it up a bit.
4. Display the solution in chess notation.
