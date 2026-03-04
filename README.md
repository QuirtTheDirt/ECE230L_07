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
Lab 42 - Gabe Jones, Triston Sinclair, Isaac Larsen
## Summary
In this lab, we built a one-bit subtractor, a 4-bit one's complement adder, and an 8-bit two's complement converter. These are useful circuits for doing subtraction in one's complement and two's complement.
## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The half subtractor from this lab has a "borrow" output instead of the carry out output from the previous lab. The Borrow output is 1 when A is 0 and B is 1 (representing 0 - 1).

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
To correct for the carry out, you must add it to the output number, which requires another addition pass. Two's compliment does not have this shortcoming, as two's compliment carryouts are simply ignored.

### 3 - What is the edge case and problem with Two’s Complement number representation?
The edge case for two's compliment number representation is that its greatest possible representation is one less in magnitude than its lowest possible representation. for example, with 8 bits, 127 is the greatest number that can be represented, while -128 is the lowest number that can be represented.
