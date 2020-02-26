
# Welcome to 5minFeature 
- The class will be split into two groups.
- The groups will be assigned a feature. 
- The groups will have 2 minuets to assess the feature and choose a representative to code out the feature. 
- All members of a group must code at least once. 
# A coding round is 10 minutes 
- The representative will have 5 minuets to code out the feature 
- The representatives may code the feature on their own or as the group to navigate them. 
- If the feature can not be finished in 5 minutes, the other group gets 5 minutes to finish it. 
- Once a feature is completed or 10 minutes has passed a new feature will be selected and a new round will start
- Each round the coding order of the groups is swapped. If Group A coded first in the First round Group B would code first in the second. 



## Benaroya Hall Scheduler 

## Models
[  ] Create and verify associations 

# Orchestra: name, classification, conductor_id
- has many members through OrchestraMember
- belongs to  conductor 
	
# OrchestraMember: orchestra_id, member_id
- belongs to  Orchestra
- belongs to  member
	

# Member: name
- has_many Orchestras through OrchestraMember
- has_many instruments

# Conductor: name
- has many orchestras

# Instrument:  classification, member_id
- belongs to a member 


# Routes
 # orchestras/new
	[ ] Leads to a form page that will create a new Orchestra 
		Requirements: 
        - form_for
		- collection_select 
	    - redirect to the new orchestras show page
    [ ] Create Validations for form, errors should display on the  form page if validations fail 


 # orchestras/:id
    [ ] Should list Orchestras name, classification and members. It should link back to all Orchestras page
 # /orchestras
    [ ] Should list all Orchestras and link to that orchestras show page Should link to New Orchestra page

 # /members/new
	[ ] Leads to a form page that will create a new Member 
		Requirements: 
        - form_for
		- collection_check_boxes 
	    - redirect to the new Members show page
    [ ] Create Validations for form, errors should display on the form page if validations fail 
