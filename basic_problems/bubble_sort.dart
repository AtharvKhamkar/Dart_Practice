void main() {
  List<int> testList = [5, 4, 3, 2, 1];
  HelperFunctions.bubbleSort(testList);
  testList.forEach((ele) => print(ele));
}

class HelperFunctions {
  static void bubbleSort(List<int> nums) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = 1; j < nums.length - i; j++) {
        if (nums[j] < nums[j - 1]) {
          int temp = nums[j];
          nums[j] = nums[j - 1];
          nums[j - 1] = temp;
        }
      }
    }
  }
}
