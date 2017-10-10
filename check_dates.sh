#!/bin/bash
sed -En 's!.*/\*([^\*]+)\*/ ([0-9]{10}).*!if [[ "\2" -eq "`date -d "\1" +%s`" ]]; then echo \1 OK ; else echo \1 SHUOLD BE `date -d "\1" +%s` ; fi!p' contracts/*.sol | bash
