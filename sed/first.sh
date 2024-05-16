cat emp.txt
echo "-----------------------------------------"
echo "-----------------------------------------"


echo "********PRINT SECOND LINE TWO TIME********"
sed '2p' emp.txt
echo "-----------------------------------------"
echo "-----------------------------------------"
echo "********PRINT SPECIFIC LINE(HERE 3rd)********"
echo "Similar to cat emp.txt|head -3|tail -1"
sed -n '3p' emp.txt
echo "-----------------------------------------"
echo "-----------------------------------------"
echo "********PRINT LAST LINE********"
sed -n '$p' emp.txt
echo "-----------------------------------------"
echo "-----------------------------------------"
echo "********DISPLAY MULTIPLE LINE IN RANGE********"
sed -n '2,4p' emp.txt
echo "-----------------------------------------"
echo "-----------------------------------------"
echo "********DISPLAY MULTIPLE LINE********"
sed -n -e '2p;4p' emp.txt
echo "-----------------------------------------"
echo "-----------------------------------------"
echo "********DISPLAY ALL LINE EXPECT SECOND LINE********"
sed -n '2!p' emp.txt
echo "-----------------------------------------"
echo "-----------------------------------------"
echo "********DISPLAY ALL LINE EXPECT LINES IN A RANGE********"
sed -n '2,4!p' emp.txt
echo "-----------------------------------------"
echo "-----------------------------------------"
echo "********DISPLAY LINES HAVING A SPECIFIC WORD********"
sed -n '/admin/p' emp.txt
echo "-----------------------------------------"
echo "-----------------------------------------"
echo "********REMOVING LINE(S)********"
echo "********REMOVE THIRD LINE********"
sed '3d' emp.txt
echo "********REMOVE LAST LINE********"
sed '$d' emp.txt
echo "********REMOVE FIRST LINE********"
sed '1d' emp.txt
echo "********REMOVE A RANGE OF LINES********"
sed '1,3d' emp.txt
echo "-----------------------------------------"
echo "-----------------------------------------"
echo "********DELETE LINE(S)********"
echo "********DELETE FIFTH LINE********"
sed -i '5d' emp.txt
cat emp.txt
echo "********DELETE MULTIPLE LINE********"
sed -i -e '1d;3d' emp.txt
cat emp.txt



