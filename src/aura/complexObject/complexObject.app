<aura:application extends="force:slds" controller="complexObjectController">
	<aura:attribute name="items" type="Object[]" description="This does not work as intended"/>
    <aura:attribute name="itemsDeserialized" type="Object[]"/>
    <aura:handler name="init" value="{!this}" action="{!c.onInit}"/>
    <div class="slds-card" style="padding:30px;">
    <b>Untouched Apex Response (Missing Id) </b>
    <aura:iteration items="{!v.items}" var="item">
       	<div>
        Id: {!item.recordId} <br/>
        Name: {!item.name} <br/>
        +++++++++ <br/>
        </div>    
    </aura:iteration>
    </div>
<div class="slds-card" style="padding:30px;">    
    <b>Same response but serialized/deserialized</b>
    <aura:iteration items="{!v.itemsDeserialized}" var="item">
        <div>
        Id: {!item.recordId} <br/>
        Name: {!item.name} <br/>
        +++++++++ <br/>
            </div>
    </aura:iteration>
    </div>
</aura:application>