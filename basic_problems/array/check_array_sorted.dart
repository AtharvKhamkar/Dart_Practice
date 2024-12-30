//Check array is sorted or not
//Given an array of size n, the task is to check if it is sorted in ascending order or not. Equal values are allowed in an array and two consecutive equal values are considered sorted.

void main() {
  print(checkIsArraySorted([20, 20, 45, 89, 89, 90]));
}

bool checkIsArraySorted(List<int> nums) {
  bool isSorted = true;

  for (int i = 0; i < nums.length - 1; i++) {
    if (nums[i] < nums[i + 1]) {
      isSorted = true;
    } else {
      isSorted = false;
    }
  }

  return isSorted;
}
