public class AccountInfoValidation {
    static final Integer MINIMUM_LENGTH = 3;
    static final Integer MAXIMUM_LENGTH = 30;

    public Boolean IsExistingAccount(String name) {
        List<Account> existingAccount = [SELECT Id FROM Account WHERE Name = :name LIMIT 2];

        return !existingAccount.isEmpty();
    }

    public Boolean IsValidAccountName(String name) {
        return (name.length() >= MINIMUM_LENGTH && name.length() <= MAXIMUM_LENGTH);
    }

    public String ConcatNames(String firstName, String surname) {
        return firstName + ' ' + surname;
    }
}