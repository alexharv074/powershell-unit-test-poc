#!/usr/bin/env pwsh

$PSScriptRoot = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition

BeforeAll {
  . "$PSScriptRoot/../Get-Planet.ps1"
}

Describe 'Get-Planet' {
  It 'Given no parameters, it lists all 8 planets' {
    $allPlanets = Get-Planet
    $allPlanets.Count | Should -Be 8
  }
}
