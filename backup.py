# Author: Arthur Kalikiti
# Python code for backing up database.
# Email: arthur@kalikiti.net

import sys
import os

def db_backup( host, user, password, db, dir ):
    #Code for backing up database
    print( 'Initiating Database Backup...\n' )
    cmd = 'mysqldump -u' + user + ' -h ' + host + ' -p' + password + ' ' + db + ' > ' + dir 
    os.system( cmd )

def arguments():
    arguments = sys.argv
    argscount = len( sys.argv )
    
    if (  argscount != 11 ):
        print( 'Invalid number of parameters, type: \nbackup.py -h <host> -u <username> -p <password> -d <database> -l <dump location>' )

    elif ( argscount == 11 ):
        host = arguments[ arguments.index( '-h' ) + 1 ]
        user = arguments[ arguments.index( '-u' ) + 1 ]
        password = arguments[ arguments.index( '-p' ) + 1 ]
        db = arguments[ arguments.index( '-d' ) + 1 ]
        dir = arguments[ arguments.index( '-l' ) + 1 ]

        #Now call the database backup function
        db_backup( host, user, password, db, dir )

    else:
        print( 'Invalid action performed, type: \nbackup.py -h <host> -u <username> -p <password> -d <database> -l <dump location>' )

arguments()