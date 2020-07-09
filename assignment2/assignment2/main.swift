//
//  main.swift
//  assignment2
//
//  Created by user165323 on 7/2/20.
//  Copyright © 2020 user165323. All rights reserved.
//

import Foundation


let e1=Company()

print("The Program has following functionality:\nEmployee:getInfo()\nEmployee:salaryRaise()\nEmployee:setTask()")
print("Type 1:Get Info of Default Employee\nType 2:Get Info of Particular Employee of your choice\nType 3:To Exit")
print("Entry:")
var key=Int(readLine()!)
if(e1.employeeList.count==0)
  {
    print("Employee List Is Empty\nEnter The Employee First")
    e1.recruit()


  
  }
else
{
    
    func companyEmployeeInfo(_ id:Int)
        {
            
               print("Type 1:For Salary Raise \n Type 2:Task Change\n Type 3:Both For Salary Raise and Task Change (Recommended) \n Type 4:To Exit")
                 print("Entry:")
                 var prompt=Int(readLine()!)
                 func salary()
                 {
                     print("Raise Amount=")
                     var amount=Double(readLine()!)!
                     e1.employeeList[id].salaryRaise(amount)
                     print("After Raise Info")
                     e1.employeeList[id].getInfo()
                 }
                 
                 func task()
                 {
                     print("Set Task")
                     var task=(readLine()!)
                 
                     e1.employeeList[id].setTask(task)
                     print("After Task Change")
                     e1.employeeList[id].getInfo()
                     
                 }
                 
                 func  companyInterest()
                 {
                     print("Interested in Company Info\n Type:yes/no (Recommended:  yes )")
                     print("Entry:")
                     var entry=readLine()!

                     func payday()
                     {
                         print("************PayDay********\nWant to Know:How much has gone for total salary expense?\nType : yes/no")
                         var  salInfo=readLine()!
                         switch salInfo
                         {
                         case "yes":
                             e1.payDay()
                             e1.recruit()
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
                         e1.getInfo()
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
                     e1.employeeList[id].getInfo()
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
                 
            
        }
    
switch key{

case 1:

        e1.employeeList[0].getInfo()
        companyEmployeeInfo(0)
    
        
    break
    
case 2:
        
        print("Company- Enter The Employee Id For The Employee To Access Info:")
        var index=Int(readLine()!)!
        var id:Int = -1
        for i in 0...(e1.employeeList.count-1)
        {
            if(e1.employeeList[i].employeeNumber==index)
            {
                id=i
                break
            }
    
        }
        if(id == -1)
        {
            print("Employee Number Not Found")
        }
        else
        {
        
  
        e1.employeeList[id].getInfo()
            companyEmployeeInfo(id)
        
        
        }
        break;
    case 3:
    print("Exiting..")
    break
    
    default:
        print("Wrong Entry")
    break
    
    

    
    
}

    
}



