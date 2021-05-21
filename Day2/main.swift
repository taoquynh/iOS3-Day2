//
//  main.swift
//  Day2
//
//  Created by Taof on 19/05/2021.
//

import Foundation

let str = "Hom nay troi nong qua."
print(str.count)

// MARK: - Câu điều kiện
if str.count < 10 {
    print("Chuỗi quá ngắn")
}


if str.count < 10 {
    print("Chuỗi quá ngắn")
} else {
    print("Chuỗi không ngắn")
}


if str.count < 10 {
    print("Chuỗi quá ngắn")
} else if str.count < 20 {
    print("Chuỗi có độ dài trung bình")
} else {
    print("Chuỗi dài")
}

// MARK: Cho số nguyên n. Kiểm n là số âm, số 0 hay là số dương?

var a: Float = 10
if a < 0 {
    print("\(a) là số âm")
} else if a == 0 {
    print("\(a) = 0")
} else {
    print("\(a) là số dương")
}

// MARK: Cho số nguyên b. Kiểm tra b là số chẵn hay số lẻ.
// Để tìm phần dư thì dùng phép toán %. Ví dụ 5%3 = 2
let b: Int = 21
if b%2 == 0 {
    print("\(b) là số chẵn")
} else {
    print("\(b) là số lẻ")
}

var isMale: Bool = true
// C1
if isMale == true {
    print("Giới tính nam")
} else {
    print("Giới tính nữ")
}

// C2:
if isMale {
    print("Giới tính nam")
} else {
    print("Giới tính nữ")
}

// C3:
if isMale == false {
    print("Giới tính nữ")
} else {
    print("Giới tính nam")
}

// C4:
if !isMale { // Sử dụng ! đứng trước isMale là giá trị nghịch đảo của đối tượng bool
    print("Giới tính nữ")
} else {
    print("Giới tính nam")
}

// C5:
isMale ? print("Giới tính nam") : print("Giới tính nữ") // toán tử điều kiện 3 ngôi

//MARK: Cho 2 số x và y. Viết hàm kiểm tra xem x có chia hết cho y không.
func checkChiaHet(x : Int , y : Int)
{
    if y == 0 {
        print("y không hợp lệ")
        return // return dừng chương trình nếu y = 0
    }
    
    if x%y == 0
    {
        print("\(x) chia het cho \(y)")
    }
    else
    {
        print("\(x) không chia hết cho \(y)")
    }
}
checkChiaHet(x: 10, y: 0)

// MARK: - Cho 2 số x, y. Viết hàm trả về số lớn hơn.

func isMax(x:Float, y:Float) -> Float {
    if x >= y {
        return x
    }
    
    return y
    
    //    return x >= y ? x : y // viết gọn
}

print(isMax(x: 4, y: 2))

// MARK: - Giải phương trình bậc nhất ax + b = c (a, b, c là các số nguyên).

func pTrinhBacNhat (a: Int, b: Int, c: Int) {
    if a == 0 && b == c {
        print("phuong trinh vo so nghiem")
    } else if a == 0 && b != c {
        print("phuong trinh vo nghiem ")
    } else {
        print("phuong trinh 1 nghiem \((Float(c) - Float(b)) / Float(a))")
    }
}

pTrinhBacNhat(a: 2, b: 3, c: 6)

// MARK: - Giải phương trình bậc 2 ax^2 + bx + c = 0 (với a # 0)
func gptBacHai(a: Float, b: Float, c: Float) -> String {
    let denta = b*b - 4*a*c
    if denta > 0 {
        let x1 = (-b - sqrt(denta))/(2*a)
        let x2 = (-b + sqrt(denta))/(2*a)
        return "Phuong trinh co hai nghiem x1 = \(x1) va x2 = \(x2)"
    }
    else if denta == 0 {
        let x = -b/(2*a)
        return "Phuong trinh co nghiem kep x = \(x)"
    }
    return "Phuong trinh vo nghiem"
}
print(gptBacHai(a: 1, b: 2, c: 2))

