# Show And Hide Layers    

<img src="./icons/icon.svg" width="50" >

A simple QGIS plugin that allows you to turn visible vector, raster and point cloud layers on and off
<br>This is a useful option when vectorizing based on orthophotos, etc.




## **Tool buttons:**
* Hide / Show visible vector layers         <img src="./icons/vector.svg" width="50"  style="background:25px white">
    <p> Default shortcut Ctrl + Shift + 1

* Hide / Show visible raster layers          <img src="./icons/raster.svg" width="50" style="background:25px white">
    <p> Default shortcut Ctrl + Shift + 2

* Hide / Show visible point cloud layers    <img src="./icons/point_cloud.svg" width="50" style="background:25px white">
    <p> Default shortcut Ctrl + Shift + 3

* Shortcut settings                         <img src="./icons/settings.svg" width="50" style="background:25px white">

## **Toolbar and shortcuts**
* Plugin actions are added to a dedicated **Show And Hide** toolbar.
* The toolbar includes vector, raster and point cloud toggle buttons, plus a separator and **Shortcut settings** (gear icon).
* Shortcuts can be changed in plugin settings (**Show And Hide > Shortcut settings**) and are saved per user.

## **Build / release note**
* Compile translations before packaging the plugin:
  * `compile_translations.bat`
* This generates `.qm` files from `i18n/*.ts`, required for runtime translations in QGIS.

 <img src="video.gif">
