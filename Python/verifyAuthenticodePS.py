
# NOTE: This is Windows Only - tested in Python2.7.1
# https://twitter.com/jgstew/status/1011657455275610112
# https://github.com/jgstew/tools/blob/master/CMD/PS_VerifyFileSig.bat
# https://github.com/jgstew/tools/blob/master/Python/verifyAuthenticode.py

# powershell -ExecutionPolicy Bypass -command "(Get-AuthenticodeSignature \"C:\Windows\explorer.exe\").Status -eq 'Valid'"
import subprocess
import sys

sFileName = r"C:\Windows\explorer.exe"
# TODO: use `-ExecutionPolicy Bypass` somehow
# https://stackoverflow.com/questions/21944895/running-powershell-script-within-python-script-how-to-make-python-print-the-pow
psResult = subprocess.Popen( ["powershell", r'(Get-AuthenticodeSignature "' + sFileName + r'").Status -eq "Valid"'], stdout=sys.stdout )
psResult.communicate()


# This will output `True` if the signature is valid.
