# Copyright 2011 <chaishushan@gmail.com>. All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.

include $(GOROOT)/src/Make.inc

TARG=opencv

GOFILES=\
	opencv.go

CGOFILES=\
	cxtype.go\
	cxcore.go\
	cv.go\
	highgui.go

include $(GOROOT)/src/Make.pkg

%: install %.go
	$(GC) $*.go
	$(LD) -o $@ $*.$O

