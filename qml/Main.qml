 import Felgo 3.0
 import QtQuick 2.0

 App {
     id: app
     property int clickCount: 0

     onInitTheme: {
        Theme.Item.spacing = 30
    }

   // main page
   NavigationStack {
       id:main

        BackgroundMusic{
        id:sound
        source: "../sound/sound1.wav"
        }

       SoundEffect{
           id:sound1
           source: "../sound/T.wav"
           loops: 1
           volume: 0.8


       }
       function play() {
           sound1.play()

       }

//       splitView: false
       Page {
           id: mainPage


       title: "حروف اللغة العربية"

       backgroundColor: "#fff"


        Rectangle{
            anchors.fill: parent

            AppImage{
                anchors.fill: parent
                source: "../image/102.jpg"
                width: dp(300) // set fixed image width with dp feature
                fillMode: AppImage.PreserveAspectFit
            }
        }

       Column {
         spacing: 15
         anchors.centerIn: parent

         AppText {
           anchors.horizontalCenter: parent.horizontalCenter
           text: "تعلم الحروف  "
           font.pixelSize: sp(20) // use sp for text (density independent)
           x:0
           y:0

         }
         AppButton{
             id: appButtonStart
             x: 13
             y:300
             width: dp(100) // set fixed image width with dp feature

             implicitWidth: 50
             text: "ابدأ التعلم"
             backgroundColorPressed: "#c78e8e"
             backgroundColor: "#cc9a9a"
             borderColorPressed: "#d49a9a"
             anchors.topMargin: 100
             verticalMargin: 100

             textColor: "#060606"
             textColorPressed: "#9e9494"
             fontBold: true
             textSize:  30

           onClicked:{
            mainPage.navigationStack.push(counterPageComponentStart)
            sound.stop()

           }
         }
         AppButton{
             id: appButtonStart1
             x: 13
             y:300
             width: dp(100) // set fixed image width with dp feature
             implicitWidth: 50
             text: "ابدأ الاختبار"
             backgroundColorPressed: "#c78e8e"
             backgroundColor: "#cc9a9a"
             borderColorPressed: "#d49a9a"
             anchors.topMargin: 100
             verticalMargin: 100

             textColor: "#060606"
             textColorPressed: "#9e9494"
             fontBold: true
             textSize:  30

           onClicked:
           {
               mainPage.navigationStack.push(counterPageComponent29)
               clickCount: 0
               sound.stop()
//            var component=Qt.createComponent("QuickQuize2.qml")
//            var window=component.createObject(app)
//            main.visible =false
//            window.show

           }

         }

         Component {
           id: counterPageComponentStart

           Page {
             title: "حروف اللغه العربيه"
             property Page target: null

             Rectangle{
                 anchors.fill: parent
                 AppImage{
                     anchors.fill: parent
//                     source: "../image/103.jpg"
//                     width: dp(200) // set fixed image width with dp feature
//                     fillMode: AppImage.PreserveAspectFit
                 }
             }

             Column {
               anchors.centerIn: parent
               Grid {
                   id: grid
                   x: 107
                   y: 200
                   width: 400
                   height: 400
                   rows: 4
                   columns: 8
                   flow: Grid.TopToBottom
                   layoutDirection: Qt.RightToLeft
                   spacing:  10
                   NumberAnimation on y{
                      from:-50
                      to:0
                      running: true
                      duration:1200
                   }


                   AppButton {
                       id: appButton1
                       width: 75
                       text: "أ"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true

                     onClicked: mainPage.navigationStack.push(counterPageComponent1)
                   }
                   AppButton {
                       id: appButton2
                       width: 75
                       text: "د"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent8)
                   }
                   AppButton {
                       id: appButton3
                       width: 75
                       text: "ض"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       flat:true
                       fontBold: true
                       textSize:  30
                     onClicked: mainPage.navigationStack.push(counterPageComponent15)
                   }
                   AppButton {
                       id: appButton4
                       width: 75
                       text: "ك"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                        flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent22)
                   }
                   AppButton {
                       id: appButton5
                       width: 75
                       text: "ب"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent2)
                   }
                   AppButton {
                       id: appButton6
                       width: 75
                       text: "ذ"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent9)
                   }
                   AppButton {
                       id: appButton7
                       width: 75
                       text: "ط"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent16)
                   }
                   AppButton {
                       id: appButton8
                       width: 75
                       text: "ل"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent23)
                   }
                   AppButton {
                       id: appButton9
                       width: 75
                       text: "ت"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent3)
                   }
                   AppButton {
                       id: appButton10
                       width: 75
                       text: "ر"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent10)
                   }
                   AppButton {
                       id: appButton11
                       width: 75
                       text: "ظ"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent17)
                   }
                   AppButton {
                       id: appButton12
                       width: 75
                       text: "م"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent24)
                   }
                   AppButton {
                       id: appButton13
                       width: 75
                       text: "ث"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent4)
                   }
                   AppButton {
                       id: appButton14
                       width: 75
                       text: "ز"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent11)
                   }
                   AppButton {
                       id: appButton15
                       width: 75
                       text: "ع"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent18)
                   }
                   AppButton {
                       id: appButton16
                       width: 75
                       text: "ن"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent25)
                   }
                   AppButton {
                       id: appButton17
                       width: 75
                       text: "ج"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent5)
                   }
                   AppButton {
                       id: appButton18
                       width: 75
                       text: "س"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent12)
                   }
                   AppButton {
                       id: appButton19
                       width: 75
                       text: "غ"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent19)
                   }
                   AppButton {
                       id: appButton20
                       width: 75
                       text: "ھ"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent26)
                   }
                   AppButton {
                       id: appButton21
                       width: 75
                       text: "ح"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent6)
                   }
                   AppButton {
                       id: appButton22
                       width: 75
                       text: "ش"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent13)
                   }
                   AppButton {
                       id: appButton23
                       width: 75
                       text: "ف"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent20)
                   }
                   AppButton {
                       id: appButton24
                       width: 75
                       text: "و"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent27)
                   }
                   AppButton {
                       id: appButton25
                       width: 75
                       text: "خ"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent7)
                   }
                   AppButton {
                       id: appButton26
                       width: 75
                       text: "ص"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent14)
                   }
                   AppButton {
                       id: appButton27
                       width: 75
                       text: "ق"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                     onClicked: mainPage.navigationStack.push(counterPageComponent21)
                   }
                   AppButton {
                       id: appButton28
                       width: 75
                       text: "ي"
                       textColor: "#000"
                       textColorPressed: "#fff"
                       fontBold: true
                       textSize:  30
                       flat:true
                       onClicked: mainPage.navigationStack.push(counterPageComponent28)
                   }
               }
             }
           }
         }
       }
     }
   }

   Component {
     id: counterPageComponent1
     Page {
       title: "أ"
       property Page target: null
       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage1
                 height: 410
                 width: 410

                 source: "../image/1.png"

             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent2
     Page {
       title: "ب"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage2
                 height: 410
                 width: 410
                 source: "../image/2.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent3
     Page {
       title: "ت"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage3
                 height: 410
                 width: 410
                 source: "../image/3.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent4
     Page {
       title: "ث"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage4
                 height: 410
                 width: 410
                 source: "../image/4.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent5
     Page {
       title: "ج"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage5
                 height: 410
                 width: 410
                 source: "../image/5.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent6
     Page {
       title: "ح"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage6
                 height: 410
                 width: 410
                 source: "../image/6.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent7
     Page {
       title: "خ"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage7
                 height: 410
                 width: 410
                 source: "../image/7.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent8
     Page {
       title: "د"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage8
                 height: 410
                 width: 410
                 source: "../image/8.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent9
     Page {
       title: "ذ"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage9
                 height: 410
                 width: 410
                 source: "../image/9.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent10
     Page {
       title: "ر"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage10
                 height: 410
                 width: 410
                 source: "../image/10.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent11
     Page {
       title: "ز"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage11
                 height: 410
                 width: 410
                 source: "../image/11.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent12
     Page {
       title: "س"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage12
                 height: 410
                 width: 410
                 source: "../image/12.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent13
     Page {
       title: "ش"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage13
                 height: 410
                 width: 410
                 source: "../image/13.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent14
     Page {
       title: "ص"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage14
                 height: 410
                 width: 410
                 source: "../image/14.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent15
     Page {
       title: "ض"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage15
                 height: 410
                 width: 410
                 source: "../image/15.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent16
     Page {
       title: "ط"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage16
                 height: 410
                 width: 410
                 source: "../image/16.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent17
     Page {
       title: "ظ"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage17
                 height: 410
                 width: 410
                 source: "../image/17.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent18
     Page {
       title: "ع"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage18
                 height: 410
                 width: 410
                 source: "../image/18.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent19
     Page {
       title: "غ"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage19
                 height: 410
                 width: 410
                 source: "../image/19.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent20
     Page {
       title: "ف"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage20
                 height: 410
                 width: 410
                 source: "../image/20.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent21
     Page {
       title: "ق"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage21
                 height: 410
                 width: 410
                 source: "../image/21.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent22
     Page {
       title: "ك"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage22
                 height: 410
                 width: 410
                 source: "../image/22.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent23
     Page {
       title: "ل"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage23
                 height: 410
                 width: 410
                 source: "../image/23.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent24
     Page {
       title: "م"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage24
                 height: 410
                 width: 410
                 source: "../image/24.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent25
     Page {
       title: "ن"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage25
                 height: 410
                 width: 410
                 source: "../image/25.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent26
     Page {
       title: "ھ"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage26
                 height: 410
                 width: 410
                 source: "../image/26.png"
             }
         }
       }
     }
   }
   Component {
     id: counterPageComponent27
     Page {
       title: "و"
       property Page target: null

       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage27
                 height: 410
                 width: 410
                 source: "../image/27.png"
             }
         }
       }
     }
}
   Component {
     id: counterPageComponent28
     Page {
       title: "ي"
       property Page target: null


       Column {
         anchors.centerIn: parent
         Rectangle{
             height:400
             width:400
             NumberAnimation on y{
                from:-50
                to:0
                running: true
                duration:1000
             }
             Image {
                 id: appImage28
                 height: 410
                 width: 410
                 source: "../image/28.png"
             }
         }
       }
     }
}
   Component {
     id: counterPageComponent29

     Navigation {
         id: navigation
         property int clickCount: 0


   //first page
   NavigationItem{






     Page {


         Column{
             id: column

              anchors.verticalCenterOffset: 130
              anchors.centerIn: parent
              spacing: 100




      RoundedImage {


               width: dp(250)
               height: dp(250)
               fillMode: Image.PreserveAspectCrop
               anchors.horizontalCenter: parent.horizontalCenter
               anchors.bottom: parent.bottom
                source: "../image/q1.jpg"



      }



      Row {
          anchors.verticalCenterOffset: 50
          anchors.top: parent.top



          spacing: 20
            anchors.centerIn: parent





       AppButton {
          text: "أ"

          onClicked:{
               backgroundColor = "green"
               sound1.play()
               navigation.currentIndex = 1
               clickCount = clickCount + 1

          }

        }

       AppButton {
           text: "ب"
           onClicked:{

               backgroundColor = "red"
                navigation.currentIndex = 1

           }
        }

       AppButton {
           text: "م"
           onClicked:{
             backgroundColor = "red"
             navigation.currentIndex = 1
           }
        }


       }
     }
   }
 }

 //second page
   NavigationItem{


     Page {
         Column{

              spacing: 100
              anchors.centerIn: parent
              anchors.verticalCenterOffset: 130


      RoundedImage {

          width: dp(250)
          height: dp(250)
          fillMode: Image.PreserveAspectCrop
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.bottom: parent.bottom
               source: "../image/q2.jpg"

             }



       Row {
            spacing: 20
            anchors.centerIn: parent
            anchors.verticalCenterOffset: 50


       AppButton {
          text: "س"
          onClicked:{
               backgroundColor = "red"
               navigation.currentIndex = 2

          }

        }
       AppButton {
           text: "ج"
           onClicked:{

               backgroundColor = "green"
               sound1.play()
                navigation.currentIndex = 2
                clickCount = clickCount + 1

           }
        }

       AppButton {
           text: "ز"
           onClicked:{

             backgroundColor = "red"
             navigation.currentIndex = 2
           }
        }


       }
     }
   }
 }



 //third page
   NavigationItem{


     Page {

         Column{
              anchors.verticalCenterOffset: 130
              spacing: 100
              anchors.centerIn: parent


      RoundedImage {

          width: dp(250)
          height: dp(250)
          fillMode: Image.PreserveAspectCrop
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.bottom: parent.bottom
               source: "../image/q3.png"

             }



       Row {
            spacing: 20
            anchors.centerIn: parent
            anchors.verticalCenterOffset: 50


       AppButton {
          text: "ط"
          onClicked:{
               backgroundColor = "red"
               navigation.currentIndex = 3

          }

        }
       AppButton {
           text: "ض"
           onClicked:{

               backgroundColor = "red"
                navigation.currentIndex = 3

           }
        }

       AppButton {
           text: "س"
           onClicked:{
             backgroundColor = "green"
               sound1.play()
             navigation.currentIndex = 3
             clickCount = clickCount + 1
           }
        }


       }
     }
   }
   }

 //fourth page

   NavigationItem{


     Page {

         Column{
              anchors.verticalCenterOffset: 130
              spacing: 100
              anchors.centerIn: parent

      RoundedImage {

          width: dp(250)
          height: dp(250)
          fillMode: Image.PreserveAspectCrop
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.bottom: parent.bottom
          source: "../image/q41.jpg"

             }



       Row {
            spacing: 20
            anchors.centerIn: parent
            anchors.verticalCenterOffset: 50


       AppButton {
          text: "ب"
          onClicked:{
               backgroundColor = "green"
              sound1.play()
               navigation.currentIndex = 4
                clickCount = clickCount + 1

          }

        }
       AppButton {
           text: "ي"
           onClicked:{

               backgroundColor = "red"
                navigation.currentIndex = 4

           }
        }

       AppButton {
           text: "ن"
           onClicked:{
             backgroundColor = "red"
             navigation.currentIndex = 4
           }
        }


       }
     }
   }
 }


 //fifth page
   NavigationItem{


     Page {

         Column{
              anchors.verticalCenterOffset: 130
              spacing: 100
              anchors.centerIn: parent


      RoundedImage {

          width: dp(250)
          height: dp(250)
          fillMode: Image.PreserveAspectCrop
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.bottom: parent.bottom
          source: "../image/q52.jpg"
             }



       Row {
            spacing: 20
            anchors.centerIn: parent
            anchors.verticalCenterOffset: 50



       AppButton {
          text: "ت"
          onClicked:{
               backgroundColor = "red"
               navigation.currentIndex = 5


          }

        }
       AppButton {
           text: "ز"
           onClicked:{

               backgroundColor = "green"
               sound1.play()
                navigation.currentIndex = 5
                clickCount = clickCount + 1



           }
        }

       AppButton {
           text: "ر"
           onClicked:{
             backgroundColor = "red"
             navigation.currentIndex = 5

           }
        }


       }
     }
   }
 }

 //result page

   NavigationItem{


     Page {


      Column {
              spacing: 50
              anchors.centerIn: parent

      AppText {
          id: label
          fontSize: 100
          color: "green"
          text:clickCount + "/5"

          anchors.horizontalCenter: parent.horizontalCenter

      }





      AppButton {
          text: "الصفحه الرئيسيه"
          onClicked:{
            navigation.currentIndex = 5
//            item.visible=false
//            main.visible=true

            mainPage.navigationStack.push(mainPage)
          }
       }





     }
   }

 }


 }

    }




    }
