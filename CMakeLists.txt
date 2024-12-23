cmake_minimum_required(VERSION 3.16)

project(untitled15 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 REQUIRED COMPONENTS Quick)


qt_add_executable(appuntitled15
    main.cpp
)

qt_add_qml_module(appuntitled15
    URI untitled15
    VERSION 1.0
    QML_FILES
        Main.qml
        QML_FILES HomePage.qml
        QML_FILES CatalogPage.qml
        QML_FILES AboutPage.qml
        QML_FILES ContactPage.qml
        QML_FILES ProfilePage.qml
        QML_FILES FavoritesPage.qml
        QML_FILES CartPage.qml
        QML_FILES
        QML_FILES
        QML_FILES MenuKek.qml
        QML_FILES Buy.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appuntitled15 PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appuntitled15
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appuntitled15
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appuntitled15
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
