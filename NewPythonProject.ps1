$ProjectName = Read-Host "Please Enter the name of Project you want to create."

function MakeRoot($a_ProjectName){
    mkdir $a_ProjectName
}

function MakeVenv() {
    python -m venv env
}

MakeRoot($ProjectName)
Set-Location $ProjectName
Write-Output "Making Python Virtual Environment"
MakeVenv
Set-Location ..

Write-Output "Project $ProjectName created."