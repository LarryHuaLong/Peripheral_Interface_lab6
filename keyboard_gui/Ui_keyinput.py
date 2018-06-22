# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'e:\Peripheral_Interface_lab6\keyboard_gui\keyinput.ui'
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
        self.pushButton_conn = QtWidgets.QPushButton(GUIMainWindow)
        self.pushButton_conn.setObjectName("pushButton_conn")
        self.gridLayout.addWidget(self.pushButton_conn, 0, 7, 6, 1)
        self.textEdit_text = QtWidgets.QPlainTextEdit(GUIMainWindow)
        self.textEdit_text.setReadOnly(True)
        self.textEdit_text.setObjectName("textEdit_text")
        self.gridLayout.addWidget(self.textEdit_text, 9, 2, 2, 6)
        self.lineEdit_com = QtWidgets.QLineEdit(GUIMainWindow)
        self.lineEdit_com.setObjectName("lineEdit_com")
        self.gridLayout.addWidget(self.lineEdit_com, 1, 5, 1, 1)
        self.label_2 = QtWidgets.QLabel(GUIMainWindow)
        self.label_2.setAlignment(QtCore.Qt.AlignCenter)
        self.label_2.setObjectName("label_2")
        self.gridLayout.addWidget(self.label_2, 1, 4, 1, 1)

        self.retranslateUi(GUIMainWindow)
        QtCore.QMetaObject.connectSlotsByName(GUIMainWindow)

    def retranslateUi(self, GUIMainWindow):
        _translate = QtCore.QCoreApplication.translate
        GUIMainWindow.setWindowTitle(_translate("GUIMainWindow", "接口综合实验GUI"))
        self.pushButton_conn.setText(_translate("GUIMainWindow", "连接"))
        self.lineEdit_com.setText(_translate("GUIMainWindow", "COM6"))
        self.label_2.setText(_translate("GUIMainWindow", "Serial line"))

