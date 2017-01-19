({
	onInit : function (component, event, helper) {
        var getObjectsAction = component.get("c.getObjects");
        getObjectsAction.setCallback(this, function (response) {
            var state = response.getState();
            if ( state === "SUCCESS" && component.isValid()) {
                component.set("v.items",response.getReturnValue());
                //debugger;
            } else if (state === "INCOMPLETE") {
                console.log("Action State incomplete");
            } else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        console.log("Error message: " +
                            errors[0].message);
                        console.log("Error");
                    }
                } else {
                    console.log("Unknown error");
                }
            }
        });

        $A.enqueueAction(getObjectsAction);
        
        var getObjectsActionJSON = component.get("c.getObjectsJSON");
        getObjectsActionJSON.setCallback(this, function (response) {
            var state = response.getState();
            if ( state === "SUCCESS" && component.isValid()) {
                component.set("v.itemsDeserialized",JSON.parse(response.getReturnValue()));
                //debugger;
            } else if (state === "INCOMPLETE") {
                console.log("Action State incomplete");
            } else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        console.log("Error message: " +
                            errors[0].message);
                        console.log("Error");
                    }
                } else {
                    console.log("Unknown error");
                }
            }
        });

        $A.enqueueAction(getObjectsActionJSON);
    }
})