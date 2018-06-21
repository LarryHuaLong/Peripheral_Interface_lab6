# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'e:\Peripheral_Interface_lab6_Keyboard_C\lab5gui\keyinput.ui'
#
# Created by: PyQt5 UI code generator 5.10.1
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_GUIMainWindow(object):
    def setupUi(self, GUIMainWindow):
        GUIMainWindow.setObjectName("GUIMainWindow")
        GUIMainWindow.resize(481, 258)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(GUIMainWindow.sizePolicy().hasHeightForWidth())
        GUIMainWindow.setSizePolicy(sizePolicy)
        GUIMainWindow.setFocusPolicy(QtCore.Qt.TabFocus)
        self.gridLayout = QtWidgets.QGridLayout(GUIMainWindow)
        self.gridLayout.setObjectName("gridLayout")
        self.label_2 = QtWidgets.QLabel(GUIMainWindow)
        self.label_2.setAlignment(QtCore.Qt.AlignCenter)
        self.label_2.setObjectName("label_2")
        self.gridLayout.addWidget(self.label_2, 7, 7, 1, 1)
        self.textEdit_text = QtWidgets.QPlainTextEdit(GUIMainWindow)
        self.textEdit_text.setReadOnly(True)
        self.textEdit_text.setObjectName("textEdit_text")
        self.gridLayout.addWidget(self.textEdit_text, 8, 7, 2, 1)

        self.retranslateUi(GUIMainWindow)
        QtCore.QMetaObject.connectSlotsByName(GUIMainWindow)

    def retranslateUi(self, GUIMainWindow):
        _translate = QtCore.QCoreApplication.translate
        GUIMainWindow.setWindowTitle(_translate("GUIMainWindow", "接口综合实验GUI"))
        self.label_2.setText(_translate("GUIMainWindow", "键盘输入内容"))

