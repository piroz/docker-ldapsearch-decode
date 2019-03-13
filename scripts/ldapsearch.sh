#!/bin/ash

ldapsearch $@ | python decorder.py