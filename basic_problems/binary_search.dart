void main() {
  List<int> sampleList = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int target = 8;
  int result = Search.binarySearch(sampleList, target);
  print('Target element is at $result');
}

class Search {
  static int binarySearch(List<int> nums, int target) {
    int start = 0;
    int last = nums.length - 1;

    while (start <= last) {
      int mid = start + (last - start) ~/ 2;

      if (target > nums[mid]) {
        start = mid + 1;
      } else if (target < nums[mid]) {
        last = mid - 1;
      } else {
        return mid;
      }
    }

    return -1;
  }
}
