VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   9705
   ClientLeft      =   450
   ClientTop       =   645
   ClientWidth     =   10725
   LinkTopic       =   "Form1"
   ScaleHeight     =   171.186
   ScaleMode       =   6  '公厘
   ScaleWidth      =   189.177
   Begin VB.Frame Frame3 
      Caption         =   "初始設定"
      Height          =   1935
      Left            =   6720
      TabIndex        =   25
      Top             =   4560
      Width           =   2775
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   1080
         TabIndex        =   28
         Text            =   "300"
         Top             =   840
         Width           =   615
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   1080
         TabIndex        =   27
         Text            =   "300"
         Top             =   1320
         Width           =   615
      End
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   1080
         TabIndex        =   26
         Text            =   "50"
         Top             =   360
         Width           =   615
      End
      Begin VB.Label Label1 
         Caption         =   "左輪"
         Height          =   375
         Left            =   480
         TabIndex        =   34
         Top             =   840
         Width           =   495
      End
      Begin VB.Label Label2 
         Caption         =   "右輪"
         Height          =   375
         Left            =   480
         TabIndex        =   33
         Top             =   1320
         Width           =   495
      End
      Begin VB.Label Label3 
         Caption         =   "(rpm)"
         Height          =   255
         Left            =   1800
         TabIndex        =   32
         Top             =   840
         Width           =   495
      End
      Begin VB.Label Label4 
         Caption         =   "(rpm)"
         Height          =   255
         Left            =   1800
         TabIndex        =   31
         Top             =   1320
         Width           =   495
      End
      Begin VB.Label Label5 
         Caption         =   "輪子直徑"
         Height          =   375
         Left            =   240
         TabIndex        =   30
         Top             =   360
         Width           =   855
      End
      Begin VB.Label Label6 
         Caption         =   "mm"
         Height          =   375
         Left            =   1800
         TabIndex        =   29
         Top             =   360
         Width           =   495
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "PID控制"
      Height          =   1575
      Left            =   8400
      TabIndex        =   18
      Top             =   2760
      Width           =   2055
      Begin VB.TextBox Text6 
         Height          =   270
         Left            =   600
         TabIndex        =   24
         Text            =   "0.6"
         Top             =   1080
         Width           =   855
      End
      Begin VB.TextBox Text5 
         Height          =   270
         Left            =   600
         TabIndex        =   23
         Text            =   "0.01"
         Top             =   720
         Width           =   855
      End
      Begin VB.TextBox Text4 
         Height          =   270
         Left            =   600
         TabIndex        =   22
         Text            =   "1"
         Top             =   360
         Width           =   855
      End
      Begin VB.Label Label17 
         Caption         =   "KD"
         Height          =   255
         Left            =   240
         TabIndex        =   21
         Top             =   1080
         Width           =   255
      End
      Begin VB.Label Label16 
         Caption         =   "KI"
         Height          =   255
         Left            =   240
         TabIndex        =   20
         Top             =   720
         Width           =   255
      End
      Begin VB.Label Label12 
         Caption         =   "KP"
         Height          =   255
         Left            =   240
         TabIndex        =   19
         Top             =   360
         Width           =   255
      End
   End
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   9840
      Top             =   4680
   End
   Begin VB.Frame Frame1 
      Caption         =   "控制方式"
      Height          =   1215
      Left            =   6360
      TabIndex        =   15
      Top             =   2880
      Width           =   1815
      Begin VB.OptionButton Option2 
         Caption         =   "PID控制"
         Height          =   255
         Left            =   240
         TabIndex        =   17
         Top             =   720
         Value           =   -1  'True
         Width           =   1095
      End
      Begin VB.OptionButton Option1 
         Caption         =   "條件控制"
         Height          =   375
         Left            =   240
         TabIndex        =   16
         Top             =   240
         Width           =   1335
      End
   End
   Begin VB.CommandButton Command7 
      Caption         =   "確定"
      Height          =   375
      Left            =   8760
      TabIndex        =   11
      Top             =   6720
      Width           =   735
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   9840
      Top             =   5160
   End
   Begin VB.CommandButton Command6 
      Caption         =   "重置"
      Height          =   375
      Left            =   7920
      TabIndex        =   8
      Top             =   6720
      Width           =   735
   End
   Begin VB.CommandButton Command5 
      Caption         =   "下移"
      Height          =   375
      Left            =   8280
      TabIndex        =   7
      Top             =   8280
      Width           =   615
   End
   Begin VB.CommandButton Command4 
      Caption         =   "右移"
      Height          =   375
      Left            =   8760
      TabIndex        =   6
      Top             =   7800
      Width           =   615
   End
   Begin VB.CommandButton Command3 
      Caption         =   "左移"
      Height          =   375
      Left            =   7800
      TabIndex        =   5
      Top             =   7800
      Width           =   615
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   9840
      Top             =   5640
   End
   Begin VB.CommandButton Command2 
      Caption         =   "啟動"
      Height          =   375
      Left            =   7080
      TabIndex        =   1
      Top             =   6720
      Width           =   735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "上移"
      Height          =   375
      Left            =   8280
      TabIndex        =   0
      Top             =   7320
      Width           =   615
   End
   Begin VB.Label Label13 
      Caption         =   "Label13"
      Height          =   495
      Left            =   6360
      TabIndex        =   14
      Top             =   8160
      Width           =   855
   End
   Begin VB.Label Label15 
      Height          =   255
      Left            =   6360
      TabIndex        =   13
      Top             =   2040
      Width           =   1695
   End
   Begin VB.Label Label14 
      Height          =   255
      Left            =   6360
      TabIndex        =   12
      Top             =   1560
      Width           =   1695
   End
   Begin VB.Label Label11 
      Height          =   255
      Left            =   6360
      TabIndex        =   10
      Top             =   720
      Width           =   2295
   End
   Begin VB.Label Label10 
      Height          =   255
      Left            =   6360
      TabIndex        =   9
      Top             =   360
      Width           =   2295
   End
   Begin VB.Label Label9 
      Height          =   255
      Left            =   6360
      TabIndex        =   4
      Top             =   1080
      Width           =   2295
   End
   Begin VB.Label Label8 
      Height          =   255
      Left            =   8280
      TabIndex        =   3
      Top             =   2040
      Width           =   1815
   End
   Begin VB.Label Label7 
      Height          =   255
      Left            =   8400
      TabIndex        =   2
      Top             =   1560
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim H, W, agree, age, proportion, sensor_radius As Double
Dim rol_range As Double  '轉差率
Dim flag As Boolean
Dim X, Y As Double
Dim pi As Double
Dim wheel_diameter, wheel_distance As Double
Dim sensor1_x, sensor1_y, sensor2_x, sensor2_y, sensor3_x, sensor3_y, sensor4_x, sensor4_y, sensor5_x, sensor5_y As Double
Dim sensor6_x, sensor6_y, sensor7_x, sensor7_y As Double
Dim line_x1, line_y1, line_x2, line_y2, line_w As Double
Dim right_v_temp, left_v_temp As Double
''''''''''''''''''''''''''''''''''''''pid
Dim KP, KI, KD, I_temp, D_temp As Double
Dim e_temp As Integer
Dim Trans_e_to_r_v As Double

