//Program for Mean and median of an unsorted array
//Given an unsorted array a[] of size N, the task is to find its mean and median.

void main() {
  print(findMealMedian([4, 4, 4, 4, 4]));
}

List<double> findMealMedian(List<int> nums) {
  List<double> result = [];
  double mean = findMean(nums);
  double median = findMedian(nums);

  result.add(mean);
  result.add(median);

  return result;
}

double findMean(List<int> nums) {
  double total = 0;
  for (int i = 0; i < nums.length; i++) {
    total += nums[i];
  }

  return total / nums.length;
}

double findMedian(List<int> nums) {
  double median = 0;

  nums.sort();

  if (nums.length % 2 != 0) {
    int index = nums.length ~/ 2;
    median = nums[index].toDouble();
  } else {
    int index = nums.length ~/ 2;
    int next = index - 1;

    double result = (nums[index] + nums[next]) / 2;

    median = result;
  }

  return median;
}
