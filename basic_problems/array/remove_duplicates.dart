//Remove Duplicates from the array
//Given a sorted array arr[] of size n, the goal is to rearrange the array so that all distinct elements appear at the beginning in sorted order. Additionally, return the length of this distinct sorted subarray.

void main() {
  print(removeDuplicates([2, 2, 2, 2, 2]));
}

List<int> removeDuplicates(List<int> nums) {
  List<int> result = [];
  for (int i = 0; i < nums.length; i++) {
    if (!binarySearch(nums, i, nums[i])) {
      result.add(nums[i]);
    }
  }

  return result;
}

bool binarySearch(List<int> nums, int startIndex, int target) {
  int start = startIndex;
  int end = nums.length - 1;

  while (start < end) {
    int mid = start + (end - start) ~/ 2;

    if (target > nums[mid]) {
      start = mid + 1;
    } else if (target < nums[mid]) {
      end = mid - 1;
    } else if (target == nums[mid]) {
      return true;
    } else {
      return false;
    }
  }
  return false;
}
