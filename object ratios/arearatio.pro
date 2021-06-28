	PRO arearatio, objname
;
;
;
	objfile		= ""
	objfile2	= ""
	objfile		= './'+objname+'/'+objname+'data.txt'
	objfile2	= './'+objname+'/'+objname+'data2.txt'
;
	datatemp	= ascii_template(objfile)
	datatemp2	= ascii_template(objfile2)         
;
	data 		= read_ascii(objfile,template=datatemp)
	x1 		= data.field1
	y1 		= data.field2
	xl1 		= data.field3
	yl1		= data.field4
;
	data2		= read_ascii(objfile2,template=datatemp2)
	x2		= data2.field1
	y2		= data2.field2
	xl2		= data2.field3
	yl2		= data2.field4
;
	area1		= tsum(x1,y1)
	areal1		= tsum(xl1,yl1)
	area2		= tsum(x2,y2)
	areal2		= tsum(xl2,yl2)
;
	areabig		= areal1-area1
	areasmall	= areal2-area2
	arearatio	= areasmall/areabig
;
	print, 'areabig = ', areabig
	print, 'areasmall = ', areasmall
	print, 'ratio = ', arearatio
;
;
;
	END
