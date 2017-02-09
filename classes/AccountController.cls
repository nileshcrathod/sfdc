public class AccountController {
	@AuraEnabled
    public static List<Account> showAccounts(String accName) {
        List<Account> accList = [Select Id, Name, AnnualRevenue, BillingState From Account Where name like : accName + '%' order by name];
        return accList;
    }
    
    @AuraEnabled
    public static List<Account> showAccountData(String accName) {
        List<Account> accList = [Select Id, Name, AnnualRevenue, BillingState From Account Where name =: accName LIMIT 1];
        return accList;
    }
}