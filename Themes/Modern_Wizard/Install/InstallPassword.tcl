## $Id$
##
## BEGIN LICENSE BLOCK
##
## Copyright (C) 2002  Damon Courtney
## 
## This program is free software; you can redistribute it and/or
## modify it under the terms of the GNU General Public License
## version 2 as published by the Free Software Foundation.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License version 2 for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program; if not, write to the
##     Free Software Foundation, Inc.
##     51 Franklin Street, Fifth Floor
##     Boston, MA  02110-1301, USA.
##
## END LICENSE BLOCK

proc CreateWindow.InstallPassword { wizard id } {
    CreateWindow.CustomBlankPane2 $wizard $id

    set base [$id widget get ClientArea]

    grid rowconfigure    $base 0 -weight 1
    grid columnconfigure $base 0 -weight 1

    set frame [frame $base.frame]
    grid $frame -row 0 -column 0 -sticky new -padx 10

    grid rowconfigure    $frame 0 -weight 1
    grid columnconfigure $frame 0 -weight 1

    ttk::entry $frame.passwordE -textvariable ::info([$id get VirtualText])
    grid $frame.passwordE -row 0 -column 0 -sticky new
    $id widget set PasswordEntry -widget $frame.passwordE -type entry

    if {[$id get HidePassword]} {
        $frame.passwordE configure -show *
    }
}
