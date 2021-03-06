#!/usr/bin/env bash

# https://www.ibm.com/developerworks/community/wikis/home?lang=en#!/wiki/Tivoli+Endpoint+Manager/page/Common+File+Locations
QNAPATH="./qna"

#if [ -f '/Program Files (x86)/BigFix Enterprise/BES Client' ]; then
#  QNAPATH="/Program Files (x86)/BigFix Enterprise/BES Client/qna"
#fi

if [ -f /opt/BESClient/bin/qna ]; then
  QNAPATH="/opt/BESClient/bin/qna"
fi

if [ -f /Library/BESAgent/BESAgent.app/Contents/MacOS/QnA ]; then
  QNAPATH="/Library/BESAgent/BESAgent.app/Contents/MacOS/QnA"
fi

$QNAPATH -showtypes
