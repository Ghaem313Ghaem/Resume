Map<String, Map<String, double>> unitScales = {
  "Length": {
    "m→mm": 1000,
    "km→m": 1000,
    // ------------ ↓ mm ↓ ------------
    "mm→cm": 0.1, // 1
    "mm→m": 0.001, // 3
    "mm→km": 0.000001, // 4
    "mm→in": 0.0393700787, // 5
    "mm→ft": 0.0032808399, // 6
    "mm→yd": 0.0010936133, // 7
    "mm→mi": (BigInt.from(6.21371192e-7)).toDouble(), // 8 // Till This part .... The number has problem of reading it ...
  },
  "Area": {
    "m→mm": 1000,
    "km→m": 1000,
  }
};
