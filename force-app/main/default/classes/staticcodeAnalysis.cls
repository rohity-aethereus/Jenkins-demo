/**
 * @description       : 
 * @author            : payal.mittal@aethereus.com
 * @group             : 
 * @last modified on  : 08-24-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class staticcodeAnalysis {
    public staticcodeAnalysis() {

    }
    public static void getAccountData(){
        List<Account> accLst = [SELECT Id FROM Account];
        system.debug('accLst :: '+ accLst);
    }
}
