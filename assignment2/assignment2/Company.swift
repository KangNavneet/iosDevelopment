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
    var employeeList = [1234,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24  ];

    init() {
        print("By Default Total Employees:\(employeeList.count)")
        print(employeeList)
    }
    

   
    
    func payDay()
    {
        print("PayDay");
        var e1:Employee
        var totalSalary=0.0;
        for i in employeeList
        {
            e1=Employee(i)
            totalSalary+=e1.salary!
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
        recruit()
        
    }
    
    func recruit()
    {
        
        print("***Want New Recruitment***")
        print("Type yes/no")
        print("Entry:")
        var name:String,salary:String,task:String;
        var prompt=readLine()
        switch prompt
        {
        case "yes":
            var empid:Int=0;
            for i in employeeList
            {
                empid=i;
                
                
            }
             print("Enter Name:")
             name=readLine()!
             
             
             
             print("Enter Task:")
             task=readLine()!
            
             print("Enter Salary:")
             salary=readLine()!
            employeeList.append(empid+1)
            var e3=Employee()
            e3.employeeData[empid+1]=[name,salary,task]
            
            print("Employee List")
            print(employeeList)
            print("Employee Data")
            print(e3.employeeData)
            terminate()
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
        var e3=Employee()
        
        switch prompt{
        case "yes":
            print("Enter Employee Id:")
            var empid=Int(readLine()!)
            var index:Int = -1
            for i in 0...employeeList.count
            {
                if employeeList[i]==empid
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
                print(e3.employeeData)
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
            terminate()
            break;
        }
        
        
    }
    
    func getInfo()
    {
        print("Number of Employees:\(employeeList.count)")
        print("Biweekly salary costs:\(budget/2)")
        print("Employee To Task Relationship:")
        
        var e1:Employee
        for i in employeeList
        {
            e1=Employee(i)
            print("\((e1.name)!)->\((e1.task)!)")
        }
        
    }
    
}


