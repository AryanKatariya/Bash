# encoding=utf8
def banner_bash(bannerstring):

    length= len(bannerstring)
    i = 0
    _str = ""
    
    while ( i < 2 ):
        j = 0
        while (j < length):
        
            char = bannerstring[j].lower()

            if ( i == 0 ):
                if ( char == "0" ):_str+=" █▀█"
                elif ( char == "1" ):_str+=" ▄█"
                elif ( char == "2" ):_str+=" ▀█"
                elif ( char == "3" ):_str+=" █▀▀"
                elif ( char == "4" ):_str+=" █░█"
                elif ( char == "5" ):_str+=" █▀"
                elif ( char == "6" ):_str+=" █▄▄"
                elif ( char == "7" ):_str+=" ▀▀█"
                elif ( char == "8" ):_str+=" █▀█"
                elif ( char == "9" ):_str+=" █▀█"

                elif ( char == "a" ):_str+=" ▄▀█"
                elif ( char == "b" ):_str+=" █▄▄"
                elif ( char == "c" ):_str+=" █▀▀"
                elif ( char == "d" ):_str+=" █▀▄"
                elif ( char == "e" ):_str+=" █▀▀"
                elif ( char == "f" ):_str+=" █▀▀"
                elif ( char == "g" ):_str+=" █▀▀"
                elif ( char == "h" ):_str+=" █░█"
                elif ( char == "i" ):_str+=" █"
                elif ( char == "j" ):_str+=" ░░█"
                elif ( char == "k" ):_str+=" █▄▀"
                elif ( char == "l" ):_str+=" █░░"
                elif ( char == "m" ):_str+=" █▀▄▀█"
                elif ( char == "n" ):_str+=" █▄░█"
                elif ( char == "o" ):_str+=" █▀█"
                elif ( char == "p" ):_str+=" █▀█"
                elif ( char == "q" ):_str+=" █▀█"
                elif ( char == "r" ):_str+=" █▀█"
                elif ( char == "s" ):_str+=" █▀"
                elif ( char == "t" ):_str+=" ▀█▀"
                elif ( char == "u" ):_str+=" █░█"
                elif ( char == "v" ):_str+=" █░█"
                elif ( char == "w" ):_str+=" █░█░█"
                elif ( char == "x" ):_str+=" ▀▄▀"
                elif ( char == "y" ):_str+=" █▄█"
                elif ( char == "z" ):_str+=" ▀█"

                elif ( char == "+" ):_str+=" ▄█▄"
                elif ( char == "-" ):_str+=" ▄▄"
                elif ( char == "*" ):_str+=" █ █"
                elif ( char == "/" ):_str+=" ░░▄▀"
                elif ( char == "=" ):_str+=" ▀▀"
                elif ( char == "." ):_str+=" ░"
               #elif ( char == "<" ):_str+=" "
               #elif ( char == ">" ):_str+=" "
                elif ( char == "%" ):_str+=" ▀░▄▀"
               #elif ( char == "^" ):_str+=" "

                elif ( char == "!" ):_str+=" █"             
                elif ( char == "?" ):_str+=" ▀█"
                elif ( char == ":" ):_str+=" ▀"
                elif ( char == ";" ):_str+=" ░▀"
                elif ( char == "$" ):_str+=" █▄"
               #elif ( char == "@" ):_str+="  "
                elif ( char == "," ):_str+=" ░"
               #elif ( char == "&" ):_str+=" "
                elif ( char == "'" ):_str+=" ▀"
                elif ( char == "[" ):_str+=" █▀"
                elif ( char == "]" ):_str+=" ▀█"
                elif ( char == "#" ):_str+=" ▄█▄█▄"
                
                elif ( char == " " ):_str+="   "
                
            if ( i == 1 and j == 0 ):_str+="\n"

            if ( i == 1 ):
                if ( char == "0" ):_str+=" █▄█"
                elif ( char == "1" ):_str+=" ░█"
                elif ( char == "2" ):_str+=" █▄"
                elif ( char == "3" ):_str+=" ██▄"
                elif ( char == "4" ):_str+=" ▀▀█"
                elif ( char == "5" ):_str+=" ▄█"
                elif ( char == "6" ):_str+=" █▄█"
                elif ( char == "7" ):_str+=" ░░█"
                elif ( char == "8" ):_str+=" ███"
                elif ( char == "9" ):_str+=" ▀▀█"

                elif ( char == "a" ):_str+=" █▀█"
                elif ( char == "b" ):_str+=" █▄█"
                elif ( char == "c" ):_str+=" █▄▄"
                elif ( char == "d" ):_str+=" █▄▀"
                elif ( char == "e" ):_str+=" ██▄"
                elif ( char == "f" ):_str+=" █▀░"
                elif ( char == "g" ):_str+=" █▄█"
                elif ( char == "h" ):_str+=" █▀█"
                elif ( char == "i" ):_str+=" █"
                elif ( char == "j" ):_str+=" █▄█"
                elif ( char == "k" ):_str+=" █░█"
                elif ( char == "l" ):_str+=" █▄▄"
                elif ( char == "m" ):_str+=" █░▀░█"
                elif ( char == "n" ):_str+=" █░▀█"
                elif ( char == "o" ):_str+=" █▄█"
                elif ( char == "p" ):_str+=" █▀▀"
                elif ( char == "q" ):_str+=" ▀▀█"
                elif ( char == "r" ):_str+=" █▀▄"
                elif ( char == "s" ):_str+=" ▄█"
                elif ( char == "t" ):_str+=" ░█░"
                elif ( char == "u" ):_str+=" █▄█"
                elif ( char == "v" ):_str+=" ▀▄▀"
                elif ( char == "w" ):_str+=" ▀▄▀▄▀"
                elif ( char == "x" ):_str+=" █░█"
                elif ( char == "y" ):_str+=" ░█░"
                elif ( char == "z" ):_str+=" █▄"

                elif ( char == "+" ):_str+=" ░▀░"
                elif ( char == "-" ):_str+=" ░░"
                elif ( char == "*" ):_str+=" ▄▀▄"
                elif ( char == "/" ):_str+=" ▄▀░░"
                elif ( char == "=" ):_str+=" ▀▀"
                elif ( char == "." ):_str+=" ▄"
               #elif ( char == "<" ):_str+=" "
               #elif ( char == ">" ):_str+=" "
                elif ( char == "%" ):_str+=" ▄▀░▄"
               #elif ( char == "^" ):_str+=" "

                elif ( char == "!" ):_str+=" ▄"
                elif ( char == "?" ):_str+=" ░▄"
                elif ( char == ":" ):_str+=" ▄"
                elif ( char == ";" ):_str+=" ▄▀"
                elif ( char == "$" ):_str+=" ▄█"
               #elif ( char == "@" ):_str+=" "
                elif ( char == "," ):_str+=" █"
               #elif ( char == "&" ):_str+="  "
                elif ( char == "'" ):_str+=" ░"
                elif ( char == "[" ):_str+=" █▄"
                elif ( char == "]" ):_str+=" ▄█"
                elif ( char == "#" ):_str+=" ▄█▄█▄"
                
                elif ( char == " " ):_str+="   "

            j+=1
        i+=1
    return _str
#==============================================================
        
print(banner_bash("GITSCRAPY"))
