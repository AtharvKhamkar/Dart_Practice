void main() {
  List<int> testList = [5, 4, 3, 2, 1];
  HelperFunctions.selectionSort(testList);
  testList.forEach((ele) => print(ele));
}

class HelperFunctions {
  static void selectionSort(List<int> nums) {
    for (int i = 1; i < nums.length; i++) {
      int lastIndex = nums.length - i;
      int max_index = findMaxIndex(nums, 0, lastIndex);
      swap(nums, lastIndex, max_index);
    }
  }

  static int findMaxIndex(List<int> nums, int start, int end) {
    int MAX_INDEX = start;
    for (int i = start; i <= end; i++) {
      if (nums[i] > nums[MAX_INDEX]) {
        MAX_INDEX = i;
      }
    }

    return MAX_INDEX;
  }

  static void swap(List<int> nums, int index1, int index2) {
    print('Swapped');
    int temp = nums[index1];
    nums[index1] = nums[index2];
    nums[index2] = temp;
  }
}
