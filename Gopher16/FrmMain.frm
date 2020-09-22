VERSION 5.00
Begin VB.Form FrmMain 
   Caption         =   "Gopher16"
   ClientHeight    =   4335
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6390
   LinkTopic       =   "Form1"
   ScaleHeight     =   4335
   ScaleWidth      =   6390
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Hash it"
      Height          =   495
      Left            =   5040
      TabIndex        =   8
      Top             =   3720
      Width           =   1215
   End
   Begin VB.Frame Frame2 
      Caption         =   "Options"
      Height          =   1095
      Left            =   120
      TabIndex        =   5
      Top             =   2520
      Width           =   6135
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   120
         TabIndex        =   6
         Text            =   "False"
         Top             =   600
         Width           =   5895
      End
      Begin VB.Label Label3 
         Caption         =   "Return mixed case?"
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   360
         Width           =   3375
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Hash"
      Height          =   2295
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   6135
      Begin VB.TextBox Text2 
         Height          =   285
         Left            =   120
         TabIndex        =   4
         Top             =   1800
         Width           =   5895
      End
      Begin VB.TextBox Text1 
         Height          =   735
         Left            =   120
         MultiLine       =   -1  'True
         TabIndex        =   1
         Top             =   600
         Width           =   5895
      End
      Begin VB.Label Label2 
         Caption         =   "Hash result:"
         Height          =   255
         Left            =   120
         TabIndex        =   3
         Top             =   1560
         Width           =   2175
      End
      Begin VB.Label Label1 
         Caption         =   "Data to hash:"
         Height          =   255
         Left            =   120
         TabIndex        =   2
         Top             =   360
         Width           =   2055
      End
   End
End
Attribute VB_Name = "FrmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    If Combo1.Text = "False" Then
        Text2.Text = Gopher16(Text1.Text)
    Else
        Text2.Text = Gopher16(Text1.Text, True)
    End If
End Sub
