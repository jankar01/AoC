//
//  Day1.swift
//  AoC
//
//  Created by Jan Karlbom on 2016-12-02.
//  Copyright © 2016 Jan Karlbom. All rights reserved.
//

import Foundation

enum RotationDirection {
    case RIGHT
    case LEFT
}

class Direction
{
    var m_direction : Int
    
    init( direction : Int)
    {
        self.m_direction = direction
    }
    
    func RawDirection() -> Int
    {
        return m_direction
    }
    
    func Rotate( rotationDirection : RotationDirection )
    {
        switch rotationDirection {
        case .RIGHT:
            if (m_direction < 3)
            {
                m_direction += 1

            }
            else if (m_direction == 3)
            {
                m_direction = 0
            }
            else
            {
                
            }
            break
        case .LEFT:
            if (m_direction > 0)
            {
                m_direction -= 1
                
            }
            else if (m_direction == 0)
            {
                m_direction = 3
            }
            else
            {
                
            }
            break
        default:
            break
        }
    }
}

class Location
{
    var m_x : Int = 0
    var m_y : Int = 0
    
    func Move(steps : Int, direction : Direction)
    {
        switch direction.RawDirection() {
        case 0:
            m_y += steps
            break
        case 1:
            m_x += steps
            break
        case 2:
            m_y -= steps
            break
        case 3:
            m_x -= steps
            break
        default:
            break
        }
    }
    
}

class LocationAndDirection
{
    var m_direction = Direction(direction: 0)
    var m_location = Location()
    
    func AdjustPosition( command : String )
    {
        switch command[0] as String
        {
        case "R":
            m_direction.Rotate(rotationDirection: RotationDirection.RIGHT)
            break
        case "L":
            m_direction.Rotate(rotationDirection: RotationDirection.LEFT)
            break
        default:
            break
        }
        
        let steps : Int? = Int ( command.substring(from: command.index(after: command.startIndex)) )
        m_location.Move(steps: steps!, direction: m_direction)
    }
    
    func X()->Int
    {
        return m_location.m_x
    }
    
    func Y()->Int
    {
        return m_location.m_y
    }

}



