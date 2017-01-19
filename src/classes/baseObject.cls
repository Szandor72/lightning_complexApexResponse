public with sharing abstract class baseObject {
	@AuraEnabled
    public String label {get; set;}
    @AuraEnabled
    public Id recordId {get; set;}
}