#!/bin/bash
OUTPUT="setup_verify.txt"
echo "============================================================" > $OUTPUT
echo "       FOUNDATIONS LAB - ENVIRONMENT VERIFICATION          " >> $OUTPUT
echo "============================================================" >> $OUTPUT
echo "" >> $OUTPUT
echo "Verification Date : $(date)" >> $OUTPUT
echo "Hostname          : $(hostname)" >> $OUTPUT
echo "Current User      : $(whoami)" >> $OUTPUT
echo "Home Directory    : $HOME" >> $OUTPUT
echo "" >> $OUTPUT
echo "------------------------------------------------------------" >> $OUTPUT
echo " GIT" >> $OUTPUT
echo "------------------------------------------------------------" >> $OUTPUT
if command -v git &> /dev/null; then
    echo "Status  : INSTALLED" >> $OUTPUT
    git --version >> $OUTPUT
else
    echo "Status  : NOT FOUND" >> $OUTPUT
fi
echo "" >> $OUTPUT
echo "------------------------------------------------------------" >> $OUTPUT
echo " PYTHON" >> $OUTPUT
echo "------------------------------------------------------------" >> $OUTPUT
if command -v python3 &> /dev/null; then
    echo "Status  : INSTALLED" >> $OUTPUT
    python3 --version >> $OUTPUT
else
    echo "Status  : NOT FOUND" >> $OUTPUT
fi
echo "" >> $OUTPUT
echo "============================================================" >> $OUTPUT
echo " VERIFICATION COMPLETE" >> $OUTPUT
echo "============================================================" >> $OUTPUT
echo "✅ Done! Results saved to: $OUTPUT"
