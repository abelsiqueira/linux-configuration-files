# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

setterm -blength 0

export PATH="/usr/local/MATLAB/R2010b/bin:/usr/local/bin:$PATH"
export PATH="/usr/local/eclipse:/usr/local/android-sdk-linux_x86/tools:/usr/local/android-sdk-linux-x86/platform-tools:$PATH"

export EDITOR="vim"

#### CUTEr and SifDec
export ROOTCUTER="$HOME/Libraries/CUTEr"

export CUTER="$ROOTCUTER/cuter2"
export MYCUTER="$CUTER/CUTEr.large.pc.lnx.gfo"

export SIFDEC="$ROOTCUTER/sifdec2"
export MYSIFDEC="$SIFDEC/SifDec.large.pc.lnx.gfo"

export MASTSIF="$ROOTCUTER/mastsif"
export MANPATH="$CUTER/common/man:$SIFDEC/common/man:$MANPATH"
export PATH="$MYCUTER/bin:$MYSIFDEC/bin:$PATH"
#### End of SifDec

#### Libraries
export GOTOBLASDIR="$HOME/Libraries/GotoBLAS2"
export GOTOBLASLIBS="$GOTOBLASDIR/libgoto2.a $GOTOBLASDIR/libgoto2.so -lgfortran -lgfortranbegin"

LIBSDIR="$HOME/Libraries"
METISDIR="${LIBSDIR}/metis"
TIMDAVISDIR="${LIBSDIR}"
CHOLMODDIR="$TIMDAVISDIR/CHOLMOD"
AMDDIR="$TIMDAVISDIR/AMD"
CAMDDIR="$TIMDAVISDIR/CAMD"
COLAMDDIR="$TIMDAVISDIR/COLAMD"
CCOLAMDDIR="$TIMDAVISDIR/CCOLAMD"
UFCONFIGDIR="$TIMDAVISDIR/UFconfig"
BMDIR="$LIBSDIR/base_matrices"
FHDIR="$LIBSDIR/functions"
CONJGRADDIR="$LIBSDIR/conjgrad"
DCICPPDIR="$LIBSDIR/dcicpp"
DCICPPEQDIR="$LIBSDIR/dcicppeq"

TIMDAVISLIB="$CHOLMODDIR/Lib:$AMDDIR/Lib:$CAMDDIR/Lib:$COLAMDDIR/Lib:$CCOLAMDDIR/Lib"
METISLIB="$METISDIR"
BMLIB="$BMDIR/Lib"
FHLIB="$FHDIR/Lib"
CONJGRADLIB="$CONJGRAD"
CUTERLIB="$MYCUTER/double/lib"
DCICPPLIB="$DCICPPDIR/Lib"
DCICPPEQLIB="$DCICPPEQDIR/Lib"

TIMDAVISI="$CHOLMODDIR/Include:$UFCONFIGDIR"
METISI="$METISDIR/Lib"
BMI="$BMDIR/Include"
FHI="$FHDIR/Include"
CONJGRADI="$CONJGRAD"
CUTERI="$CUTER/common/include"
DCICPPI="$DCICPPDIR/Include"
DCICPPEQI="$DCICPPEQDIR/Include"

export LD_LIBRARY_PATH="$TIMDAVISLIB:$METISLIB:$BMLIB:$FHLIB:$CONJGRADLIB:$CUTERLIB:$GOTOBLASDIR:$DCICPPLIB:$DCICPPEQLIB"
export LIBRARY_PATH="$TIMDAVISLIB:$METISLIB:$BMLIB:$FHLIB:$CONJGRADLIB:$CUTERLIB:$GOTOBLASDIR:$DCICPPLIB:$DCICPPEQLIB"
export LIBPATH="$TIMDAVISLIB:$METISLIB:$BMLIB:$FHLIB:$CONJGRADLIB:$CUTERLIB:$GOTOBLASDIR:$DCICPPLIB:$DCICPPEQLIB"
export CPLUS_INCLUDE_PATH="$TIMDAVISI:$METISI:$BMI:$FHI:$CONJGRADI:$CUTERI:$DCICPPI:$DCICPPEQI"
export C_INCLUDE_PATH="$TIMDAVISI:$METISI:$BMI:$FHI:$CONJGRADI:$CUTERI:$DCICPPI:$DCICPPEQI"
export INCLUDE_PATH="$TIMDAVISI:$METISI:$BMI:$FHI:$CONJGRADI:$CUTERI:$DCICPPI:$DCICPPEQI"
####

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

#startupdraw $LINES $COLUMNS ~/startupscript.sh
#chmod +x ~/startupscript.sh
#~/startupscript.sh
#rm -f ~/startupscript.sh

#echo "#   #  #####  #      #       ###  "
#echo "#   #  #      #      #      #   # "
#echo "#   #  #      #      #      #   # "
#echo "#####  #####  #      #      #   # "
#echo "#   #  #      #      #      #   # "
#echo "#   #  #      #      #      #   # "
#echo "#   #  #####  #####  #####   ###  "
#echo "                           "
#echo " ###   ####   #####  #     "
#echo "#   #  #   #  #      #     "
#echo "#   #  #   #  #      #     "
#echo "#####  ####   #####  #     "
#echo "#   #  #   #  #      #     "
#echo "#   #  #   #  #      #     "
#echo "#   #  ####   #####  ##### "
#echo "                           "

date
PS1='\[\e[1;37m\]\w\$\[\e[0m\] '
