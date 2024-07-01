import Foundation

func caloriesBurntByWalking(distance : Double) -> Double {
    return distance * 1.5
}
func caloriesBurntByJogging(distance : Double) -> Double {
    return distance * 2.5
}
func caloriesBurntBySkipping(distance : Double) -> Double {
    return distance * 3.5
}

//closure
let burntByFasting : (Double) -> Double = { hour in
    return hour * 2
}

// High Order function
func caloriesBurntByActivity( activity : (Double) -> Double, unit : Double) -> Double {
    return activity(unit)
}

let res = caloriesBurntByActivity(activity: caloriesBurntBySkipping , unit: 2)
print(res)


let resFasting = caloriesBurntByActivity(activity: burntByFasting , unit: 14)
print(resFasting)


//closure
var getDifFrom1970 : (Date) -> String  = { date in
    return date.timeIntervalSince1970.description
}

print(getDifFrom1970(Date()))


// High Order function
func userStage(stage : Int) -> (Double)->Double {
    if stage == 1 {
        return burntByFasting
    }
    return caloriesBurntByJogging
}

 let function = userStage(stage: 2)
print(function(5))
