//Counting frequencies of array elements
//Given an array which may contain duplicates, print all elements and their frequencies.

//elementAt() method is used in dart to access element of the set index wise

void main() {
  print(countFrequency([10, 20, 20, 10, 10, 20, 5, 20]));
}

Map<int, int> countFrequency(List<int> nums) {
  Map<int, int> result = {};
  Set<int> uniqueValus = nums.toSet();

  int count = 0;

  for (int i = 0; i < uniqueValus.length; i++) {
    for (int j = 0; j < nums.length; j++) {
      if (nums[j] == uniqueValus.elementAt(i)) {
        count++;
      }
    }
    result[uniqueValus.elementAt(i)] = count;
    count = 0;
  }

  return result;
}
