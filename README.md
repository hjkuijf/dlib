# dlib

See http://dlib.net for the main project documentation. This library was used for the work described in: http://dx.doi.org/10.1007/s12021-013-9215-0 .

A project profile is added for use in [MeVisLab](http://www.mevislab.de/). To add this library to the Sources of your MeVisLab package, please do the following:

1. Download these sources and place them in Your/Package/Sources/dlib
2. Add the following to Your/Package/Configuration/Your_Package.pri:

```
dlib {
  CONFIG_FOUND += dlib
  INCLUDEPATH += $${PACKAGE_SOURCES}/dlib
  #win32:LIBS += dlib$${d}.lib # optional
  #unix:LIBS += -ldlib$${d}    # optional
}
```

To use the dlib library in a MeVisLab C++ module, add the following to Your/Package/Projects/YourProject/Sources/YourProject.pro:

```
CONFIG += dlib OpenMP
MLAB_PACKAGES += Your_Package
```

The latter (MLAB_PACKAGES) is only required if you place dlib in a different package than your project sources. For example, in a dedicated ThirdParty package.

Since dlib is mostly a header-only library, there is no need to actually compile the sources into a static library. However, I added the project profile to do so, if you would need it. By default, I commented-out the inclusion of the dlib-lib in the pri-file.

This code is slightly different from the original source code, because I multi-threaded part of the optimization library with OpenMP (see commit b509d9633bdc05ca3f56136c6865881dfc286847 ).