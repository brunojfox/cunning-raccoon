public class AccountHandler {

    public static void insertAccount(Integer numbero) {
        List<Account> addAccounts = new List<Account>();
        
        Integer N = 0;
        while (n < numbero) {
            Account conta = new Account();
            conta.name = 'Acme Inc ' + N;
            conta.AccountNumber = 'A000' + N;
            N++;
            addAccounts.add(conta);
        }
        
        insert addAccounts;
    }
    
}