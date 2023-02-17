public class RandomContactFactory 
{
	public static List<Contact> generateRandomContacts(integer numofContacts,string lastNameGen)
    {
    	List<Contact> con = new List<Contact>();
    	for(Integer i=0;i<numofContacts;i++)
    	{
        	lastNameGen='Test'+ i;
        	Contact a=new Contact(FirstName=lastNameGen,LastName=lastNameGen);
            con.add(a);
        }
        return con;
    }
}