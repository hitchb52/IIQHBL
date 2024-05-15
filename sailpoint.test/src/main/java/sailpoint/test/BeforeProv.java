package sailpoint.test;

import java.util.List;
import sailpoint.object.Identity;
import sailpoint.object.ProvisioningPlan;
import sailpoint.object.ProvisioningPlan.AccountRequest;
import sailpoint.object.ProvisioningPlan.AttributeRequest;

public class BeforeProv {
	/*
	<Rule created="1713958678791" id="7f0001018f0f13b7818f0fe5f107002d" language="beanshell" modified="1714987810147" name="Before Prov" significantModified="1714987810147" type="BeforeProvisioning">
	  <Description>An IdentityIQ server-side rule that is executed before the connector's provisioning method is called. This gives the customer the ability to customize or react to anything in the ProvisioningPlan BEFORE it is sent to the underlying connectors used in provisioning. 

	This rule will be called for any application found in a plan that also has a configured 'beforeProvisioningRule' configured.  

	The plan can be updated directly in the rule by reference and does not need to return the plan.</Description>
	  <Signature>
	    <Inputs>
	      <Argument name="log" type="org.apache.commons.logging.Log">
	        <Description>
	          The log object associated with the SailPointContext.
	        </Description>
	      </Argument>
	      <Argument name="context" type="sailpoint.api.SailPointContext">
	        <Description>
	          A sailpoint.api.SailPointContext object that can be used to query the database if necessary.
	        </Description>
	      </Argument>
	      <Argument name="plan">
	        <Description>
	          The ProvisioningPlan object on its way to the Connector.
	        </Description>
	      </Argument>
	      <Argument name="application">
	        <Description>
	          The application object that references this before/after script.
	        </Description>
	      </Argument>
	    </Inputs>
	  </Signature>
	  <Source>*/
	  
	public static void before(ProvisioningPlan plan) {
	  
	  System.out.println("************************Before*****************************");

	List<AccountRequest> accountRequests = plan.getAccountRequests();


	if (accountRequests != null) 
	{
	    for (AccountRequest accountRequest: accountRequests) 
	    {
	        AccountRequest.Operation op = accountRequest.getOperation();
	        if(op == null) continue;
	        String nativeIdentity = accountRequest.getNativeIdentity();
	        Identity identity = plan.getIdentity();
	        String currentLCS = null;
	        String activeOU = null;
	        String disabledOU = null;
	        if(identity != null){
	            currentLCS =(String) identity.getAttribute("Status");
	            activeOU =(String) identity.getAttribute("activeParentOU");
	            disabledOU =(String) identity.getAttribute("disabledParentOU");
	System.out.println("Identity =" + identity);
	System.out.println("currentLCS=" + currentLCS);

	    }

	System.out.println("out of the loop");
	     String newOU = null;   
	 if(op.equals(AccountRequest.Operation.Modify))
	{
	           System.out.println("modify request ");
	           
	    System.out.println("inactive true ? " + "inactive".equals(currentLCS));
	System.out.println("disable = true ? " + op.equals(AccountRequest.Operation.Disable));
	    if("inactive".equals(currentLCS))
	      {
	        //Termination Use Case
	         newOU = disabledOU;
	         System.out.println("termination true, new ou is " + newOU);
	        }
	 }
	       
	        if(newOU != null && !nativeIdentity.endsWith(newOU))
	       {
	            //Account not currently in the proper OU. Put them there
	            accountRequest.add(new AttributeRequest("AC_NewParent", ProvisioningPlan.Operation.Set, newOU));
	        }
	    }
	}

	}
}
