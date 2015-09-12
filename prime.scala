import scala.collection.mutable.ArrayBuffer

object Main {
  val primes = new ArrayBuffer[Int]

  def loop(n: Int): Unit = {
    if (!primes.exists(n % _ == 0)) {
      primes += n
      print(n + " ")
    }

    loop(n + 2)
  }

  def main(args: Array[String]): Unit = {
    print("2 ")
    loop(3)
  }
}
