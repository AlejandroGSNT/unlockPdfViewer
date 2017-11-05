import UIKit

protocol basicOperations
{
    func add(a:Int, b:Int)
    func less(a:Int, b:Int)
}

class Computer
{
    let cpu:String = "883"
}

class Calculator:Computer, basicOperations
{
    func add(a:Int, b:Int)
    {
        
        print("estoy sumando")
    }
    
    func less(a:Int, b:Int)
    {
        print("estoy restando")
    }
}
