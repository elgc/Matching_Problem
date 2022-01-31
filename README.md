# Matching_Problem for the selection of mentor-mentee pairs in a leadership training program #

This repository provides a function to solve the Matching Marriage Problem. The *stable* matching problem is one of finding a bijection from the elements of one set to the elements of the other set. A matching is stable when there does not exist any match (i, j) --"i" element of first group and "j" element of second group-- which both prefer each other to their current partner under the matching.

The stable marriage problem is stated as follows (ref: https://en.wikipedia.org/wiki/Stable_marriage_problem)

Given n mentees and n mentors, where each person has ranked all members of the opposite group in order of preference, match the mentees and mentors together such that there are no two people of opposite groups who would both rather have each other than their current match. When there are no such pairs of people, the set of pairs (mentee, mentor) is stable.

For this solution the package matchingR is used within a function whose inputs are matrices of preferences (Mentee and Mentor), as well as mentee and mentors names (padawans and yodas). 

Note: Preference matrices and names have been scaled and changed to keep the data anonymous.
