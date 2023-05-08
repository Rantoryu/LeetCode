#https://leetcode.com/problems/running-sum-of-1d-array/description/

class Solution(object):
    def runningSum(self, nums):
        n = len(nums)
        results=[nums[0]]

        for i in range(1,n):
            nums[i]+=nums[i-1]
            results.append(nums[i])
        return results