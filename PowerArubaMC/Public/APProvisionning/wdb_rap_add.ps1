#
# Copyright 2019, Alexis La Goutte <alexis dot lagoutte at gmail dot com>
#
# SPDX-License-Identifier: Apache-2.0
#

function Add-ArubaMCWdbRapAdd {

    <#
        .SYNOPSIS
        Add Whitelist RAP on Aruba Mobility Controller

        .DESCRIPTION
        Add Whitelist RAP entries

        .EXAMPLE
        Add-ArubaMCWdbRapAdd -address 01:02:03:04:05:06 -ap_group default

        This function give you the result of output of cmd parameter

    #>

    Param(
        [Parameter (Mandatory = $true)]
        [string]$address,
        [Parameter (Mandatory = $true)]
        [string]$ap_group
    )

    Begin {
    }

    Process {


        $uri = "v1/configuration/object/wdb_rap_add"

        $body = @{
            "address" = $address
            "ap_group" = $ap_group
        }

        $response = Invoke-ArubaMCRestMethod -uri $uri -method 'POST' -body $body

        $response
    }

    End {
    }
}
