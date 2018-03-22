with import<nixpkgs> {};

stdenv.mkDerivation {

  name = "L3_GL";

  buildInputs = [
    boost
    cmake
    cppcheck
    cpputest
    eigen
    gdb
    gede
    glog
    gnome2.gtkmm
    gnome3.gtkmm
    gnome3.nemiver
    gnuplot
    imagemagick
    opencv
    pkgconfig
    poco
    sqlitebrowser
    valgrind
  ];

  # ~/.bashrc : export PS1="\W \$ "
  shellHook = ''
    export PS1="[\W] \$ "
  '';
}

