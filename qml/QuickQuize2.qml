import Felgo 3.0
import QtQuick 2.0

App {
    id:item

    title: qsTr("اوجد الحرف الصحيح للصوره")
    property int clickCount: 0


    Navigation {
        id: navigation



  //first page
  NavigationItem{


      property int clickCount: 0



    Page {


        Column{
            id: column


             anchors.centerIn: parent
             spacing: 100


     RoundedImage {


              width: dp(250)
              height: dp(250)
              fillMode: Image.PreserveAspectCrop
              anchors.horizontalCenter: parent.horizontalCenter
              anchors.bottom: parent.bottom
              source: "https://www.collinsdictionary.com/images/full/rabbit_274039655.jpg"



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


     RoundedImage {

         width: dp(250)
         height: dp(250)
         fillMode: Image.PreserveAspectCrop
         anchors.horizontalCenter: parent.horizontalCenter
         anchors.bottom: parent.bottom
              source: "https://clipart.world/wp-content/uploads/2020/07/cute-camel.jpg"

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

             spacing: 100
             anchors.centerIn: parent


     RoundedImage {

         width: dp(250)
         height: dp(250)
         fillMode: Image.PreserveAspectCrop
         anchors.horizontalCenter: parent.horizontalCenter
         anchors.bottom: parent.bottom
              source: "https://tropicalfishbowl.com/files/2021/01/clown-fish.png"

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

             spacing: 100
             anchors.centerIn: parent

     RoundedImage {

         width: dp(250)
         height: dp(250)
         fillMode: Image.PreserveAspectCrop
         anchors.horizontalCenter: parent.horizontalCenter
         anchors.bottom: parent.bottom
              source: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/how-to-keep-ducks-call-ducks-1615457181.jpg"

            }



      Row {
           spacing: 20
           anchors.centerIn: parent
           anchors.verticalCenterOffset: 50


      AppButton {
         text: "ب"
         onClicked:{
              backgroundColor = "green"
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

             spacing: 100
             anchors.centerIn: parent


     RoundedImage {

         width: dp(250)
         height: dp(250)
         fillMode: Image.PreserveAspectCrop
         anchors.horizontalCenter: parent.horizontalCenter
         anchors.bottom: parent.bottom
              source: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimagesvc.meredithcorp.io%2Fv3%2Fmm%2Fimage%3Furl%3Dhttps%253A%252F%252Fstatic.onecms.io%252Fwp-content%252Fuploads%252Fsites%252F20%252F2021%252F01%252F08%252Fdwarf-giraffe-1.jpg&q=85"

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
           item.visible=false
           main.visible=true


         }
      }





    }
  }

}


}
}





