if [ "$1" != "-h" -a "$1" != "--help" ] ;then
    SCRIPT_DIR=$(cd $(dirname $0); pwd)
    echo "[EXECUTED] echo \"export EXGDBPATH=$SCRIPT_DIR\" | sudo tee -a ~/.bashrc"
    echo "export EXGDBPATH=$SCRIPT_DIR" | sudo tee -a ~/.bashrc
    echo "[EXECUTED] echo \"export PATH=\\\$PATH:\\\$EXGDBPATH/bin\" | sudo tee -a ~/.bashrc"
    echo "export PATH=\$PATH:\$EXGDBPATH/bin" | sudo tee -a ~/.bashrc
    echo "[EXECUTED] echo \"source $SCRIPT_DIR/gdbinit.py\" | sudo tee -a ~/.gdbinit"
    echo "source $SCRIPT_DIR/gdbinit.py" | sudo tee -a ~/.gdbinit
    echo ""
    echo "[!] Please execute this command: source ~/.bashrc"
    echo ""
else
    echo "Usage: install.sh [-h|--help]"
fi
