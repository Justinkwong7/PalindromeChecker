public void setup()
{
  String lines[] = {"test", "rotator", "rewriter", "nurses run", "Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String neword = Letters(word);
  neword = capitals(neword);
  
  String sNew = reverse(word);
  sNew = Letters(sNew);
  sNew = capitals(sNew);
  
  if (sNew.equals(neword)){
    return true;
  }
  return false;
}

public String reverse(String str)
{
    String sNew = new String();
  for (int i = str.length(); i > 0; i--){
      sNew = sNew + str.charAt(i-1);
  }
  return sNew;
}

 public String Letters(String str){
   String sNew = new String();
   for (int i = 0; i < str.length(); i++){
     if(Character.isLetter(str.charAt(i))){
       sNew = sNew + str.charAt(i);
     }
   }
   return sNew;
 }
 
 public String capitals (String str){
   return (str.toLowerCase());
 }
