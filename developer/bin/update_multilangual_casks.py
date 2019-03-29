#!/usr/bin/python
# -*- coding: UTF-8 -*-
import sys
import urllib2
import hashlib


def getsha(url, version, language):
    url = url.replace("#{version}", version)
    url = url.replace("#{language}", language)
    response = urllib2.urlopen(url)
    download = response.read()
    if len(download) < 100000:
        raise Exception('it seems the download failed')
    m = hashlib.sha256()
    m.update(download)
    return m.hexdigest()


if (len(sys.argv)) is not 3 or "-h" in sys.argv or "--help" in sys.argv:
    print "usage: " + sys.argv[0] + " <cask.rb> <new-version>"
    print "for example: " + sys.argv[0] + " /usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask/Casks/firefox.rb 66.0"
    sys.exit(1)

fe = open(sys.argv[1])
cask = fe.read()

url = cask.split("  url \"")[1].split("\"")[0]
version = sys.argv[2]

for line in cask.split("\n"):
    if line.startswith("  version '"):
        print "  version '" + version + "'"
    elif line.startswith("    sha256 '"):
        language = cask.split(line)[1].split("'")[1].split("'")[0]
        print "    sha256 '" + getsha(url, version, language) + "'"
    else:
        print line