Private Sub Show_Car(ByVal X0 As Double, ByVal Y0 As Double, ByVal age As Double)

Cls

Call Draw_line

If Y < 70 Then
    Y = 160
End If

X1 = X0 + Cos(pi / 2 - age) * H
Y1 = Y0 - Sin(pi / 2 - age) * H

X2 = X1 - Cos(age) * W
Y2 = Y1 - Sin(age) * W

X3 = X0 - Cos(age) * W
Y3 = Y0 - Sin(age) * W

Line (X0, Y0)-(X1, Y1), QBColor(1)
Line (X1, Y1)-(X2, Y2), QBColor(1)
Line (X2, Y2)-(X3, Y3), QBColor(1)
Line (X3, Y3)-(X0, Y0), QBColor(1)

sensor1_x = X2 + Cos(age) * (W / 8) - Cos(3.1416 / 2 - age) * (H / 6)
sensor1_y = Y2 + Sin(age) * (W / 8) + Sin(3.1416 / 2 - age) * (H / 6)
sensor2_x = sensor1_x + Cos(age) * (W / 8)
sensor2_y = sensor1_y + Sin(age) * (W / 8)
sensor3_x = sensor2_x + Cos(age) * (W / 8)
sensor3_y = sensor2_y + Sin(age) * (W / 8)
sensor4_x = sensor3_x + Cos(age) * (W / 8)
sensor4_y = sensor3_y + Sin(age) * (W / 8)
sensor5_x = sensor4_x + Cos(age) * (W / 8)
sensor5_y = sensor4_y + Sin(age) * (W / 8)
sensor6_x = sensor5_x + Cos(age) * (W / 8)
sensor6_y = sensor5_y + Sin(age) * (W / 8)
sensor7_x = sensor6_x + Cos(age) * (W / 8)
sensor7_y = sensor6_y + Sin(age) * (W / 8)

