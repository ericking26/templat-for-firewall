#!/usr/bin/env bash
__ScriptVersion=".11"

#===  FUNCTION  ================================================================
#         NAME:  usage
#  DESCRIPTION:  Display usage information.
#===============================================================================
function usage ()
{
        cat <<- EOT

  Usage :  $0 [options] [--] 

  Options: 
  -h|help       Display this message
  -v|version    Display script version

EOT
}    # ----------  end of function usage  ----------

#-----------------------------------------------------------------------
#  Handle command line arguments
#-----------------------------------------------------------------------

while getopts ":hv" opt
do
  case  in

    h|help     )  usage; exit 0   ;;

    v|version  )  echo "$0 -- Version "; exit 0   ;;

    \? )  echo -e "\n  Option does not exist : \n"
          usage; exit 1   ;;

  esac    # --- end of case ---
done
shift $((-1))
    #statements
done
