//
//  HoroscopeHandler.swift
//  moodyStone
//
//  Created by ozgur ersil on 02/11/15.
//  Copyright © 2015 ozgur ersil. All rights reserved.
//

import Foundation
import UIKit

struct UserHoroscope {
    var month:String
    var day:Int
}

class HoroscopeHandler  {

    var userHoroscope:UserHoroscope?
    let turkish:Bool = false
    let months:[String] = ["Jan","Feb","March","Apr","May","June","July","Aug","Sept","Oct","Nov","Dec"]
    let horoscopesTr:[String] = ["Koç","Boğa","İkizler","Yengeç","Aslan","Başak","Terazi","Akrep","Yay","Oğlak","Kova","Balık"]
    let horoscopes:[String] = ["Aries","Taurus","Gemini","Cancer","Leo","Virgo","Libra","Scorpio","Sagittarius","Capricorn","Aquarius","Piches"]
    var horoscope:String = ""
    
    func HoroscopeHandler(){
        print("init")
    }

    func checkHoroscopeByDate(dateStr:String) {
        let startIndex = dateStr.startIndex.advancedBy(3)
        let endIndex = dateStr.endIndex.advancedBy(-5)
        let exday:Int = Int(dateStr[Range(start: startIndex, end: endIndex)])!
        let exmonth:Int = Int((dateStr as NSString).substringToIndex(2))!
        for (index, element) in months.enumerate() {
            if index == exmonth - 1 {
                userHoroscope = UserHoroscope(month: element, day: exday)
            }
        }
        checkHoroscope()
    }

    
    func checkHoroscope(){
       
        switch(userHoroscope!.month){
        case "Jan":
            if(userHoroscope!.day <= 21){
                if(!turkish){
                    horoscope = horoscopes[9]
                }
                else{
                    horoscope = horoscopesTr[9]
                }
            
            }
            else{
                if(!turkish){
                    horoscope = horoscopes[10]
                }
                else{
                    horoscope = horoscopesTr[10]
                }
            }
        
            break
        
        case "Feb":
            if(userHoroscope!.day <= 19){
                if(!turkish){
                    horoscope = horoscopes[10]
                }
                else{
                    horoscope = horoscopesTr[10]
                }
            
            }
            else{
                if(!turkish){
                    horoscope = horoscopes[11]
                }
                else{
                    horoscope = horoscopesTr[11]
                }
            
            }
        
            break
        
        case "March":
            if(userHoroscope!.day <= 20){
                if(!turkish){
                    horoscope = horoscopes[11]
                }
                else{
                    horoscope = horoscopesTr[11]
                }
            }
            else{
                if(!turkish){
                    horoscope = horoscopes[0]
                }
                else{
                    horoscope = horoscopesTr[0]
                }
            }
        
            break
        
        case "Apr":
            if(userHoroscope!.day <= 20){
                if(!turkish){
                    horoscope = horoscopes[0]
                }
                else{
                    horoscope = horoscopesTr[0]
                }
            }
            else{
                if(!turkish){
                    horoscope = horoscopes[1]
                }
                else{
                    horoscope = horoscopesTr[1]
                }
            }
        
            break
        
        case "May":
            if(userHoroscope!.day <= 21){
                if(!turkish){
                    horoscope = horoscopes[1]
                }
                else{
                    horoscope = horoscopesTr[1]
                }
            }
            else{
                if(!turkish){
                    horoscope = horoscopes[2]
                }
                else{
                    horoscope = horoscopesTr[2]
                }
            }
            
            break
        
        case "June":
            if(userHoroscope!.day <= 22){
                if(!turkish){
                    horoscope = horoscopes[2]
                }
                else{
                    horoscope = horoscopesTr[2]
                }
            }
            else{
                if(!turkish){
                    horoscope = horoscopes[3]
                }
                else{
                    horoscope = horoscopesTr[3]
                }
            }
            
            break
            
        case "July":
            if(userHoroscope!.day <= 22){
                if(!turkish){
                    horoscope = horoscopes[3]
                }
                else{
                    horoscope = horoscopesTr[3]
                }
            }
            else{
                if(!turkish){
                    horoscope = horoscopes[4]
                }
                else{
                    horoscope = horoscopesTr[4]
                }
            }
            
            break
            
        case "Aug":
            if(userHoroscope!.day <= 22){
                if(!turkish){
                    horoscope = horoscopes[4]
                }
                else{
                    horoscope = horoscopesTr[4]
                }
            }
            else{
                if(!turkish){
                    horoscope = horoscopes[5]
                }
                else{
                    horoscope = horoscopesTr[5]
                }
            }
            
        case "Sept":
            if(userHoroscope!.day <= 22){
                if(!turkish){
                    horoscope = horoscopes[5]
                }
                else{
                    horoscope = horoscopesTr[5]
                }
            }
            else{
                if(!turkish){
                    horoscope = horoscopes[6]
                }
                else{
                    horoscope = horoscopesTr[6]
                }
            }
            
        case "Oct":
            if(userHoroscope!.day <= 22){
                if(!turkish){
                    horoscope = horoscopes[6]
                }
                else{
                    horoscope = horoscopesTr[6]
                }
            }
            else{
                if(!turkish){
                    horoscope = horoscopes[7]
                }
                else{
                    horoscope = horoscopesTr[7]
                }
            }
            
        case "Nov":
            if(userHoroscope!.day <= 21){
                if(!turkish){
                    horoscope = horoscopes[7]
                }
                else{
                    horoscope = horoscopesTr[7]
                }
            }
            else{
                if(!turkish){
                    horoscope = horoscopes[8]
                }
                else{
                    horoscope = horoscopesTr[8]
                }
            }
            
        case "Dec":
            if(userHoroscope!.day <= 21){
                if(!turkish){
                    horoscope = horoscopes[8]
                }
                else{
                    horoscope = horoscopesTr[8]
                }
            }
            else{
                if(!turkish){
                    horoscope = horoscopes[9]
                }
                else{
                    horoscope = horoscopesTr[9]
                }
            }
            
            break
        
        default:
            break
            
        }
    }
    
    func getHoroscope()->String{
        return self.horoscope
    }
}