i=$(xinput | grep "DELL09F5:00 04F3:30CB Touchpad")
j=$(xinput | grep "DELL Alienware 310M  ")
tp=$(echo ${i:41:11} | sed -r 's/^.{3}//')
ms=$(echo ${j:41:11} | sed -r 's/^.{3}//')
echo -n "Configuring touchpad..."
xinput set-prop $tp 298 1
echo -n "."
xinput set-prop $tp 328 0 > file 2>&1
echo -n "."
xinput set-prop $tp 309 -0.25 > file 2>&1
echo -n "."
echo "done"
echo -n "Configuring mouse..."
xinput set-prop $ms 309 -1 > file 2>&1
echo -n "."
echo "done"
