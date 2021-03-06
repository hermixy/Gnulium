import QtQuick 2.9
import QtQuick.Controls 2.3

import "qrc:/util/qml"
import "qrc:/strings/CoreStrings.js" as CStr

Row{
    id: mHomeTab
    spacing: CStr.rowSpacing
    anchors.fill: parent

    HomePillar{
        width: parent.width / 5 * 1
        height: parent.height
    }

    SpacerVertical{
    }

    Rectangle{
        color: CStr.transparent
        height: parent.height
        width: (parent.width / 5 * 4) - (2 * CStr.tabViewMargin)

        Grid {
            id: mGrid
            width: parent.width
            height: parent.height / 6 * 5
            anchors.top: parent.top
            columns: 4
            columnSpacing: 2

            HomeMemory {
                width: (parent.width / 4) * 1
                height: (parent.height / 2)
            }

            HomeProcess {
                width: (parent.width / 4) * 1
                height: (parent.height / 2)
            }

            HomeHardDisk{
                width: (parent.width / 4) * 1
                height: (parent.height / 2)
            }

            HomeActiveServices{
                width: (parent.width / 4) * 1
                height: (parent.height / 2)
            }

            HomeEnv{
                width: (parent.width / 4) * 1
                height: (parent.height / 2)
            }

            HomeOpenPorts{
                width: (parent.width / 4) * 1
                height: (parent.height / 2)
            }

            HomeSystemdAnalyze{
                width: (parent.width / 4) * 1
                height: (parent.height / 2)
            }
            HomeBootTime{
                width: (parent.width / 4) * 1
                height: (parent.height / 2)
            }
        }
        Rectangle{
            color: CStr.transparent
            width: parent.width
            height: parent.height / 6 * 1
            anchors.top: mGrid.bottom
            anchors.bottom: parent.bottom

            HomeArchAge{
                id: mArchAge
                width: parent.width / 4 * 1
                height: parent.height
                anchors.left: parent.left
                anchors.bottom: parent.bottom
            }
            HomeUpTime{
                id: mUpTime
                width: parent.width / 4 * 1
                height: parent.height
                anchors.left: mArchAge.right
                anchors.bottom: parent.bottom
            }
            HomeVGAs{
                id: mVGAs
                width: parent.width / 4 * 1
                height: parent.height
                anchors.left: mUpTime.right
                anchors.bottom: parent.bottom
            }
            HomeTorStatus{
                id: mTorStatus
                width: parent.width / 4 * 1
                height: parent.height
                anchors.left: mVGAs.right
                anchors.bottom: parent.bottom
            }
        }
    }
}
