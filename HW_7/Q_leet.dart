/*You are given an array prices where prices[i] is the price of a given stock on the ith day.

You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0 */

void main() {
  List<int> prices = [7, 1, 5, 3, 6, 4];

  int maxProfit = 0;
  int minPrice = prices[0];

  for (int i = 1; i < prices.length; i++) {
    int price = prices[i];

    if (price < minPrice) {
      minPrice = price;
    } else {
      int profit = price - minPrice;
      if (profit > maxProfit) {
        maxProfit = profit;
      }
    }
  }

  print("Maximum profit: $maxProfit");
}

