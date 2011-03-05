#!/bin/sh

srcdir=$(dirname "${0}")
[ -z "${srcdir}" ] && srcdir=.

set -e
( cd "${srcdir}" && autoreconf -v -i )
"${srcdir}"/configure "${@}"
