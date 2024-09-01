# MathOperators

`MathOperators` is a Swift library that introduces a protocol-driven approach to perform common mathematical operations across various numeric types. By conforming to the `MathOperators` protocol, numeric types gain a set of intuitive methods for addition, subtraction, multiplication, division, and comparisons.

## Features

- **Protocol-Oriented**: The library defines a `MathOperators` protocol, which can be adopted by any numeric type.
- **Supports Multiple Numeric Types**: The library extends support to common numeric types like `Int`, `Double`, and `Float`.
- **Simplified Operations**: Provides easy-to-read methods for common operations such as `plus`, `minus`, `times`, `div`, and comparison methods like `isBiggerThan`, `isSmallerThan`, and their variants.

## Installation

### Swift Package Manager

To integrate `MathOperators` into your project, you can use Swift Package Manager. Add the following to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/sadeghgoo/MathOperators.git", from: "1.0.0")
]

Then, include `MathOperators` in your target dependencies:

```swift
.target(
    name: "YourProject",
    dependencies: ["MathOperators"]
)
```

Alternatively, you can add the package directly through Xcode:

1. Go to `File > Swift Packages > Add Package Dependency`.
2. Enter the repository URL: `https://github.com/sadeghgoo/MathOperators`.
3. Choose the latest version and click `Next`.

## Usage

### Importing the Library

Start by importing the library into your Swift file:

```swift
import MathOperators
```

### Conforming to MathOperators

The `MathOperators` protocol provides a set of methods for mathematical operations. The library already extends `Int`, `Double`, and `Float` to conform to this protocol.

```swift
let a: Double = 10.0
let b: Double = 5.0

let sum = a.plus(b)          // 15.0
let difference = a.minus(b)   // 5.0
let product = a.times(b)      // 50.0
let quotient = a.div(b)       // 2.0
```

### Comparisons

You can also use the protocol methods for comparison operations:

```swift
let a: Int = 10
let b: Int = 5

let isEqual = a.isEqual(toNumber: b)                // false
let isBigger = a.isBiggerThan(b)                    // true
let isSmaller = a.isSmallerThan(b)                  // false
let isBiggerOrEqual = a.isBiggerThanOrEqual(b)      // true
let isSmallerOrEqual = a.isSmallerThanOrEqual(b)    // false
```

### Custom Numeric Types

If you have a custom numeric type, you can conform it to the `MathOperators` protocol by implementing the required methods, or by taking advantage of default implementations if your type conforms to `BinaryFloatingPoint` or `FixedWidthInteger`.

```swift
struct CustomNumber: MathOperators {
    var value: Int

    func plus(_ number: CustomNumber) -> CustomNumber {
        return CustomNumber(value: self.value + number.value)
    }

    // Implement other methods as needed...
}
```

## Contributing

Contributions are welcome! If you would like to contribute, please fork the repository and submit a pull request. For major changes, please open an issue to discuss what you would like to change.

## License

`MathOperators` is licensed under the MIT License. See the `LICENSE` file for more information.

## Contact

If you have any questions, suggestions, or feedback, feel free to reach out via [swiftwithsadeq@gmail.com](mailto:swiftwithsadeq@gmail.com).
```

You can now copy this content and save it as a `README.md` file in your project.
