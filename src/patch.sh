#!/usr/bin/bash
#  
#  Copyright 2015 Matteo Alessio Carrara <sw.matteoac@gmail.com>
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#

ARGC="$#"

if [ $ARGC -ne "2" ]
then
	echo "Uso: $0 apk_full_path patch_dir"
	exit 1
fi

apk=$1
patch_dir=$2

# Il percorso relativo deve essere ./ per questa directory,
# altrimenti "zip" non funziona come previsto
cd "$patch_dir"

# Sostituisce i file nello zip con quelli nella directory
# FIXME: "$apk" deve essere il percorso assoluto!!
# Il precedente "cd" rompe il percorso relativo!
# TODO: se "$apk" è un percorso relativo, aggiungere il prefisso
zip -r "$apk" .
