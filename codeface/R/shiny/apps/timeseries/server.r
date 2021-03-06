#! /usr/bin/env Rscript

## This file is part of Codeface. Codeface is free software: you can
## redistribute it and/or modify it under the terms of the GNU General Public
## License as published by the Free Software Foundation, version 2.
##
## This program is distributed in the hope that it will be useful, but WITHOUT
## ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
## FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
## details.
##
## You should have received a copy of the GNU General Public License
## along with this program; if not, write to the Free Software
## Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
##
## Copyright 2013 by Siemens AG, Wolfgang Mauerer <wolfgang.mauerer@siemens.com>
## All Rights Reserved.

source("../common.server.r", chdir=TRUE)
shinyServer(detailPage("timeseries", c("widget.timeseries.messages.per.day"),
    additional.input = list(
        smooth = radioButtons("smooth", "Smoothing window size",
                        choices = c("None" = 0,
                                    "Weekly" = 1,
                                    "Monthly" = 2)),
        transform = radioButtons("transform", "Transformation",
                        choices = c("Normal" = 0,
                                    "Logarithmic" = 1,
                                    "Square root" = 2))
      )
    )
)
