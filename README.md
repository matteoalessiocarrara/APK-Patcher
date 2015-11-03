# APK Patcher #

Sostituisce dei file in un APK

## Sintassi ##

```
file.sh apk_full_path patch_dir
```

 * **apk_full_path** è il **PERCORSO ASSOLUTO**  dell'apk. Attualmente non funziona con percorsi relativi.
 * **patch_dir** è una directory la cui root corrisponde alla root dell'apk

## Esempio ##

Se questi sono test.apk e patch_dir:

test.apk/  
	file.txt  
	file2.jpg  
  
patch_dir/  
	file.txt  
  
Usando questo script, *test.apk/file.txt* verrà sostituito con *patch_dir/file.txt*

## Altre informazioni ##

> This is the Unix philosophy: Write programs that do one thing and do it well. Write programs to work together. Write programs to handle text streams, because that is a universal interface.  

Aggiornamenti: [GitHub] (https://github.com/matteoalessiocarrara)  
Email: sw.matteoac@gmail.com