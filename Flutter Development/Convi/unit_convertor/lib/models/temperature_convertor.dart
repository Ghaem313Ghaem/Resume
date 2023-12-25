double temperatureConvertor(double value, String tag) {
  double convertedValue = 0.0;

  switch (tag) {
    // -------------------- °C --------------------
    case "C→F":
      convertedValue = value * (9 / 5) + 32;
      break;

    case "C→K":
      convertedValue = value + 273.15;
      break;

    // -------------------- °F --------------------
    case "F→C":
      convertedValue = (value - 32) * (5 / 9);
      break;

    case "F→K":
      convertedValue = ((value - 32) * (5 / 9)) + 273.15;
      break;

    // -------------------- K --------------------
    case "K→C":
      convertedValue = value - 273.15;
      break;

    case "K→F":
      convertedValue = (value - 273.15) * (9 / 5) + 32;
      break;
  }

  return convertedValue;
}
