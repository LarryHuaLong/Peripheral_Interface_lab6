import re
import sys

import serial
from PyQt5 import QtCore, QtWidgets

from Ui_keyinput import Ui_GUIMainWindow


class App(QtWidgets.QWidget, Ui_GUIMainWindow):

    def __init__(self, parent=None):
        # initialization of the superclass
        super(App, self).__init__()
        # setup the GUI --> function generated by pyuic4
        self.setupUi(self)
        # connect the signals with the slots
        self.pushButton_conn.clicked.connect(self.open_com)
        self.timer = QtCore.QTimer()
        self.timer.timeout.connect(self.read_data)
        
        self.mapping = ['\0', '\0', '\0', '\0', '\0', '\0', '\0', '\0', '\0', '\0', '\0', '\0', '\0', '\0', '\0', '\0', '\0', '\0', '\0', '\0', '\0', 'q', '1', '\0', '\0', '\0', 'z', 's', 'a', 'w', '2', '\0', '\0', 'c', 'x', 'd', 'e', '4', '3', '\0', '\0', ' ', 'v', 'f',
                        't', 'r', '5', '\0', '\0', 'n', 'b', 'h', 'g', 'y', '6', '\0', '\0', '\0', 'm', 'f', 'u', '7', '8', '\0', '\0', '\0', 'k', 'i', 'o', '0', '9', '\0', '\0', '\0', '\0', 'l', '\0', 'p', '\0', '\0', '\0', '\0', '\0', '\0', '\0', '\0', '\0', '\0', '\0', '\0', '\r\n']

    def open_com(self):
        com = self.lineEdit_com.text()
        self.serial = serial.Serial(com, 115200, timeout=1)
        if False == self.serial.isOpen():
            print("faild to open serial port!\n")
        else:
            self.pushButton_conn.setText("已连接")
            self.pushButton_conn.setDisabled(True)
            self.timer.start(100)

    def read_data(self):
        text = self.serial.read_all()
        keycode = re.findall(r"#([0-9]{1,3})", text.decode())

        for code in keycode:
            index = int(code)
            if index >= 0 and index <= len(self.mapping):
                ch = self.mapping[int(code)]
                if ch != '\0':
                    self.textEdit_text.insertPlainText(ch)


if __name__ == '__main__':
    app = QtWidgets.QApplication(sys.argv)
    ex = App()
    ex.show()
    sys.exit(app.exec_())
