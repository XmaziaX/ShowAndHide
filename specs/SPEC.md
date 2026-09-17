Plugin do QGIS
Powinien działać w QGIS 3.28x jak i w QGIS4.2 opartym na QT6
Mam błąd:
TypeError: index 0 has type 'QKeyCombination' but 'QKeySequence' is expected 
Traceback (most recent call last):
  File "C:\PROGRA~1/QGIS42~1.1/apps/qgis/./python\qgis\utils.py", line 538, in startPlugin
    plugins[packageName].initGui()
  File "C:\Users/tmazuga/AppData/Roaming/QGIS/QGIS4\profiles\default/python/plugins\ShowAndHide\show_and_hide.py", line 118, in initGui
    self.add_buttons_action(":/plugins/show_and_hide/icons/vector.png",
  File "C:\Users/tmazuga/AppData/Roaming/QGIS/QGIS4\profiles\default/python/plugins\ShowAndHide\show_and_hide.py", line 99, in add_buttons_action
    action_button.setShortcuts(shortcut)
TypeError: index 0 has type 'QKeyCombination' but 'QKeySequence' is expected

