//Find duplicates
// Given an array of n elements that contains elements from 0 to n-1, with any of these numbers appearing any number of times. Find these repeating numbers in O(n) and use only constant memory space.

void main() {
  print(findDuplicatesOptimized([1, 2, 3, 6, 3, 6, 1]));
}

List<int> findDuplicates(List<int> nums) {
  List<int> duplicates = [];

  for (int i = 0; i < nums.length - 1; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] == nums[j]) {
        duplicates.add(nums[i]);
      }
    }
  }
  return duplicates;
}

List<int> findDuplicatesOptimized(List<int> nums) {
  List<int> duplicates = [];
  nums.sort();
  print(nums);
  for (int i = 0; i < nums.length - 1; i++) {
    bool result = binarySearch(nums, i + 1, nums.length - 1, nums[i]);
    print(result);
    if (result) {
      duplicates.add(nums[i]);
    }
  }
  return duplicates;
}

bool binarySearch(List<int> nums, int start, int end, int target) {
  while (start <= end) {
    int mid = start + (end - start) ~/ 2;

    if (target > nums[mid]) {
      start = mid + 1;
    } else if (target < nums[mid]) {
      end = mid - 1;
    } else if (target == nums[mid]) {
      return true;
    }
  }
  return false;
}
