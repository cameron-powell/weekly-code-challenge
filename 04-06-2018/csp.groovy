System.in.withReader { reader ->
  def (n, k) = reader.readLine().split().collect { it as Integer }
  def costs = reader.readLine().split().collect { it as Integer }
  def charged = reader.readLine() as Integer
  def actualCost = (costs.sum() - costs[k]) / 2
  println "${(charged == actualCost) ? "Bon Appetit" : charged - actualCost }"
}
