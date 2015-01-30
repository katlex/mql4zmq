#!/bin/bash

terminal=2010C2441A263399B34F537D91A53AC9
basedir=/c/Users/Administrator/AppData/Roaming/MetaQuotes/Terminal

mql4="$basedir/$terminal/MQL4"

libs="$mql4/Libraries"
includes="$mql4/Include"
experts="$mql4/Experts"

install() {
	cp mql4zmq.mqh "$includes"
	cp pre-compiled/libzmq.dll "$libs"
	cp pre-compiled/mql4zmq.dll "$libs"
	cp examples/mql4zmq_bridge.mq4 "$experts"
}

uninstall() {
	rm "$includes/mql4zmq.mqh"
	rm "$libs/libzmq.dll"
	rm "$libs/mql4zmq.dll"
	rm "$experts/mql4zmq_bridge.mq4"
}

list() {
	ls $basedir
}

case $1 in
-d) uninstall ;;
-l) list ;;
*) install ;;
esac

