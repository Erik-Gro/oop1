
class CoinStack {

  final List<int> coins;

  CoinStack(Iterable<int> coins) : coins = List.unmodifiable(coins);

  int get totalValue => coins.fold(0, (sum, coin) => sum + coin);

  bool operator >(CoinStack other) => totalValue > other.totalValue;

  bool operator <(CoinStack other) => totalValue < other.totalValue;

  bool operator >=(CoinStack other) => totalValue >= other.totalValue;

  bool operator <=(CoinStack other) => totalValue <= other.totalValue;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CoinStack && totalValue == other.totalValue;
  }

  @override
  int get hashCode => totalValue.hashCode;

  CoinStack operator +(CoinStack other) {
    return CoinStack([...coins, ...other.coins]);
  }

  CoinStack? operator -(CoinStack other) {
    final remaining = List<int>.from(coins);

    for (final coin in other.coins) {

      if (!remaining.remove(coin)) {
        return null;
      }
    }

    return CoinStack(remaining);
  }

  @override
  String toString() => 'CoinStack(coins: $coins, totalValue:$totalValue)';
}