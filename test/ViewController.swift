//
//  ViewController.swift
//  test
//
//  Created by ryan on 1/7/16.
//  Copyright © 2016 ryan. All rights reserved.
//

import UIKit

protocol Container {
    var items:[String] {get set}
    func numberOfItems() -> Int
}

extension Container{
    func numberOfItems()->Int {
        return items.count
    }
}

//class ToolBox: Container {
//    var items:[String] = ["Glue Stick", "Scissors", "Hammer", "Level", "Screwdriver", "Jigsaw"]
//    
//    func randomItem()->String {
//        var ramIndex = Int(arc4random_uniform(UInt32(items.count)))
//        print(ramIndex)
//        return items[ramIndex]
//    }
//    func numberOfItems() -> Int {
//        return items.count * 2
//    }
//}
//
//protocol Hello{
//    func showHello()
//}
//extension Hello{
//    func showHello(){
//        print("hello")
//    }
//}
//protocol Hi{
//    func showHi()
//}
//extension Hi{
//    func showHi(){
//        print("Hi")
//    }
//}



class ViewController: UIViewController{

    @IBOutlet weak var imageName: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("new")
        print("complete")
        
//        showHello()
//        showHi()
        
//        var t = ToolBox()
//        print(t.randomItem())
        
        //  不好的寫法
//        func devide(devided:Double?, devider:Double?)->Double?{
//            
//            if devided == nil || devider < 0 {
//                print("devided is nil")
//                return nil
//            }
//            if devider == nil || devider < 0 {
//                print("devided is nil")
//                return nil
//            }
//            return devided! / devider!
//            
//        }
//        
//        var result = devide(11, devider: 2)
//        print(result)
        
        
        //使用optional binding
//        func devide2(devided:Double?, devider:Double?)->Double?{
//        
//            var result:Double? = nil
//            if let x = devided, y = devider where  x > 0 && y > 0 {
//                result = x / y
//            }
//            return result
//            
//        }
//        
//        
//        var dd = devide2(11, devider: 3)
//        var d2 = devide2(nil, devider: 3)
//        
//        print(dd)
//        print(d2)
        
        
//        //使用 guard
//        func devide3(devided:Double?, devider:Double?)->Double?{
        
//            guard let x = devided where x > 0 else{
//                print("devided is nil")
//                return nil
//            }
//            guard let y = devider where y > 0 else{
//                print("devided is nil")
//                return nil
//            }
            
//            guard let x = devided, let y = devider where x > 0 && y > 0 else{
//                return nil
//            }
//                return x / y
//        }
//        
//        
//      var result3 = devide3(nil, devider: 2)
//      var result4 = devide3(11, devider: 2)
//      print(result3)
//      print(result4)
        
//        // 假設這是一個是使用者輸入，或是網路來的的Dict
//        var userData:[String:String] = [String:String]()
//        
//        // 檢查method
//        func checkUserDataCorrect(data:[String:String])->Bool{
//
//            
//            guard let _ = userData["firstName"] else{
//                print("no name")
//                return false
//            }
//            guard let _ = userData["lastName"] else{
//                print("no firstName")
//                return false
//            }
//            guard let _ = userData["gender"] else{
//                print("no lastName")
//                return false
//            }
//
//            for result in userData {
//                
//                print(result)
//            }
//                return true
//            
//        }
//        
//        // 不正確資料 (空資料)
//        checkUserDataCorrect(userData) // 輸出 false
//        
//        // 不正確資料 (少了lastName 錯誤)
//        userData = ["name":"大明王",
//            "firstName":"大明"]
//        checkUserDataCorrect(userData) // 輸出 false
//        
//        // 正確資料
//        userData = [
//            "firstName":"大明",
//            "lastName":"王",
//            "gender":"male"
//        ]
//        checkUserDataCorrect(userData)
        
        
//        func check(x: Int?)-> Bool {
//            var boo:Bool = false
//            if let x = x where x > 0 {
//                 //return true
//                boo = true
//            }
//                return boo
//
//        }
//        
//        func check2(x:Int?)-> Bool {
//            guard let x = x where x > 0 else{
//                return false
//            }
//            
//            return true
//        }
//
//
//        print(check(10))
//        print(check(-1))
//        print(check(nil))
//        
//        print(check2(10))
//        print(check2(-1))
//        print(check2(nil))
        
//        var testArr = ["ryan","yu","man","taiwan"]
//        
//        for result in testArr where result != "man"{
//            print(result)
//        }
        
//        for _ in 1 ... 5{
//            print("hello")
//        }

//        let animals = ["b", "c", "d", "a"]
//        let sortedAnimals = animals.sort { (one: String, two: String) -> Bool in
//            return one < two
//        }
//        let test = animals.sort(<)
//        
//        
//        print(test)
        
        
//        struct Address {
//            var fullAddress: String
//            var city: String
//            
//            init(fullAddress: String, city: String) {
//                self.fullAddress = fullAddress
//                self.city = city
//            }
//        }
//        
//        
//        class Person {
//            var name: String
//            var address: Address
//            
//            init(name: String, address: Address) {
//                self.name = name
//                self.address = address
//            }
//        }
//        
        
//        var headquarters = Address(fullAddress: "123 Street", city: "taipei")
//        
//        var p1 = Person(name: "ryan", address: headquarters)
//        var p2 = Person(name: "kai", address: headquarters)
//        
//        p1.address.city = "tainan"
//        print(p2.address.city)
        
        
//        var thing = "cars"
//        
//        let closure = {
//            print("I love \(thing)")
//        }
//        
//        closure()
//        
//        thing = "airplanes"
//        
//        closure()

//        func devide(devided:Double?, devider:Double?)->Double?{
//            
//            if devided == nil {
//                print("devided is nil")
//                return nil
//            }
//            if devider == nil{
//                print("devider is nil")
//                return nil
//            }
//            return devided! / devider!
//            
//        }
//        
//        devide(5, devider: nil)
        
        
//        // 初始化(圖片為363x198，圖片太大將它縮為1/2)
//        let dyImageView: UIImageView = UIImageView(frame: CGRectMake(50,150,363/2,198/2))
//        
//        // 圖片檔案引入UIImage物件(需要先將圖片加入專案中)
//        dyImageView.image = UIImage(named: "baseball.png")
//        dyImageView.frame = CGRectMake(150,10,100,100)
//    
//        // UIImageView加入主要View中
//        self.view.addSubview(dyImageView)

        
        
        //imageName.image = UIImage(contentsOfFile: "baseball.png")
        
        
//        labelName.text = "test~~~~~~~~"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

