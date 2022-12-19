import Foundation

@main
public enum AoC_2022 {
    public static func main() {
        let filePath = "Inputs/Day01/part1/example1.txt"
        let fileContent = try! String(contentsOf: URL(fileURLWithPath: filePath), encoding: .utf8)

        var totalCalories = 0.0

        let lines = fileContent.components(separatedBy: .newlines)
        for line in lines {
            if line.isEmpty { continue }
            let calories = Double(line)!
            if calories > totalCalories {
                totalCalories = calories
            }
        }

        print(totalCalories)
    }
}
