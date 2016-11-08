#JUMBO-TESTS

This is the test repository for the Jumbo project. <br>
Here you'll find all test artifacts created to verify if the features in the app were implemented according to requirements and if it meets user quality expectation. 

###Coverage Map
Coverage Maps are a great way to make coverage visible and also for documenting the features included in the project or what will be tested during a specific test phase.
For those purposes, we've created two different versions of the coverage map  for the Jumbo project. 
    - Release Coverage - automated scenarios are highlighted, what are the risk areas for the release, normally those areas require more attention during regression periods because they received new features, refactors or simply because they are part of the core functionalities of the app. They don't show all the features available in the project, but only those relevant for the upcoming release. 
    - Project Coverage - automated scenarios are highlighted, risk areas are sorted by business importance after every new feature is implemented in the app this version is updated to reflect those changes.

###Rewrites (Mocks)
Charles rewrites are used in the project to mock test data variations, errors handling and to check the communication between the front-end and the mid layer, UX-API. 
Those rewrites can be imported using Charles Proxy and they will provide you a bunch of data variations to check how the app behaves when using them.  

###Test Charters 
We don't create uncountable test cases to test every feature, instead, we do create test charters to "guide"/ help our testers to explore the app from a human perspective. With that approach, we  encourage testers to react on the response from the system and think for themselves what a correct outcome should look like and also use their creativity how to break the system down to prevent problems. Testers are also encouraged to look for different ways how it might fail to meet the users needs expectations and requirements
(e.g. usability problems).

###Automated Tests
During the planning and refinement of every implementation, the team discusses the test strategy for the new feature and the impact it has on other modules within the app. Test scope is defined and kept on Confluence. Test automation is always considered during those conversations and the decision of the team to guarantee the requirements were met could require either back-end or front-end automated checks to be created.   
    Back-end: automated Minosse checks are created to verify the communication between the apps and UX-UPI. 
    There's a special repository for those checks, and all needed information about how to set up and run can be found there. 
    Front-end: native development tools are used to automated the most repetitive tests in the most important flows in the app. Expresso for Android and XCUI for iOS and  test scenarios are written down using Gherkin language. 
    The process to achieve that is:
        1- In the beginning of every sprint testers create the test scenarios for the user stories in that sprint. Those files are kept in /jumbo-tests/automated_tests
        2- Developers and other testers review the scenarios created 
        3- the features are automated during the sprint work and the definition and custom steps are maintained in the respective repositories (jumbo-android and jumbo-ios). Submodule is used to guarantee the same version of the files is being used. 

        