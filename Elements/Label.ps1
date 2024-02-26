
<#PSScriptInfo

.VERSION 1.0.0

.GUID d8e9ad45-958c-4de1-88ae-5c86412b79ea

.AUTHOR Alexander@SutterStudios.com

.COMPANYNAME SutterStudios

.COPYRIGHT (c) 2024 Alexander@SutterStudios.com. All rights reserved.

.TAGS Windows Forms Element Label

.LICENSEURI

.PROJECTURI https://github.com/sutter12/PowerShell_GUI

.ICONURI

.EXTERNALMODULEDEPENDENCIES 

.REQUIREDSCRIPTS

.EXTERNALSCRIPTDEPENDENCIES

.RELEASENOTES


.PRIVATEDATA
Created: 02/25/2024
PowerShell Version: 5.1

#>

<# 

.DESCRIPTION 
 Label. A Windows form element 

#> 

# Microsoft Documentation on 'Label': https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.label?view=windowsdesktop-8.0

# Load assemblies (Standard for any form)
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Label (Basics to make it actually work)
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "Hello World!!! This is extra text for the label to test the AutoEllipsis method to the Label class"
$Label.AutoSize = $true # Default = $false. Gets or sets a value indicating whether the control is automatically resized to display its entire contents.
$Label.Location = New-Object Drawing.Point(10,10)

# Label Options
# $Label.ForeColor = [System.Drawing.Color]::Black # Default is black
# $Label.AutoEllipsis = $true # Default = $false. Gets or sets a value indicating whether the ellipsis character (...) appears at the right edge of the Label, denoting that the Label text extends beyond the specified length of the Label.
# $Label.BackgroundImage # Gets or sets the image rendered on the background of the control.
# $Label.BorderStyle # Gets or sets the border style for the control.
# $Label.CreateParams # Gets the required creation parameters when the control handle is created.
# $Label.DefaultImeMode # Gets the default Input Method Editor (IME) mode supported by this control.


# Create a form object (Standard for any form)
$Form = New-Object System.Windows.Forms.Form
$Form.Text = "Label Example" # form title

# Add GUI element(s) to the form
$Form.Controls.add($Label)

# Load form
$Form.Add_Shown({$Form.Activate()})
$Form.ShowDialog()


