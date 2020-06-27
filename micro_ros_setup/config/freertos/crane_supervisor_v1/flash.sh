EXTENSIONS_DIR=$FW_TARGETDIR/cranesupervisor

pushd $EXTENSIONS_DIR > /dev/null

#TODO: fix into st-link

  if [ -f build/cranesupervisor.bin ]; then
    echo "Flashing firmware for $RTOS platform $PLATFORM"
    st-flash --reset write build/cranesupervisor.bin 0x8000000
  else
    echo "build/cranesupervisor.bin not found: please compile before flashing."
  fi

popd > /dev/null
