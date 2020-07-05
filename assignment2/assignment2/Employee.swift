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
    var salUpdate:String?

         var employeeData=[
                    1234:["John Doe","50000","Clean Supply Closet"],
                        1:["Tom","50000","Technician"],
                          2:["Jerry","50000","Electrician"],
                           3:["Bob","50000","Builder"],
                        4:["Tom4","50000","Technician"],
                          5:["Jerry5","50000","Electrician"],
                           6:["Bob6","50000","Builder"],
                        7:["Tom7","50000","Technician"],
                          8:["Jerry8","50000","Electrician"],
                           9:["Bob9","50000","Builder"],
                        10:["Tom10","50000","Technician"],
                        11:["Tom11","50000","Technician"],

                          12:["Jerry12","50000","Electrician"],
                           13:["Bob13","50000","Builder"],
                        14:["Tom14","50000","Technician"],
                          15:["Jerry15","50000","Electrician"],
                           16:["Bob16","50000","Builder"],
                        17:["Tom17","50000","Technician"],
                          18:["Jerry18","50000","Electrician"],
                           19:["Bob19","50000","Builder"],
                        20:["Tom20","50000","Technician"],
                          21:["Jerry21","50000","Electrician"],
                           22:["Bob22","50000","Builder"],
                        23:["Tom23","50000","Technician"],
                          24:["Jerry24","50000","Electrician"],
              

          ]
        init()
        {
    
        name=String(describing:employeeData[1234]![0])
        employeeNumber=1234
        var y=String(describing:employeeData[1234]![1])
        salary=Double(y)
        task=String(describing:employeeData[1234]![2])
        }
    
        init(_ id:Int)
    {
           name=String(describing:employeeData[id]![0])
           employeeNumber=id
           var y=String(describing:employeeData[id]![1])
           salary=Double(y)
           task=String(describing:employeeData[id]![2])

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
        salUpdate=("\(salary)")
        
    
        employeeData[employeeNumber!]![1]=String(describing :salUpdate!)
        print(type(of:  employeeData[employeeNumber!]![1] ))
        print(employeeData[employeeNumber!]![1] )
        
    }
    
    func setTask(_ task:String)
    {
        self.task=task
        employeeData[employeeNumber!]![2]=String(describing:task)
        print(employeeData)
    }
    
    
}



