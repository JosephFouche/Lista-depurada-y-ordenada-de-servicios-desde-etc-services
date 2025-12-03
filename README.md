# Lista-depurada-y-ordenada-de-servicios-desde-etc-services

Instructions
Case Scenario
A staff member has requested a list of the names of the services recognized by the current Linux image. A file named /etc/services has been located that contains the pertinent information; however it is not organized to easily determine all of the services.
Using a combination of pipes, redirects and control statements, produce output that contains only the service names. The entire task must be accomplished without using any intermediary files. Each service should only be listed once and captured to a file named uniqueservices.txt, located in the home directory. Remove any blank lines or lines that are deemed to be comments.
There could be more than one possible solution for obtaining the desired results.
Objectives
Extract all the service names from the file.
Sort the names alphabetically removing any duplicates.
Remove any blank lines or lines that do not begin with a letter of the alphabet.
Capture the final output to a file named uniqueservices.txt.
Count the lines in the file using a conditional command that is only executed if the previous combined commands are successful.
Curriculum Resources
Module 5 - Command Line Skills
Module 6 - Getting Help
Module 7 - Navigating the Filesystem
Module 10 - Working with Text
 
Deliverables
Provide the final command line for successful completion.
The final result should match the following:

 340 uniqueservices.txt                                                          
sysadmin@localhost:~$ head uniqueservices.txt                                   
acr-nema                                                                        
afbackup                                                                        
afmbackup                                                                       
afpovertcp                                                                      
afs3-bos                                                                        
afs3-callback                                                                   
afs3-errors                                                                     
afs3-fileserver                                                                 
afs3-kaserver                                                                   
afs3-prserver 
sysadmin@localhost:~$ tail uniqueservices.txt                                   
zabbix-trapper                                                                  
zebra                                                                           
zebrasrv                                                                        
zephyr-clt                                                                      
zephyr-hm                                                                       
zephyr-srv                                                                      
zip                                                                             
zope                                                                            
zope-ftp                                                                        
zserv


🎯 Objetivo de la Tarea

Extraer una lista limpia y única de los nombres de los servicios del sistema Linux.
📝 Resumen de Pasos

    Filtrar el Archivo: Tomar el archivo /etc/services y eliminar todas las líneas de comentarios (las que empiezan con #) y las líneas en blanco, dejando solo las entradas de servicios válidas.

    Extraer Nombres: De esas líneas válidas, tomar solo la primera palabra (que es el nombre del servicio).

    Limpiar y Ordenar: Ordenar alfabéticamente esos nombres y eliminar cualquier duplicado, asegurando que cada servicio aparezca solo una vez.

    Guardar el Resultado: Guardar la lista final y limpia de nombres de servicios en un archivo llamado uniqueservices.txt en tu directorio personal (~/).

    Contar (Condicional): Si todos los pasos anteriores se realizaron con éxito, contar cuántas líneas (servicios) tiene el archivo final.



# Solucion
Filtro de Líneas (Paso 1)	grep -E '^[a-zA-Z]'
Extracción de Servicio (Paso 2)	awk '{print $1}'
Ordenamiento y Unicidad (Paso 3)	sort -u
Salida a Archivo (Paso 4)	> ~/uniqueservices.txt
Conteo Condicional (Paso 5)	&& wc -l ~/uniqueservices.txt


