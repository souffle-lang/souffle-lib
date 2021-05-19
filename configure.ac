AC_INIT(souffle-math, 0.1.3, [Mark Clements (firstname.lastname@ki.se)])

AC_SUBST([SOUFFLE_INT_TYPE], [int32_t])
AC_SUBST([SOUFFLE_BITS], [32])

if test $(souffle --version | grep -c "64bit Domains") = "1"; then
AC_SUBST([SOUFFLE_INT_TYPE], [int64_t])
AC_SUBST([SOUFFLE_BITS], [64])
fi

AC_OUTPUT([math.dl])
AC_OUTPUT([test.dl])
AC_OUTPUT([datetime.cpp])
