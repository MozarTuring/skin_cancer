source ${jwHomePath}/common_tools/createEnv.sh 3.10
if [ $file_typ == "sh" ]; then

    if [ $1 == "cre" ]; then
        rm condaenv.tar.gz
        pip install conda-pack
        conda pack -p aaaMjw_TMP/condaenv # source aaaMjw_TMP/condaenv/bin activate
        echo "env created"
    fi

    # pip install -r jwmaoR.txt
    pip install numpy==1.26.4

    pip freeze > jwmaoV.txt
    echo "packages installed"
else
    echo "env ready"
fi

# $jwrun skin_cancer/jwmaoR.sh cre
