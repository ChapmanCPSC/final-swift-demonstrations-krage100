//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//optinal type and unwarapping

var ifInt : Optional<Int>
print(ifInt)
func unwrapFunc(number : Int?)
{
    print(number!)
}
unwrapFunc(234234)
//compare optional types
var maybeInt : Int?
var maybeInt2 : Int?
maybeInt2 = 45
if maybeInt > maybeInt2
{
    print("You are...")
}
if maybeInt2 == 45
{
    print("yeah baby")
}
//conditionally unwrap optional
if maybeInt2 != nil{
    maybeInt2?.successor()
}
//subscripts for objects
class Holidays{
    private var days = ["Valentine's","Christmas","Easter","Thanksgiving"]
    
    subscript(idx: Int) -> String {
        return days[idx]
    }
}
let schoolOut = Holidays()
print("School is out on \(schoolOut[1])")
//enum shenanigans
enum TransportationType
{
    case Skateboard
    case Skooter
    case Bicycle
    case Wagon
}
let type = TransportationType.Skateboard
//enum raw type stuff
enum SceneryType : String
{
    case water = "River"
    case trees = "Forest"
    case buildings = "Suburbs"
}
let SceneryTypeStr = "Forest"
let sceneryType = SceneryType(rawValue: SceneryTypeStr)
let somethingType = SceneryType(rawValue: "metropolis")
//class methods
class Handshake
{
    class func HandshakeFist(person: String)
    {
        print("Bump fists with \(person)")
    }
    class func HandshakeHand(person: String)
    {
        print("Shake hands with \(person)")
    }
}
Handshake.HandshakeFist("Andrew")
Handshake.HandshakeHand("Andrew")
//subclass stuff with convenience init
class VideoGame
{
    var name : String
    var platform : String
    class var VideoGameNoise : String {
        return "whirl whirl"
    }
    
    init(name: String, platform: String)
    {
        self.name = name
        self.platform = platform
    }
    
    convenience init()
    {
        self.init(name: "",platform: "")
        print("did the work for ya pal")
    }
    
    func play()
    {
        print("look at me I'm playing \(name)")
    }
    
}
class DarkSouls : VideoGame
{
    override static var VideoGameNoise : String {
        return "stab stab slice"
    }
    final override func play() {
        super.play()
        print("I hate dying so much")
    }
    func beatGame()
    {
        print("After several weeks of crying you finally have a moment of joy")
    }
    func glitch()
    {
        print("new game so it's kind of buggy")
    }
}
let darkSouls = DarkSouls(name: "dark souls",platform: "playstation")
darkSouls.play()
darkSouls.beatGame()
let mario = VideoGame(name: "mario N64",platform: "N64")
func cheatInGame(videoGame : VideoGame)
{
    videoGame.play()
    
    let buggygame = videoGame as? DarkSouls
    
    buggygame?.glitch()
}
cheatInGame(darkSouls)
cheatInGame(mario)
//protocols and struct and class inherting
protocol Human
{
    var name : String { get }
    
    func complain()
    
    func work() -> Void
}
struct Male : Human
{
    var name : String = "Manly Man"
    
    func complain() {
        print("Why do I have to do this?")
    }
    func work()
    {
        print("Wow I'm working how nice")
    }
}
class Female : Human
{
    var name : String = "Girly Girl"
    
    func complain() {
        print("I would rather be doing something else")
    }
    func work() {
        print("Wish I would get paid the same as men")
    }
}
let man = Male()
let woman = Female()
func goWork(h: Human)
{
    print("I think you should probably start working \(h.name)")
    h.work()
    h.complain()
}
goWork(man)
goWork(woman)
//umbrella types
func anyObject(aObject : AnyObject) {}
func anyClass(aClass : AnyClass) {}
func any(a : Any) {}
anyObject(woman)
anyObject("O hi oh")
anyClass(Female)
any("ksbcvibsv")
any(Int)
any(man)
any(woman)
any(Female())
//extensions
var intr = 98732645632647

extension Int
{
    func isOdd() -> Bool
    {
        if self % 2 == 1
        {
            return true
        }
        return false
    }
}
intr.isOdd()
//error stuff
enum SomeError : ErrorType
{
    case WhooError
    case WhatError
    case WhyError
}
func yada() throws{
    throw SomeError.WhatError
}
do{
    try yada()
}
catch SomeError.WhatError{
    print("This is a what error")
}
catch let error as SomeError{
    print("\(error) just happened")
}
catch let error {
    print("\(error) just happened")
}
catch
{
    print("error")
}
//dictionary
var runTimes = [Int:Double]()
runTimes[234] = 0.4234234
runTimes[3435] = 3.4566
runTimes
let sonic = VideoGame(name: "Sonic", platform: "N64")
let VideoGameArray : [VideoGame] = [sonic,mario,darkSouls]
let oldGames = VideoGameArray.filter { (vG : VideoGame) -> Bool in

    return vG.platform != "N64"
}

