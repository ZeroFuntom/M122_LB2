#Generated Form Function
function GenerateForm {
########################################################################
# Code geschrieben von Dennis Schaeppi & Cassandra Corrodi
# Letzte Änderung am 18.06.2018
# Version 1.3.0
########################################################################

#region Import the Assemblies
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
#endregion


#Erzeuge alle Formular-Objekte
$form1 = New-Object System.Windows.Forms.Form
$btnGoogle = New-Object System.Windows.Forms.Button
$btnMail = New-Object System.Windows.Forms.Button
$btnTaskManager = New-Object System.Windows.Forms.Button
$btnExplorer = New-Object System.Windows.Forms.Button
$btnLock = New-Object System.Windows.Forms.Button
$btnRestart = New-Object System.Windows.Forms.Button
$btnSaveEnergy = New-Object System.Windows.Forms.Button
$lblTitle = New-Object System.Windows.Forms.Label
$btnTurnOff = New-Object System.Windows.Forms.Button
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState


#Klick auf "Energie sparen"
$btnSaveEnergy_OnClick= 
{
    rundll32.exe powrprof.dll,SetSuspendState 0,1,0 #Startet den Energiesparmodus mit powerprof.dll und Parameter "SetSuspendState"
}

#Klick auf "Windows Explorer"
$btnExplorer_OnClick= 
{
    Start explorer #Startet den Windows Explorer in der Bibliotheks-Ansicht (Standardmässig)
}

#Klick auf "Task Manager"
$btnTaskManager_OnClick= 
{
    Start taskmgr #Startet den Task Manager
}

#Klick auf "PC Ausschalten"
$btnTurnOff_OnClick= 
{
    shutdown.exe /s #Starte shutdown.exe mit Parameter s=Shutdown
}

#Klick auf "PC Sperren"
$btnLock_OnClick= 
{
    rundll32.exe user32.dll,LockWorkStation #Sperrt den PC mit user32.dll und Parameter "LockWorkStation"
}

#Klick auf "Standard Mailprogramm"
$btnMail_OnClick= 
{
    $node = Get-ItemProperty "HKLM:\Software\Classes\mailto\shell\open\command" #Windows Registry Pfad zu Standardmailprogramm
    $MailClient = $node.'(default)' #Objekt "(Standard)" mit Pfad zu Standardmailprogramm
    $MailPath = $MailClient.Split('"')[1] #Variable mit dem "blanken" Dateipfad

    Start-Process "$MailPath" #Starte das Standardmailprogramm
}

#Klick auf "Google Suche"
$btnGoogle_OnClick= 
{
    Invoke-Expression “cmd.exe /C start http://www.google.ch” #Öffne den Link per CMD (Standardprogramm wird automatisch ausgewählt
}

#Klick auf "Neustart"
$btnRestart_OnClick= 
{
    shutdown.exe /r #Starte shutdown.exe mit Parameter r=Restart
}

$OnLoadForm_StateCorrection=
{#Correct the initial state of the form to prevent the .Net maximized form issue
	$form1.WindowState = $InitialFormWindowState
}

########################################################################
# ENDE des Codes (Dennis Schaeppi & Cassandra Corrodi)
########################################################################


########################################################################
# Code erzeugt mit SAPIEN Technologies PrimalForms (Community Edition) v1.0.10.0
# Erzeugt von Dennis Schaeppi
# Erzeugt am 18.06.2018
########################################################################

#----------------------------------------------
#region Generated Form Code
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 397
$System_Drawing_Size.Width = 190
$form1.ClientSize = $System_Drawing_Size
$form1.DataBindings.DefaultDataSourceUpdateMode = 0
$form1.Name = "form1"
$form1.Text = "Win CP"
$form1.add_Load($handler_form1_Load)


$btnGoogle.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 23
$System_Drawing_Point.Y = 346
$btnGoogle.Location = $System_Drawing_Point
$btnGoogle.Name = "btnGoogle"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 37
$System_Drawing_Size.Width = 147
$btnGoogle.Size = $System_Drawing_Size
$btnGoogle.TabIndex = 8
$btnGoogle.Text = "Google Suche"
$btnGoogle.UseVisualStyleBackColor = $True
$btnGoogle.add_Click($btnGoogle_OnClick)

$form1.Controls.Add($btnGoogle)


$btnMail.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 23
$System_Drawing_Point.Y = 303
$btnMail.Location = $System_Drawing_Point
$btnMail.Name = "btnMail"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 37
$System_Drawing_Size.Width = 147
$btnMail.Size = $System_Drawing_Size
$btnMail.TabIndex = 7
$btnMail.Text = "Standard Mailprogramm"
$btnMail.UseVisualStyleBackColor = $True
$btnMail.add_Click($btnMail_OnClick)

$form1.Controls.Add($btnMail)


$btnTaskManager.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 23
$System_Drawing_Point.Y = 260
$btnTaskManager.Location = $System_Drawing_Point
$btnTaskManager.Name = "btnTaskManager"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 37
$System_Drawing_Size.Width = 147
$btnTaskManager.Size = $System_Drawing_Size
$btnTaskManager.TabIndex = 6
$btnTaskManager.Text = "Task Manager"
$btnTaskManager.UseVisualStyleBackColor = $True
$btnTaskManager.add_Click($btnTaskManager_OnClick)

$form1.Controls.Add($btnTaskManager)


$btnExplorer.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 23
$System_Drawing_Point.Y = 217
$btnExplorer.Location = $System_Drawing_Point
$btnExplorer.Name = "btnExplorer"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 37
$System_Drawing_Size.Width = 147
$btnExplorer.Size = $System_Drawing_Size
$btnExplorer.TabIndex = 5
$btnExplorer.Text = "Windows Explorer öffnen"
$btnExplorer.UseVisualStyleBackColor = $True
$btnExplorer.add_Click($btnExplorer_OnClick)

$form1.Controls.Add($btnExplorer)


$btnLock.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 23
$System_Drawing_Point.Y = 174
$btnLock.Location = $System_Drawing_Point
$btnLock.Name = "btnLock"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 37
$System_Drawing_Size.Width = 147
$btnLock.Size = $System_Drawing_Size
$btnLock.TabIndex = 4
$btnLock.Text = "PC Sperren"
$btnLock.UseVisualStyleBackColor = $True
$btnLock.add_Click($btnLock_OnClick)

$form1.Controls.Add($btnLock)


$btnRestart.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 23
$System_Drawing_Point.Y = 131
$btnRestart.Location = $System_Drawing_Point
$btnRestart.Name = "btnRestart"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 37
$System_Drawing_Size.Width = 147
$btnRestart.Size = $System_Drawing_Size
$btnRestart.TabIndex = 3
$btnRestart.Text = "Neustart"
$btnRestart.UseVisualStyleBackColor = $True
$btnRestart.add_Click($btnRestart_OnClick)

$form1.Controls.Add($btnRestart)


$btnSaveEnergy.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 23
$System_Drawing_Point.Y = 88
$btnSaveEnergy.Location = $System_Drawing_Point
$btnSaveEnergy.Name = "btnSaveEnergy"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 37
$System_Drawing_Size.Width = 147
$btnSaveEnergy.Size = $System_Drawing_Size
$btnSaveEnergy.TabIndex = 2
$btnSaveEnergy.Text = "Energiesparmodus"
$btnSaveEnergy.UseVisualStyleBackColor = $True
$btnSaveEnergy.add_Click($btnSaveEnergy_OnClick)

$form1.Controls.Add($btnSaveEnergy)

$lblTitle.DataBindings.DefaultDataSourceUpdateMode = 0
$lblTitle.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",15.75,0,3,1)

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 23
$System_Drawing_Point.Y = 10
$lblTitle.Location = $System_Drawing_Point
$lblTitle.Name = "lblTitle"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 30
$System_Drawing_Size.Width = 147
$lblTitle.Size = $System_Drawing_Size
$lblTitle.TabIndex = 1
$lblTitle.Text = "Control Panel"
$lblTitle.add_Click($handler_label1_Click)

$form1.Controls.Add($lblTitle)


$btnTurnOff.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 23
$System_Drawing_Point.Y = 45
$btnTurnOff.Location = $System_Drawing_Point
$btnTurnOff.Name = "btnTurnOff"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 37
$System_Drawing_Size.Width = 147
$btnTurnOff.Size = $System_Drawing_Size
$btnTurnOff.TabIndex = 0
$btnTurnOff.Text = "PC Ausschalten"
$btnTurnOff.UseVisualStyleBackColor = $True
$btnTurnOff.add_Click($btnTurnOff_OnClick)

$form1.Controls.Add($btnTurnOff)

#endregion Generated Form Code

#Save the initial state of the form
$InitialFormWindowState = $form1.WindowState
#Init the OnLoad event to correct the initial state of the form
$form1.add_Load($OnLoadForm_StateCorrection)
#Show the Form
$form1.ShowDialog()| Out-Null

} #End Function

#Call the Function
GenerateForm

########################################################################
# ENDE des Codes (SAPIEN Technologies PrimalForms (Community Edition) v1.0.10.0)
########################################################################
