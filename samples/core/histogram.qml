import lcvcore 1.0

Grid{
    
    id: root
    
    spacing: 15
    
    property variant colors : ['#aa007700', '#aa000088']
    property variant values : [
        [10, 44, 30, 50, 200, 10, 300, 50, 70], 
        [20, 30, 40, 50, 100, 30, 200, 50, 30]
    ]
    
    Rectangle{
    
        width: 200
        height : 200
        color : "#222333"
    
        DrawHistogram{
            width: 200
            height : 200
            maxValue : 200
            colors : root.colors
            render : DrawHistogram.ConnectedLines
            values : root.values
        }
    }
    
    
    Rectangle{
    
        width: 200
        height : 200
        color : "#222333"
    
        DrawHistogram{
            width: 200
            height : 200
            maxValue : 200
            colors : root.colors
            render : DrawHistogram.Rectangles
            values : root.values
        }
    }
    
    Rectangle{
    
        width: 200
        height : 200
        color : "#222333"
    
        DrawHistogram{
            width: 100
            height : 200
            maxValue : 10
            colors : root.colors
            render : DrawHistogram.Binary
            values : [
                [0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1], 
                [1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0]
            ]
        }
    }
    
}
