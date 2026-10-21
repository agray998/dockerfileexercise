#!/bin/bash
curl -L -XPOST -d@data.json -H "Content-Type: application/json" http://localhost:80/add
