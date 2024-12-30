//Check if an array is subset of another array

void main() {
  List<int> arr1 = [10, 5, 2, 23, 19];
  List<int> arr2 = [19, 5, 3];

  print(checkIsArraySubset(arr1, arr2));
}

bool checkIsArraySubset(List<int> nums1, List<int> nums2) {
  bool isSubset = false;

  for (int i = 0; i < nums2.length; i++) {
    if (nums1.contains(nums2[i])) {
      isSubset = true;
    } else {
      isSubset = false;
    }
  }

  return isSubset;
}
