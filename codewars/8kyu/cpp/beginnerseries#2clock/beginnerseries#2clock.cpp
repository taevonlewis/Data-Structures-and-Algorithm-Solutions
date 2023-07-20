// Beginner Series #2 Clock

int past(int h, int m, int s) {
  int hoursToMilli {h * 60 * 60 * 1000};
  int minsToMilli {m * 60 * 1000};
  int secsToMilli {s * 1000};
  
  return hoursToMilli + minsToMilli + secsToMilli;
}