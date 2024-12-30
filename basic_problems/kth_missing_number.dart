void main() {
  List<int> testList = [1, 2, 3, 4];
  int result = HelperFunctions.findKthPositive(testList, 2);
  print(result);
}

class HelperFunctions {
  static int findKthPositive(List<int> arr, int k) {
    int missingNumbersCount = 0;
    int missingNumber = 0;
    for (int i = 1; i < arr[arr.length - 1] + k + 1; i++) {
      if (binarySearch(arr, i) == -1) {
        missingNumbersCount++;
        print('Iterated loop $i');
        if (missingNumbersCount == k) {
          missingNumber = i;
          print('missing number is $missingNumber');
        }
      }
    }

    return missingNumber;
  }

  static int binarySearch(List<int> arr, int target) {
    int start = 0;
    int end = arr.length - 1;

    while (start <= end) {
      int mid = start + (end - start) ~/ 2;

      if (target > arr[mid]) {
        start = mid + 1;
      } else if (target < arr[mid]) {
        end = mid - 1;
      } else {
        return mid;
      }
    }

    return -1;
  }
}