Circle (sensor1_x, sensor1_y), sensor_radius
Circle (sensor2_x, sensor2_y), sensor_radius
Circle (sensor3_x, sensor3_y), sensor_radius
Circle (sensor4_x, sensor4_y), sensor_radius
Circle (sensor5_x, sensor5_y), sensor_radius
Circle (sensor6_x, sensor6_y), sensor_radius
Circle (sensor7_x, sensor7_y), sensor_radius


wheel_l_x0 = X3 - Cos(age) * wheel_distance
wheel_l_y0 = Y3 - Sin(age) * wheel_distance
wheel_l_x1 = wheel_l_x0 + Cos(pi / 2 - age) * wheel_diameter
wheel_l_y1 = wheel_l_y0 - Sin(pi / 2 - age) * wheel_diameter

wheel_r_x0 = X0 + Cos(age) * wheel_distance
wheel_r_y0 = Y0 + Sin(age) * wheel_distance
wheel_r_x1 = wheel_r_x0 + Cos(pi / 2 - age) * wheel_diameter
wheel_r_y1 = wheel_r_y0 - Sin(pi / 2 - age) * wheel_diameter

Line (wheel_l_x0, wheel_l_y0)-(wheel_l_x1, wheel_l_y1), QBColor(4)
Line (wheel_r_x0, wheel_r_y0)-(wheel_r_x1, wheel_r_y1), QBColor(4)

Label10.Caption = "X= " & X0
Label11.Caption = "Y= " & Y0
Label9.Caption = "age= " & age
End Sub

Private Sub Command1_Click()
Y = Y - 1
Call Show_Car(X, Y, atod(age))
Call Draw_line
End Sub

Private Sub Command2_Click()
If Command2.Caption = "啟動" Then
    Timer1.Enabled = True
    If Option1.Value = True Then
      Timer2.Enabled = True
     ElseIf Option2.Value = True Then
      Timer3.Enabled = True
     End If
    Command2.Caption = "停止"
ElseIf Command2.Caption = "停止" Then
    Timer1.Enabled = False
    Timer2.Enabled = False
    Timer3.Enabled = False
    Command2.Caption = "啟動"
End If

End Sub

Private Sub Command3_Click()
X = X - 1
Call Show_Car(X, Y, atod(age))
Draw_line
End Sub

Private Sub Command4_Click()
X = X + 1
Call Show_Car(X, Y, atod(age))
Call Draw_line
End Sub

Private Sub Command5_Click()
Y = Y + 1
Call Show_Car(X, Y, atod(age))
Call Draw_line
End Sub