func ptBacHai(a: Float, b: Float, c: Float) -> String {
    let delta = b*b - 4*a*c
    
    if delta < 0 {
        return "Phương trình vô nghiệm"
    }
    
    if delta == 0 {
        return "Phương trình có 1 nghiệm kép \(-b/(2*a))"
    }
    
    return "Phương trình có 2 nghiệm phân biệt: \n x1 = \((-b - sqrt(delta)) / (2*a)) \n x2 = \((-b + sqrt(delta)) / (2*a))"
}

print(ptBacHai(a: 1, b: -2, c: 1))
print(ptBacHai(a: 1, b: -3, c: 1))
print(ptBacHai(a: 1, b: -3, c: 2))
print(ptBacHai(a: 1, b: 2, c: 2))

// MARK: - Câu điều kiện switch ... case

var number: Double = 20.4

switch number {
case 1:
    print("number là 1")
case 2:
    print("number là 2")
case 3:
    print("number là 3")
case 4:
    print("number là 4")
case 5:
    print("number là 5")
default :
    print("number không phải nằm trong các số từ 1 đến 5")
}

switch number {
case 1..<5:
    print("number nằm trong khoảng từ 1 đến 4")
case 5...10:
    print("number nằm trong khoảng từ 5 đến 10")
case 11...15:
    print("number nằm trong khoảng từ 11 đến 15")
case 16...20.5:
    print("number là nằm trong khoảng từ 16 đến 20")
default :
    print("number không nằm trong khoảng từ 1 đến 20")
}

// MARK: - Cho điểm 3 môn Toán, Lý, Hoá. Viết hàm tính điểm trung bình và xếp loại học lực. Biết:
/**
 - 0 đến nhỏ 3: học lực yếu
 - 3 đến nhỏ hơn 5: kém
 - 5 đến nhỏ hơn 6.5: trung bình
 - 6.5 đến nhỏ hơn 8: khá
 - 8 đến 10: giỏi
 */
func hocLuc ( Toan: Double, Ly: Double, Hoa: Double) {
    if Toan < 0 || Ly < 0 || Hoa < 0 || Toan > 10 || Ly > 10 || Hoa > 10 {
        print("Điểm không hợp lệ")
        return
    }
    
    let tb = (Toan+Ly+Hoa)/3
    switch tb {
    case 0..<3:
        print ("học lực yếu"  )
    case 3..<5:
        print ("học lực kém")
    case 5..<6.5:
        print ("học lực trung bình")
    case 6.5..<8:
        print (" học lực khá")
    case 8...10:
        print (" học lực giỏi")
        fallthrough
    default:
        print ("Không hợp lệ")
    }
    
}
hocLuc(Toan: 9, Ly: 9, Hoa:10)

// MARK: - Vòng lặp
for i in 20...50 {
    print(i)
}


let name = "Quynh0"
for i in name {
    print(i)
}

// hàm lowercased() để viết thường, áp dụng cho Character, String
// hàm uppercased() để viết hoa, áp dụng cho Character, String
// Quynh -> qUYNH

func daoNguocHoaThuong(str: String) -> String{
    var newString: String = ""
    for i in str {
        if String(i) == i.lowercased() {
            newString = newString + i.uppercased()
        } else {
            newString = newString + i.lowercased()
        }
        //        newString += String(i) == i.lowercased() ? i.uppercased() : i.lowercased()
    }
    
    return newString
}

print(daoNguocHoaThuong(str: "Quynh012"))

// MARK: Cho dãy số tự nhiên từ 1 đến 50. Hãy đếm có bao nhiêu số chẵn trong dãy số đó.
func demSoChan(dau: Int, cuoi: Int) -> Int {
    if dau >= cuoi {
        return 0
    }
    
    var count = 0
    for i  in dau...cuoi {
        if i%2 == 0 {
            count = count + 1
        }
    }
    return count
}
