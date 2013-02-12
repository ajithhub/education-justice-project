=====================================
Windows Multipoint Installation steps
=====================================

Learn to `Install apps for RDS users`__

.. _rds_user_install: http://technet.microsoft.com/en-us/magazine/ff432698.aspx


Get the supporting files
-------------------------

Hp Support files, `Download the hp files`__

.. _HP_support_files: http://h20000.www2.hp.com/bizsupport/TechSupport/SoftwareIndex.jsp?lang=en&cc=us&prodNameId=5075943&prodTypeId=15351&prodSeriesId=5075942&swLang=8&taskId=135&swEnvOID=4107

__ HP_support_files_

vSpace server files, `Download the vspace files`__

.. _Vspace_files: http://www.ncomputing.com/files/downloads/6.6.2.3/vSpace_Server_6.6.2.3.zip
__ Vspace_files_

`Vspace install pdf`__

.. _Vspace_pdf: http://www.ncomputing.com/files/downloads/6.6.2.3/vSpace_Server_6.6.2.3_Release_Notes_2-23-12.pdf
__ Vspace_pdf_

Install steps
-----------------------



1. Install windows multipoint server 2011 from cd to first hard drive using whole disk

   a. At 1st login, create Administrator password (make sure you write down the password)
  

- Follow the Windows Multipoint Server Configuration Wizard
    - Choose a computer name: 
     - Configuration Options
uncheck:  Install updates automatically
uncheck:	Participate in the CEIP
uncheck:	Enable Windows Error Reporting
Install display driver
Click Finish
Computer will reboot
Computer fininshes rebooting
Computer will display display driver issue
Press any key
Login as Administrator
Open Windows Explorer 
Extract ProLiant Support Pack for Microsoft Windows Server 2008 R2 to a folder
          Double click on the Proliant support pack extractor: Psp-9.10.w2k8R2.x64.exe
Choose a new folder on the c: drive, such as c:/hp Proliant support pack
Navigate to the new folder
Open setup.exe
Maximize window so the next button displays
Press next
Source select should be local folder
Press next
Local source needs credentials
Click checkbox for localhost
Press enter credentials button
Login with admin account
Press ok
Once scan is complete, press next
Click on select bundles
Exams bundle tree to all package
Uncheck all packages
Check 
matrox G200eH video package(cp015976.exe)
HP Proliant PCI-Express power management update
HP NC-series Intel E1Q driver
HP Proliant iLO ¾ Management Driver
HP Proliant iLO ¾ Channel interface Driver
Tentative
HP network configuration utility
HP Proliant Smart Array event notification
HP Proliant Array configuration utility
Press tab 3 times to highlight to Ok Byron which is of screen
PressEnter (because you won’t see the save button)
Chick install button
Witty for installation to complete
Press "Reboot Now"
Remove any USB drives or CDs before continuing
Confirm reboot selection
          Wait for reboot


Follow the “Create a MultiPoint Server Station
Press B and login as Administrator
Verify Everyone user group is member of Remote Desktop Users group
Computer Management -> System tools -> Local User and Group -> Group -> Double click on Remote desktop User.
Set Power Option
Control Panel > Hardware > Power options > Select High Performance 
Windows 7 Theme
Follow instruction on the following PDF
http://www.ncomputing.com/kb/afile/297/261/
Install vsphere_management
Assign IP on the network 
Add role
DHCP server
DNS
parent domain: EJP.local
Prefered DNS server: 192.168.1.1
Wins is not required for application
DHCP Server
Local Addresses
192.168.1.100
192.168.1.199
255.255.255.0
No gateway

	