Private Sub Command6_Click()
X = 65
Y = 160
agree = 0
age = 0
Call Show_Car(X, Y, atod(age))
Call Draw_line
'''''''''''''''''''''''''''''pid
I_temp = 0
left_v_temp = Val(Text1.Text)
right_v_temp = Val(Text2.Text)
Label14.Caption = "左輪轉速= " & left_v_temp & "rpm"
Label15.Caption = "右輪轉速= " & right_v_temp & "rpm"

End Sub

Private Sub Command7_Click()
left_v_temp = Val(Text1.Text)
right_v_temp = Val(Text2.Text)
Label14.Caption = "左輪轉速= " & left_v_temp & "rpm"
Label15.Caption = "右輪轉速= " & right_v_temp & "rpm"
End Sub

Private Sub Form_Activate()
left_v_temp = Val(Text1.Text)
right_v_temp = Val(Text2.Text)
End Sub

Private Sub Form_Load()
pi = 3.1416
agree = 0
proportion = 0.3
H = 200 * proportion
W = 80 * proportion
wheel_diameter = 20 * proportion
wheel_distance = 6 * proportion
line_w = 15 * proportion
X = 65
Y = 160
sensor_radius = 2.5 * proportion
rol_range = 1
flag = True
proportion = 0.1
KP = 1
KI = 0.001
KD = 0.6
I_temp = 0
D_temp = 0
e_temp = 0
Trans_e_to_r_v = 10
End Sub

Function cal_right_v() As Double

cal_right_v = right_v_temp * (Val(Text3.Text) * 3.1416) / 60

Label8.Caption = cal_right_v & " mm/s"

End Function

Function cal_left_v() As Double

cal_left_v = left_v_temp * (Val(Text3.Text) * 3.1416) / 60

Label7.Caption = cal_left_v & " mm/s"


End Function

Private Sub Form_Paint()
Call Show_Car(X, Y, atod(age))
Call Draw_line

End Sub

Private Sub Timer1_Timer()

right_v = cal_right_v
left_v = cal_left_v

right_go = right_v * Timer1.Interval / 1000 * proportion  '右輪前進距離
left_go = left_v * Timer1.Interval / 1000 * proportion    '左輪前進距離


If left_v = right_v Then

    X = X + right_go * Cos(atod(90 - age))
    Y = Y - right_go * Sin(atod(90 - age))
 
End If

If left_v > right_v Then
       
    age_d = (left_v - right_v) * rol_range * Timer1.Interval / 1000      '偏轉的角度
    age = agree + age_d
    
    If age > 360 Then
        age = age - 360
    End If

    
    r_l = (right_go / atod(age_d))
    l_l = (left_go / atod(age_d))
    
   X0 = X - r_l + r_l * Cos(atod(agree))
   Y0 = Y + r_l * Sin(atod(agree))
    
   X = X0 + r_l - r_l * Cos(atod(age))
   Y = Y0 - r_l * Sin(atod(age))
   
End If

If left_v < right_v Then

    age_d = (right_v - left_v) * rol_range * Timer1.Interval / 1000     '偏轉的角度
    age = agree - age_d
    
    If age < -360 Then
        age = age + 360
    End If

    
    r_l = (right_go / atod(age_d))
    l_l = (left_go / atod(age_d))
    
    'X3 = X - Cos(age) * W
    'Y3 = Y - Sin(age) * W
    
    'X30 = X3 + (l_l - l_l * Cos(atod(-agree)))
    'Y30 = Y3 + l_l * Sin(atod(-agree))
    
    'X3 = X30 - (l_l - l_l * Cos(atod(-age)))
    'Y3 = Y30 - l_l * Sin(atod(-age))
   
    'X = X3 + Cos(age) * W
    'Y = Y3 + Sin(age) * W
    
    X0 = X + r_l - r_l * Cos(atod(-agree))
    Y0 = Y + r_l * Sin(atod(-agree))
    
    X = X0 - r_l + r_l * Cos(atod(-age))
    Y = Y0 - r_l * Sin(atod(-age))

End If


Call Show_Car(X, Y, atod(age))

agree = age

End Sub
Function atod(ByVal age As Double) As Double
atod = age * pi / 180
End Function

Sub Draw_line()

line_x1 = 60
line_y1 = 10
line_x2 = 60 + line_w
line_y2 = 150

Line (line_x1, line_y1)-(line_x2, line_y2), QBColor(0), BF

End Sub

Private Sub Timer2_Timer()

If sensor1_x >= line_x1 And sensor1_x <= line_x2 And sensor1_y >= line_y1 And sensor1_y <= line_y2 Then
    right_v_temp = Val(Text2.Text) + Val(Text2.Text) / 10
End If

If sensor2_x >= line_x1 And sensor2_x <= line_x2 And sensor2_y >= line_y1 And sensor2_y <= line_y2 Then
    right_v_temp = Val(Text2.Text) + Val(Text2.Text) / 30
End If

If sensor3_x >= line_x1 And sensor3_x <= line_x2 And sensor3_y >= line_y1 And sensor3_y <= line_y2 Then
    right_v_temp = Val(Text2.Text)
End If

If sensor4_x >= line_x1 And sensor4_x <= line_x2 And sensor4_y >= line_y1 And sensor4_y <= line_y2 Then
    right_v_temp = Val(Text2.Text) - Val(Text2.Text) / 30
End If

If sensor5_x >= line_x1 And sensor5_x <= line_x2 And sensor5_y >= line_y1 And sensor5_y <= line_y2 Then
   right_v_temp = Val(Text2.Text) - Val(Text2.Text) / 10
End If


Label14.Caption = "左輪轉速= " & left_v_temp & "rpm"
Label15.Caption = "右輪轉速= " & right_v_temp & "rpm"

End Sub

Private Sub Timer3_Timer()   'PID controller

purpuse = 7

sensor1 = False
sensor2 = False
sensor3 = False
sensor4 = False
sensor5 = False
sensor6 = False
sensor7 = False

If sensor1_x >= line_x1 And sensor1_x <= line_x2 And sensor1_y >= line_y1 And sensor1_y <= line_y2 Then
    sensor1 = True
End If

If sensor2_x >= line_x1 And sensor2_x <= line_x2 And sensor2_y >= line_y1 And sensor2_y <= line_y2 Then
    sensor2 = True
End If

If sensor3_x >= line_x1 And sensor3_x <= line_x2 And sensor3_y >= line_y1 And sensor3_y <= line_y2 Then
    sensor3 = True
End If

If sensor4_x >= line_x1 And sensor4_x <= line_x2 And sensor4_y >= line_y1 And sensor4_y <= line_y2 Then
    sensor4 = True
End If

If sensor5_x >= line_x1 And sensor5_x <= line_x2 And sensor5_y >= line_y1 And sensor5_y <= line_y2 Then
    sensor5 = True
End If

If sensor6_x >= line_x1 And sensor6_x <= line_x2 And sensor6_y >= line_y1 And sensor6_y <= line_y2 Then
    sensor6 = True
End If

If sensor7_x >= line_x1 And sensor7_x <= line_x2 And sensor7_y >= line_y1 And sensor7_y <= line_y2 Then
    sensor7 = True
End If

feedback = 7

If sensor1 Then
    feedback = 1
    If sensor2 Then
        feedback = 2
    End If
    GoTo 10
End If
If sensor2 Then
    feedback = 3
    If sensor3 Then
        feedback = 4
    End If
    GoTo 10
End If
If sensor3 Then
    feedback = 5
    If sensor4 Then
        feedback = 6
    End If
    GoTo 10
End If
If sensor4 Then
    feedback = 7
    If sensor5 Then
        feedback = 8
    End If
    GoTo 10
End If
If sensor5 Then
    feedback = 9
    If sensor6 Then
        feedback = 10
    End If
    GoTo 10
End If
If sensor6 Then
    feedback = 11
    If sensor7 Then
        feedback = 12
    End If
    GoTo 10
End If
If sensor7 Then
    feedback = 13
End If
10
    
Label13.Caption = feedback
    
'''''''''''''''''''''''''''''''''''''''
e = purpuse - feedback

'''''''''''''''''''''''''''''''''''''''

KP = Val(Text4.Text)
KI = Val(Text5.Text)
KD = Val(Text6.Text)


'''''''''''''''''''''''
I_temp = I_temp + (Timer3.Interval / 1000) * (e_temp + e) / 2
e_temp = e

'''''''''''''''''''''''
P = KP * e
I = KI * I_temp
D = KD * (e - D_temp) / (Timer3.Interval / 1000)
'''''''''''''''''''''''''''''''''''''''''
D_temp = e
'''''''''''''''''''''''

u = P + I + D

right_v_temp = right_v_temp + u '* Trans_e_to_r_v

End Sub
