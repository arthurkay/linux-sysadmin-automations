# Author: Arthur Kalikiti
# Python code for deleting database old databases.
# Email: arthur@kalikiti.net

import os
import sys

def arguments():
    args = sys.argv

    if ( len( args ) != 3 ):
        print( 'Invalid number of arguments, try: \n')
        print( 'delete.py <num> -- For files older than <num> days in <dir> directory' )
        sys.exit()

    elif ( len( args ) == 3 ):
        #Great, lets delete old data
        delete( args[1], args[2] )

    else:
        print( 'Unexpected error: \n' )
        print( 'delete.py <num> <dir> -- For files older than <num> days in <dir> directory' )

def delete( days, directory ):
    cmd = 'find ' + directory + ' -type f -mtime +' + days + ' -ls' 
    os.system( cmd )

arguments()