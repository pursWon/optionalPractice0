//
//  optionalPractice0App.swift
//  optionalPractice0
//
//  Created by MacBook Air on 2022/07/25.
//

import Foundation

// Force Unrapping (강제 언랩핑)

let watch: String? = "time"
print(watch!)

// Optioanl Binding (옵셔널 바인딩)

var myNumber: Int? = 777
var myNumber2: Int?
if let myLife = myNumber2 {
    print("나의 인생은 행운으로 가득찼구나") // myNumber의 값이 존재하므로 myLife에 값이 할당된다.
} else {
    print("내 인생의 어떤 날은 불운할수도 있겠구나")
}

if let myAge = myNumber2 { // myNumber2에 값이 없으므로 myAge에 할당되지 않고 패스됨
    print(28)
}

// 여러 옵셔널을 바인딩

var movieName1: String?
var movieName2: String?

movieName1 = "LALA LAND"
movieName2 = "TOP GUN"

if let goodMovie1 = movieName1,
   let goodMovie2 = movieName2 {
    print(goodMovie1, goodMovie2)
}
    
// 옵셔널 체이닝

class home { // 클래스 home을 생성
    var residents = 2 // 변수 residents를 생성
}

class done { // 클래스 done을 생성
    var resident: home?
}

let hello = done() // hello 상수에 클래스 done을 호출

hello.resident = home() // 클래스 home을 호출함으로써 resident에 속하게 함
// 이로써 밑의 if문의 조건을 충족, 클래스 home을 호출하지 않았으면 nil을 반환

if let residentCount = hello.resident?.residents { // home이 옵셔널을 가지므로
    // 상속된 resident도 옵셔널을 가지므로 ? 을 붙여야 한다.
    print(residentCount)
} else {
    print("nil")
}








