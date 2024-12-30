//Replace each element of Array with it’s corresponding rank
// The rank of an element is defined as the distance between the element with the first element of the array when the array is arranged in ascending order. If two or more are same in the array then their rank is also the same as the rank of the first occurrence of the element.

void main() {
  print(findRank([100, 5, 70, 2]));
}

List<int> findRank(List<int> nums) {
  List<int> original = [];
  nums.forEach((e) => original.add(e));
  // print(original);
  List<int> ranks = [];
  int rank = 0;
  nums.sort();

  for (int i = 0; i < nums.length - 1; i++) {
    if (nums[i] < nums[i + 1]) {
      print(original);
      rank++;
      int index = findIndexOfElement(original, nums[i]);
      ranks.insert(index, rank);
    }
  }

  return ranks;
}

int findIndexOfElement(List<int> nums, int target) {
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == target) {
      return i;
    }
  }
  return -1;
}
