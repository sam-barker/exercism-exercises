export default class Prime {
  isPrimeNumber(num: number) {
    for(let i = 2; i <= Math.sqrt(num); i++) {
      if (num % i === 0) {
        return false;
      }
    }
    return true;
  }

  nth(primeIndex: number = 0) {
    if (primeIndex <= 0) {
      throw new Error('Prime is not possible');
    }

    if (primeIndex === 1) {
      return 2;
    }

    // first prime is 2, 2nd is 3, 3rd prime 5
    let foundPrimes = 0;
    let numberToTest = 2;
    while(foundPrimes < primeIndex) {
      const isPrime = this.isPrimeNumber(numberToTest);
      if (isPrime) {
        foundPrimes++;
      }
      numberToTest++;
    }
    return numberToTest - 1;
  }
};
