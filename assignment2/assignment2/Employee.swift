//
//  Employee.swift
//  assignment2
//
//  Created by user165323 on 7/2/20.
//  Copyright © 2020 user165323. All rights reserved.
//


import Foundation

class  Employee
{
      var name:String?
        var employeeNumber:Int?
        var salary:Double?
        var  task:String?
   

    
    init(_ employeeNumber:Int,_ name:String,_ salary:Double,_ task:String)
        {
            self.employeeNumber=employeeNumber
            self.name=name
            self.salary=salary
            self.task=task
        }
    
       

    func getInfo()
        {

        print("Name:\(name!)")
        print("Salary:\(salary!)")
        print("Task:\(task!)")
        


        }



    func salaryRaise(_ raise:Double)
    {
       salary=salary!+raise
       
        
    
      
        
    }
    
    func setTask(_ task:String)
    {
        self.task=task
        
    }
    
    
}



