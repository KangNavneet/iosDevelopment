//
//  main.swift
//  assignment2
//
//  Created by user165323 on 7/2/20.
//  Copyright © 2020 user165323. All rights reserved.
//

import Foundation


let c1=Company()

print("The Program has following functionality:\nEmployee:getInfo()\nEmployee:salaryRaise()\nEmployee:setTask()")
print("Type 1:Get Info of EmployeeNumber Exist Currently ONLY\nType 2:Get Info of Default Employee\nType 3:Get Info of Particular Employee of your choice\nType 4:To Exit")
print("Entry:")
var key=Int(readLine()!)

switch key{
case 1:
    let c1=Company()
    
    break
case 2:
        let e1=Employee()
        e1.getInfo()
    break
    
    case 3:
        print("Company- Enter The Id For The Employee To Access Info:")
        var id=Int(readLine()!)!
        let e2 = Employee(id)
        e2.getInfo()
        print("Type 1:For Salary Raise \n Type 2:Task Change\n Type 3:Both For Salary Raise and Task Change\n Type 4:To Exit")
        print("Entry:")
        var prompt=Int(readLine()!)
        func salary()
        {
            print("Raise Amount=")
            var amount=Double(readLine()!)!
            e2.salaryRaise(amount)
            print("After Raise Info")
            e2.getInfo()
        }
        
        func task()
        {
            print("Set Task")
            var task=(readLine()!)
        
            e2.setTask(task)
            print("After Task Change")
            e2.getInfo()
            
        }
        
        func  companyInterest()
        {
            print("Interested in Company Info\n Type:yes/no")
            print("Entry:")
            var entry=readLine()!

            func payday()
            {
                print("************PayDay********\nWant to Know:How much has gone for total salary expense?\nType : yes/no")
                var  salInfo=readLine()!
                switch salInfo
                {
                case "yes":
                    c1.payDay()
                    break
                case "no":
                    print("No Payday Info")
                    break
                default:
                    print("Choose Right Format")
                    payday()
                    break
                    
                }
            }
            switch entry
            {
            case "yes":
                c1.getInfo()
                payday()
                break
                
            case "no":
                print("Ok Exiting")
                break
            default:
                print("Wrong Entry\nEnter Again")
                companyInterest()
                break;
            }
            
        }
        
        
        switch prompt
        {
        case 1:
            salary()
            companyInterest()
            
            
        case 2:
            task()
            e2.getInfo()
            companyInterest()
            break;
        case 3:
           salary()
           task()
           companyInterest()
            break;
            
            case 4:
                
                print("Continue..")
                break;
        default:
            break
        }
        
        
    
        break;
    default:
        break;
    

    
    
}




