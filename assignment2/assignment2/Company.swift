//
//  Company.swift
//  assignment2
//
//  Created by user165323 on 7/2/20.
//  Copyright © 2020 user165323. All rights reserved.
//

import Foundation

class Company
{
    var budget:Double=2000000
    var employeeList=[Employee]()
    var objects:[Int]=[]
    init() {
        print("By Default Total Employees:\(employeeList.count)")
        print(employeeList)
        recruit()
    }
    

   
    
    func payDay()
    {
        print("PayDay");
        
        var totalSalary=0.0;
        for obj in employeeList
        {
           
            totalSalary+=obj.salary!
        }
        if(totalSalary>budget)
        {
            print("Total Salary Exceeded The Budget")
            print("Total Salary:\(totalSalary)")
            print("Total Budget:\(budget)")
        }
        else
        {
            print("Total Salary:\(totalSalary)")
            print("Total Budget:\(budget)")
            
        }
        
    }
    
    func recruit()
    {
        print("***Want New Recruitment***")
        print("Type yes/no (Recommended : yes)")
        print("Entry:")
        var name:String,task:String;
        var salary:Double
        var prompt=readLine()
        switch prompt
        {
        case "yes":
            print("Want Manual Recruitment or Automatic Recruitment of 50 Employees\nType 1:For Manual \nType 2:For Automatic Recruitment Of 25 Employees (Recommended) \nType 3:For Exit")
            print("Entry:")
            var response=readLine();
            switch response
            {
            case "1":
                var empid:Int;
                print("How many employees ,you wish to hire ?\nEnter any Number:")
                var hire=Int(readLine()!)!
                if(hire>=1)
                {
                for i in 1...hire
                {
                    
                    if(employeeList.count==0)
                    {
                        empid=employeeList.count+1;
                        
                    }
                    else
                    {
                        empid = employeeList[employeeList.count-1].employeeNumber!+1
                    }
                    print("***********")
                     print("Enter Name:")
                    name=readLine()!
                    
                    
                    
                    print("Enter Task:")
                    task=readLine()!
                    
                    print("Enter Salary:In Double Format")
                    salary=Double(readLine()!)!
                    
                     print("***********")
                    var e1:Employee=Employee(empid,name,salary,task)
                    employeeList.append(e1)
                }
                }
                else
                {
                    print("Employee Number Must Be Greater Than 0")
                    break
                }
                print("Employees Got Hired")
                getInfo()
         
                break
                
            case "2":
                var e1:Employee=Employee(1234,"John Doe",50000.0,"Technician")
                employeeList.append(e1)
                
                var e2:Employee=Employee(1,"Tom",50000.0,"Electrician")
                employeeList.append(e2)
                
                 var e3:Employee=Employee(2,"Jerry",50000.0,"Chartered Accountant")
                employeeList.append(e3)
                
                var e4:Employee=Employee(3,"Pickachu",50000.0,"Financial Analyst")
                employeeList.append(e4)
                
                  var e5:Employee=Employee(4,"Tweety",50000.0,"Company Secretary")
                employeeList.append(e5)
                
                var e6:Employee=Employee(5,"Granny",50000.0,"Lawyer")
                employeeList.append(e6)
                
                 var e7:Employee=Employee(6,"Scooby",50000.0,"Data Engineeer")
                employeeList.append(e7)
                
                var e8:Employee=Employee(7,"Tyson",50000.0,"Cloud Architect")
                employeeList.append(e8)
                
                
                
                var e9:Employee=Employee(8 ,"Misty",50000.0,"Gardner")
                employeeList.append(e9)
                
                var e10:Employee=Employee(9,"Donald",50000.0,"Chef")
                employeeList.append(e10)
                
                 var e11:Employee=Employee(10,"Bob",50000.0,"Content Writer")
                employeeList.append(e11)
                var e12:Employee=Employee(11,"Powerpuff Girl",50000.0,"Watchman ")
                employeeList.append(e12)
                
                 var e13:Employee=Employee(12,"Richie Rich",50000.0,"Financial Analyst")
                employeeList.append(e13)

                var e14:Employee=Employee(13,"Arona",50000.0,"Software Engineer")
                employeeList.append(e14)
                
                var e15:Employee=Employee(14,"Keen Been",50000.0,"Professor")
                employeeList.append(e15)
                
                var e16:Employee=Employee(15,"Franklin",50000.0,"Electrician")
                employeeList.append(e16)
                
                 var e17:Employee=Employee(16,"Goku",50000.0,"Chartered Accountant")
                employeeList.append(e17)
                
                var e18:Employee=Employee(17,"Rock",50000.0,"Financial Analyst")
                employeeList.append(e18)
                 var     e19:Employee=Employee(18,"Undertaker",50000.0,"Electrician")
                employeeList.append(e19)
                
                 var e20:Employee=Employee(19,"Dumbledore",50000.0,"Chartered Accountant")
                employeeList.append(e20)
                
                var e21:Employee=Employee(20,"Mickey Mouse",50000.0,"Electrician")
                employeeList.append(e21)
                
                 var e22:Employee=Employee(21,"Popeye",50000.0,"Chartered Accountant")
                employeeList.append(e22)
                
                var e23:Employee=Employee(22,"Pooh",50000.0,"Financial Analyst")
                employeeList.append(e23)
                 var e24:Employee=Employee(23,"Masha",50000.0,"Electrician")
                employeeList.append(e24)
                
                 var e25:Employee=Employee(24,"Goofy",50000.0,"Chartered Accountant")
                employeeList.append(e25)
                
                getInfo()
                terminate()
                break;
                
            case "3":
                print("Exiting..")
                break;
                
                
            default:
                print("Wrong Entry\n Try Again")
                recruit()
            }
            
            
        
           
        case "no":
            
            break;
            
        default:
            print("Wrong Entry\nEnter Again")
            recruit()
            break;
            
        }

        
        
        
        
    }
    func terminate()
    {
        print("Want To Terminate An Employee\nEnter yes/no \nEntry:")
        var prompt=readLine()
        
        switch prompt{
        case "yes":
            print("Enter Employee Id:")
            var empid=Int(readLine()!)
            var index:Int = -1
            for i in 0...employeeList.count
            {
                if employeeList[i].employeeNumber==empid
                {
                    index=i
                    break;
                }
                
            }
            if(index != -1)
            {
                employeeList.remove(at: index)
                print("After Termination")
                print("Employee List Of Company")
                print(employeeList)
                
                print("Employee Data ")
                for obj in employeeList
                {
                    print("\(obj.employeeNumber!) ->\(obj.name!)->\(obj.task!)")
                }
                break
                
            }
            else
            {
                print("Element Not Found!")
            }
            
            
        case "no":
            print("Exiting ... Terminate Window")
            break
            
        default:
            print("Wrong Entry")
            terminate()
            break;
        }
        
        
    }
    
    func getInfo()
    {
        print("Number of Employees:\(employeeList.count)")
        print("Biweekly salary costs:\(budget/2)")
        print("Employee To Task Relationship:")
        
        for obj in employeeList
        {
            print("\((obj.employeeNumber)!) ->\((obj.name)!)->\((obj.task)!)")
        }
                
    }
    
}


