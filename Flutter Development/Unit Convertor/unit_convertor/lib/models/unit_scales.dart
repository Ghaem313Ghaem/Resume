Map<String, Map<String, double>> unitScales = {
  "Length": {
    // ------------ ↓ mm ↓ ------------
    "mm→cm": 0.1, // 2
    "mm→m": 0.001, // 3
    "mm→km": 0.000001, // 4
    "mm→in": 0.0393700787, // 5
    "mm→ft": 0.0032808399, // 6
    "mm→yd": 0.0010936133, // 7
    "mm→mi": 6.21371192e-7, // 8
    "mm→NM": 5.39956803e-7, // 9
    "mm→mil": 39.3700787, // 10
    // ------------ ↓ cm ↓ ------------
    "cm→mm": 10, // 1
    "cm→m": 0.01, // 3
    "cm→km": 1e-5, // 4
    "cm→in": 0.393700787, // 5
    "cm→ft": 0.032808399, // 6
    "cm→yd": 0.010936133, // 7
    "cm→mi": 6.21371192e-6, // 8
    "cm→NM": 5.39956803e-6, // 9
    "cm→mil": 393.700787, // 10
    // ------------ ↓ m ↓ ------------
    "m→mm": 1000, // 1
    "m→cm": 100, // 2
    "m→km": 0.001, // 4
    "m→in": 39.3700787, // 5
    "m→ft": 3.2808399, // 6
    "m→yd": 1.0936133, // 7
    "m→mi": 0.000621371192, // 8
    "m→NM": 0.000539956803, // 9
    "m→mil": 39370.0787, // 10
    // ------------ ↓ km ↓ ------------
    "km→mm": 1e+6, // 1
    "km→cm": 1e+5, // 2
    "km→m": 1000, // 3
    "km→in": 39370.0787, // 5
    "km→ft": 3280.8399, // 6
    "km→yd": 1093.6133, // 7
    "km→mi": 0.621371192, // 8
    "km→NM": 0.539956803, // 9
    "km→mil": 39370078.7, // 10
    // ------------ ↓ in ↓ ------------
    "in→mm": 25.4, // 1
    "in→cm": 2.54, // 2
    "in→m": 0.0254, // 3
    "in→km": 2.54e-5, // 4
    "in→ft": 0.0833333333, // 6
    "in→yd": 0.0277777778, // 7
    "in→mi": 1.57828283e-5, // 8
    "in→NM": 1.37149028e-5, // 9
    "in→mil": 1000, // 10
    // ------------ ↓ ft ↓ ------------
    "ft→mm": 304.8, // 1
    "ft→cm": 30.48, // 2
    "ft→m": 0.3048, // 3
    "ft→km": 0.0003048, // 4
    "ft→in": 12, // 6
    "ft→yd": 0.333333333, // 7
    "ft→mi": 0.000189393939, // 8
    "ft→NM": 0.000164578834, // 9
    "ft→mil": 12000, // 10
    // ------------ ↓ yd ↓ ------------
    "yd→mm": 914.4, // 1
    "yd→cm": 91.44, // 2
    "yd→m": 0.9144, // 3
    "yd→km": 0.0009144, // 4
    "yd→in": 36, // 6
    "yd→ft": 3, // 7
    "yd→mi": 0.000568181818, // 8
    "yd→NM": 0.000493736501, // 9
    "yd→mil": 36000, // 10
    // ------------ ↓ mi ↓ ------------
    "mi→mm": 1609344, // 1
    "mi→cm": 160934.4, // 2
    "mi→m": 1609.344, // 3
    "mi→km": 1.609344, // 4
    "mi→in": 63360, // 6
    "mi→ft": 5280, // 7
    "mi→yd": 1760, // 8
    "mi→NM": 0.868976242, // 9
    "mi→mil": 63360000, // 10
    // ------------ ↓ NM ↓ ------------
    "NM→mm": 1852000, // 1
    "NM→cm": 185200, // 2
    "NM→m": 1852, // 3
    "NM→km": 1.85200, // 4
    "NM→in": 72913.3858, // 6
    "NM→ft": 6076.11549, // 7
    "NM→yd": 2025.37183, // 8
    "NM→mi": 1.15077945, // 9
    "NM→mil": 72913385.8, // 10
    // ------------ ↓ mil ↓ ------------
    "mil→mm": 0.0254, // 1
    "mil→cm": 0.00254, // 2
    "mil→m": 2.54e-5, // 3
    "mil→km": 2.54e-8, // 4
    "mil→in": 0.001, // 6
    "mil→ft": 8.33333333e-5, // 7
    "mil→yd": 2.77777778e-5, // 8
    "mil→mi": 1.57828283e-8, // 9
    "mil→NM": 0.868976242, // 10
  },
  "Area": {
    // ------------ ↓ ac ↓ ------------ // Till this part ...
    "ac→mm": 0.0254, // 1
    "ac→cm": 0.00254, // 2
    "ac→m": 2.54e-5, // 3
    "ac→km": 2.54e-8, // 4
    "ac→in": 0.001, // 6
    "ac→ft": 8.33333333e-5, // 7
    "ac→yd": 2.77777778e-5, // 8
    "ac→mi": 1.57828283e-8, // 9
    "ac→NM": 0.868976242, // 10
  },
  "Temperature": {
    "m→mm": 1000,
    "km→m": 1000,
  }
};
