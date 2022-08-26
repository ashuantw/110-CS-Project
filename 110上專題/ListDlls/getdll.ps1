# Place this script under ListDll
# Download ListDLL first: https://docs.microsoft.com/en-us/sysinternals/downloads/listdlls
#
# Run getdll "cmd", e.g. `getdll "net user"`
#
function getdll {
  param ($cmd)
  
  $job_id = (Start-Job -ScriptBlock {
    Set-Location $using:PWD;
    while (1) {
      $real_cmd = $using:cmd;
      $cmd = $real_cmd.split(" ")[0];
      $out=$(.\Listdlls.exe $cmd);
      if ($out -Match "No matching processes") { continue;}
      if ($out -Match $cmd) { break; }
    }; 
    echo $out
  }).Id;
  
  while (1) {
    Invoke-Expression $cmd | out-null;
    $result=$(Receive-Job $job_id);
    if ($result.Length -ne 0) { echo $result; break; }
  }
}