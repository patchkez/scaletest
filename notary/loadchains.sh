#!/bin/bash
cd ..
./setchains $1 $2
./make7776 #1 $2
./sync_assets
