# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Kellan McCamish, Austin Hart
## Summary
In this lab we learned how to use our full adder that we created last lab as part of our one's complement addition and two's compliment converter. We did this by calling the full adder in our one's compliment file by adding each corresponding bit of each number and using wires to attach our inputs and apply them to the next adder inputs. Then by adding each bit's Y output to the carry around we successfully found the one's compliment addition. Then with our two's copmliment we also called full addder for the corresponding bit of each number, we essentially flipped all the bits and added 1. We had to do this in to seperate stages to avoid a really messy loop. Additionally we learned how to create a half subtractor based on the truth table. We also learned that computors can't subtract directly, they only add. 
## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
Our half adder last lab was used to add more than two bits together with multiple full adders. In this lab our half subtractor with only one number from A and B. We only tested cases based off the truth table, making it much simpler than our half adder. Additionally we didn't need a wire to connect the outputs of multiple bits. 

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
The ones complement carry around is an inneficient and adds extra computing processes to instantiate. As well as demanding proper outlining for use of negatives and negative number addition. Its hard to implement because it needs extra circuits creating more latency.

### 3 - What is the edge case and problem with Two’s Complement number representation?
The issue is with edge cases in a twos complement there is no inversion as you cant negate it due to the fact that it wouldnt fit. You would then get overflow as well depending on the side that you are on (00000000) (>)(<). The issue is the improper recognition of edge cases and how they are handled within the circuits because there is no conversion to a further expanded complement in this code.
