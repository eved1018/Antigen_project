#/usr/bin/env python

import sys
import MultipartPostHandler, urllib2, cookielib

cookies = cookielib.CookieJar()
opener = urllib2.build_opener(urllib2.HTTPCookieProcessor(cookies),
                                MultipartPostHandler.MultipartPostHandler)
params = { "submitter" : sys.argv[1],\
	   "emailAddr" : sys.argv[2],\
	   "pChain" : sys.argv[3],\
           "userfile" : open(sys.argv[4], "rb")\
	  }
print(opener.open("https://pipe.rcc.fsu.edu/cgi-bin/meta-ppisp/run", params).read())


