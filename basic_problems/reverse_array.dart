void main() {
  List<int> nums = [1, 2, 3, 4, 5];
  BasicArrayFunctions baf = BasicArrayFunctions();
  baf.reverseArray(nums);
}

class BasicArrayFunctions {
  void reverseArray(List<int> nums) {
    print("Executed function");
    int start = 0;
    int end = nums.length - 1;

    while (start < end) {
      swap(nums, start, end);
      start++;
      end--;
    }

    nums.forEach((ele) => print(ele));
  }

  void swap(List<int> nums, int index1, int index2) {
    int temp = nums[index1];
    nums[index1] = nums[index2];
    nums[index2] = temp;
  }
}
