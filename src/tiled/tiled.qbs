import qbs 1.0

QtGuiApplication {
    name: "tiled"
    targetName: name

    Depends { name: "libtiled" }
    Depends { name: "translations" }
    Depends { name: "qtpropertybrowser" }
    Depends { name: "Qt"; submodules: ["widgets", "opengl"] }

    cpp.includePaths: ["."]
    cpp.rpaths: ["$ORIGIN/../lib"]
    cpp.cxxPrecompiledHeader: "pch.h"
    cpp.cxxLanguageVersion: "c++11"

    cpp.defines: {
        var version = qbs.getEnv("BUILD_INFO_VERSION");
        if (version != undefined)
            return ["BUILD_INFO_VERSION=" + version]
        return []
    }

    consoleApplication: false

    files: [
        "Info.plist",
        "aboutdialog.cpp",
        "aboutdialog.h",
        "aboutdialog.ui",
        "abstractimagetool.cpp",
        "abstractimagetool.h",
        "abstractobjecttool.cpp",
        "abstractobjecttool.h",
        "abstracttiletool.cpp",
        "abstracttiletool.h",
        "abstracttool.cpp",
        "abstracttool.h",
        "addremovelayer.cpp",
        "addremovelayer.h",
        "addremovemapobject.cpp",
        "addremovemapobject.h",
        "addremoveterrain.cpp",
        "addremoveterrain.h",
        "addremovetiles.cpp",
        "addremovetileset.cpp",
        "addremovetileset.h",
        "addremovetiles.h",
        "automapper.cpp",
        "automapper.h",
        "automapperwrapper.cpp",
        "automapperwrapper.h",
        "automappingmanager.cpp",
        "automappingmanager.h",
        "automappingutils.cpp",
        "automappingutils.h",
        "brushitem.cpp",
        "brushitem.h",
        "bucketfilltool.cpp",
        "bucketfilltool.h",
        "changeimagelayerposition.cpp",
        "changeimagelayerposition.h",
        "changeimagelayerproperties.cpp",
        "changeimagelayerproperties.h",
        "changelayer.cpp",
        "changelayer.h",
        "changemapobject.cpp",
        "changemapobject.h",
        "changemapobjectsorder.cpp",
        "changemapobjectsorder.h",
        "changemapproperty.cpp",
        "changemapproperty.h",
        "changeobjectgroupproperties.cpp",
        "changeobjectgroupproperties.h",
        "changepolygon.cpp",
        "changepolygon.h",
        "changeproperties.cpp",
        "changeproperties.h",
        "changeselectedarea.cpp",
        "changeselectedarea.h",
        "changetileanimation.cpp",
        "changetileanimation.h",
        "changetileobjectgroup.cpp",
        "changetileobjectgroup.h",
        "changetileprobability.cpp",
        "changetileprobability.h",
        "changetileterrain.cpp",
        "changetileterrain.h",
        "clipboardmanager.cpp",
        "clipboardmanager.h",
        "colorbutton.cpp",
        "colorbutton.h",
        "commandbutton.cpp",
        "commandbutton.h",
        "command.cpp",
        "commanddatamodel.cpp",
        "commanddatamodel.h",
        "commanddialog.cpp",
        "commanddialog.h",
        "commanddialog.ui",
        "command.h",
        "commandlineparser.cpp",
        "commandlineparser.h",
        "consoledock.cpp",
        "consoledock.h",
        "containerhelpers.h",
        "createellipseobjecttool.cpp",
        "createellipseobjecttool.h",
        "createmultipointobjecttool.cpp",
        "createmultipointobjecttool.h",
        "createobjecttool.cpp",
        "createobjecttool.h",
        "createpolygonobjecttool.cpp",
        "createpolygonobjecttool.h",
        "createpolylineobjecttool.cpp",
        "createpolylineobjecttool.h",
        "createrectangleobjecttool.cpp",
        "createrectangleobjecttool.h",
        "createscalableobjecttool.cpp",
        "createscalableobjecttool.h",
        "createtileobjecttool.cpp",
        "createtileobjecttool.h",
        "documentmanager.cpp",
        "documentmanager.h",
        "editpolygontool.cpp",
        "editpolygontool.h",
        "editterraindialog.cpp",
        "editterraindialog.h",
        "editterraindialog.ui",
        "eraser.cpp",
        "eraser.h",
        "erasetiles.cpp",
        "erasetiles.h",
        "exportasimagedialog.cpp",
        "exportasimagedialog.h",
        "exportasimagedialog.ui",
        "fileedit.cpp",
        "fileedit.h",
        "filesystemwatcher.cpp",
        "filesystemwatcher.h",
        "filltiles.cpp",
        "filltiles.h",
        "flipmapobjects.cpp",
        "flipmapobjects.h",
        "geometry.cpp",
        "geometry.h",
        "imagelayeritem.cpp",
        "imagelayeritem.h",
        "imagemovementtool.cpp",
        "imagemovementtool.h",
        "languagemanager.cpp",
        "languagemanager.h",
        "layerdock.cpp",
        "layerdock.h",
        "layermodel.cpp",
        "layermodel.h",
        "magicwandtool.h",
        "magicwandtool.cpp",
        "main.cpp",
        "mainwindow.cpp",
        "mainwindow.h",
        "mainwindow.ui",
        "mapdocumentactionhandler.cpp",
        "mapdocumentactionhandler.h",
        "mapdocument.cpp",
        "mapdocument.h",
        "mapobjectitem.cpp",
        "mapobjectitem.h",
        "mapobjectmodel.cpp",
        "mapobjectmodel.h",
        "mapscene.cpp",
        "mapscene.h",
        "mapsdock.cpp",
        "mapsdock.h",
        "mapview.cpp",
        "mapview.h",
        "minimap.cpp",
        "minimapdock.cpp",
        "minimapdock.h",
        "minimap.h",
        "movabletabwidget.cpp",
        "movabletabwidget.h",
        "movelayer.cpp",
        "movelayer.h",
        "movemapobject.cpp",
        "movemapobject.h",
        "movemapobjecttogroup.cpp",
        "movemapobjecttogroup.h",
        "movetileset.cpp",
        "movetileset.h",
        "newmapdialog.cpp",
        "newmapdialog.h",
        "newmapdialog.ui",
        "newtilesetdialog.cpp",
        "newtilesetdialog.h",
        "newtilesetdialog.ui",
        "objectgroupitem.cpp",
        "objectgroupitem.h",
        "objectsdock.cpp",
        "objectsdock.h",
        "objectselectiontool.cpp",
        "objectselectiontool.h",
        "objecttypes.cpp",
        "objecttypes.h",
        "objecttypesmodel.cpp",
        "objecttypesmodel.h",
        "offsetlayer.cpp",
        "offsetlayer.h",
        "offsetmapdialog.cpp",
        "offsetmapdialog.h",
        "offsetmapdialog.ui",
        "painttilelayer.cpp",
        "painttilelayer.h",
        "patreondialog.cpp",
        "patreondialog.h",
        "patreondialog.ui",
        "pch.h",
        "pluginmanager.cpp",
        "pluginmanager.h",
        "preferences.cpp",
        "preferencesdialog.cpp",
        "preferencesdialog.h",
        "preferencesdialog.ui",
        "preferences.h",
        "propertiesdock.cpp",
        "propertiesdock.h",
        "propertybrowser.cpp",
        "propertybrowser.h",
        "quickstampmanager.cpp",
        "quickstampmanager.h",
        "raiselowerhelper.cpp",
        "raiselowerhelper.h",
        "rangeset.h",
        "renamelayer.cpp",
        "renamelayer.h",
        "renameterrain.cpp",
        "renameterrain.h",
        "resizedialog.cpp",
        "resizedialog.h",
        "resizedialog.ui",
        "resizehelper.cpp",
        "resizehelper.h",
        "resizemap.cpp",
        "resizemap.h",
        "resizemapobject.cpp",
        "resizemapobject.h",
        "resizetilelayer.cpp",
        "resizetilelayer.h",
        "rotatemapobject.cpp",
        "rotatemapobject.h",
        "selectionrectangle.cpp",
        "selectionrectangle.h",
        "snaphelper.cpp",
        "snaphelper.h",
        "stampbrush.cpp",
        "stampbrush.h",
        "terrainbrush.cpp",
        "terrainbrush.h",
        "terraindock.cpp",
        "terraindock.h",
        "terrainmodel.cpp",
        "terrainmodel.h",
        "terrainview.cpp",
        "terrainview.h",
        "thumbnailrenderer.cpp",
        "thumbnailrenderer.h",
        "tileanimationdriver.cpp",
        "tileanimationdriver.h",
        "tileanimationeditor.cpp",
        "tileanimationeditor.h",
        "tileanimationeditor.ui",
        "tilecollisioneditor.cpp",
        "tilecollisioneditor.h",
        "tiled.rc",
        "tiledapplication.cpp",
        "tiledapplication.h",
        "tiled.qrc",
        "tilelayeritem.cpp",
        "tilelayeritem.h",
        "tilepainter.cpp",
        "tilepainter.h",
        "tileselectionitem.cpp",
        "tileselectionitem.h",
        "tileselectiontool.cpp",
        "tileselectiontool.h",
        "tilesetchanges.cpp",
        "tilesetchanges.h",
        "tilesetdock.cpp",
        "tilesetdock.h",
        "tilesetmanager.cpp",
        "tilesetmanager.h",
        "tilesetmodel.cpp",
        "tilesetmodel.h",
        "tilesetview.cpp",
        "tilesetview.h",
        "tilestamp.cpp",
        "tilestamp.h",
        "tilestampmodel.cpp",
        "tilestampmodel.h",
        "tilestampsdock.cpp",
        "tilestampsdock.h",
        "tmxmapreader.cpp",
        "tmxmapreader.h",
        "tmxmapwriter.cpp",
        "tmxmapwriter.h",
        "toolmanager.cpp",
        "toolmanager.h",
        "undocommands.h",
        "undodock.cpp",
        "undodock.h",
        "utils.cpp",
        "utils.h",
        "varianteditorfactory.cpp",
        "varianteditorfactory.h",
        "variantpropertymanager.cpp",
        "variantpropertymanager.h",
        "zoomable.cpp",
        "zoomable.h",
    ]

    Properties {
        condition: qbs.targetOS.contains("osx")
        cpp.frameworks: "Foundation"
        bundle.infoPlistFile: "Info.plist"
        targetName: "Tiled"
    }
    Group {
        name: "OS X"
        condition: qbs.targetOS.contains("osx")
        files: [
            "macsupport.h",
            "macsupport.mm",
        ]
    }

    Group {
        qbs.install: true
        qbs.installDir: {
            if (qbs.targetOS.contains("windows") || qbs.targetOS.contains("osx"))
                return ""
            else
                return "bin"
        }
        fileTagsFilter: product.type
    }
}
