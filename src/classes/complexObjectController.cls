public class complexObjectController {
	@AuraEnabled
    public static List<baseObject> getObjects(){
        List<baseObject> listObjects = new List<baseObject>();
        For (Account myAccount : [Select Id, Name, Type from Account Limit 5]) {
            myObject newObject = new myObject();
            newObject.recordId = myAccount.Id;
            newObject.label=  myAccount.Type;
            newObject.name= myAccount.Name;
            newObject.description = 'Description';
            listObjects.add(newObject);
        }
        System.Assert(listObjects[0].recordId != null);
        return listObjects;
    }
    
    @AuraEnabled
    public static String getObjectsJSON(){
        List<baseObject> listObjects = new List<baseObject>();
        For (Account myAccount : [Select Id, Name, Type from Account Limit 5]) {
            myObject newObject = new myObject();
            newObject.recordId = myAccount.Id;
            newObject.label=  myAccount.Type;
            newObject.name= myAccount.Name;
            newObject.description = 'Description';
            listObjects.add(newObject);
        }
        System.Assert(listObjects[0].recordId != null);
        return JSON.serialize(listObjects);
    }
}