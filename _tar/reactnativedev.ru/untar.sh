cd this_dir
tar czpvf - reactnativedev_ru/ | split -d -b 100M - reactnativedev_ru
cat reactnativedev_ru* | tar xzpvf -
