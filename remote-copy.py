# Author: Arthur Kalikiti
# Python code for backing up database.
# Email: arthur@kalikiti.net

import sys
import os

def remote_copy( host, port, dir, ldir ):
    cmd = 'scp ' + host + ':' + dir + ' ' +  ldir
    print( cmd )
    os.system( cmd )

def run():

    if ( len( sys.argv ) != 9 ):
        print( 'Invalid command, please type:' )
        print( 'remote-copy.py -h <user@host> -p <port> -d <dir> -f <local directory>' )
    
    elif ( len( sys.argv ) == 9 ):
        args = sys.argv
        
        host = args[ args.index( '-h' ) + 1 ]
        port = args[ args.index( '-p' ) + 1 ]
        dir = args[ args.index( '-d' ) + 1 ]
        ldir = args[ args.index( '-f' ) + 1 ]

        remote_copy( host, port, dir, ldir )
    
    else:
        print( 'Invalid command, please type:' )
        print( 'remote-copy.py -h <user@host> -p <port> -d <dir> -f <local directory>' )

run()
