//variables
choosenPath = ""
whichDepartment = ""
riskAnalysis = ""
diceRoll = 0
meetingRoll = 0
timelineSelection = ""
lstActionChoices = []
choiceSelection = false
maintenanceWindow = 0
finalRoll = 0
backups = false

//Needed variables for stronger passwords
reviewPolicy = ""
lstUpdateStandard = []
standardSelection = ""
insistMFA = ""
mfaRoll = 0
passPolicy = ""
rolloutChoice = ""
passLength = false
delayRoll = 0

//variables needed for phishing awareness
whichInfo = 0
lstEmailTemplate = []
whichLevel = 0
whichAction = 0
whichSchedule = 0
whichLanding = 0
whichTraining = 0

//function to simulate rolling a die
rollDice = function()
   roll = ceil(rnd * 10)
   return roll
end function

//functions to check user input
One2Five = function(n)
   if n < 1 or n > 5 then
     println("Please enter a number from 1 to 5")
     return false
   else
     return true
   end if
 end function
 
 One2Three = function(n)
   if n < 1 or n > 3 then
     println("Please enter a number from 1 to 3")
     return false
   else
     return true
   end if
 end function
 
 One2Two = function(n)
   if n < 1 or n > 2 then
     println("Please enter a 1 or 2")
     return false
   else
     return true
   end if
 end function

//begining dialogue
nitroApp("BusinessRascal", "Epitropos Financial is a mid-sized financial services company.", "_", 1)
wait(1.2)
nitroCaption(1)

goalOne = new Sequence
goalOne.steps = []

firstStep = new SequenceStep
firstStep.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
firstStep.action = function()
   nitroApp("BusinessRascal", "Recently, a security audit has revealed outdated antivirus on an internet facing legacy device, weak passwords across the organization and a lack of employee training on phishing.", "_", 1)
   wait(1.2)
   nitroCaption(1)
end function
goalOne.steps.push(firstStep)

firstStep = new SequenceStep
firstStep.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
firstStep.action = function()
   nitroApp("BusinessRascal", "First, you must decide which issue should we change first?", "_", 1)
   wait(1.2)
   nitroCaption(1)
end function
goalOne.steps.push(firstStep)

firstStep = new SequenceStep
firstStep.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
firstStep.action = function()
   nitroApp("BusinessRascal", "This will be a text based adventure. Please enter your selection into the terminal.", "_", 1)
   wait(1.2)
   nitroCaption(0)
end function
goalOne.steps.push(firstStep)

while true
  isGoalOnePerformed = goalOne.isPerformed()
  if isGoalOnePerformed == 1 then //We will need to add code to test user input
    println("")
    println("We must prioritize what to change first.")
    println("What do you choose?")
    println("1. Update antivirus on a legacy system")
    println("2. Implement a stronger password policy")
    println("3. Implement phishing awareness training")
    print("<color=#00B7AC>Please enter your selection:</color> ")
    choosenPath = waitForTerminalInput()
    while One2Three(choosenPath.val) == 0
      choosenPath = waitForTerminalInput()
      wait(0.1)
    end while
    nitroCaption(1)
    break
  end if
  wait(0.1)
end while

if choosenPath == "1" then
   //Update Scenario
   goalUpdate = new Sequence
   goalUpdate.steps = []

   firstStep = new SequenceStep
   firstStep.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
   firstStep.action = function()
      nitroApp("BusinessRascal", "Let’s update antivirus on a legacy system!", "_", 1)
      wait(1.2)
      nitroCaption(1)
   end function
   goalUpdate.steps.push(firstStep)

   firstStep = new SequenceStep
   firstStep.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
   firstStep.action = function()
      nitroApp("BusinessRascal", "Thinking back on the change management module, one of our first steps is to get stakeholder involvement.", "_", 1)
      wait(1.2)
      nitroCaption(1)
   end function
   goalUpdate.steps.push(firstStep)

   firstStep = new SequenceStep
   firstStep.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
   firstStep.action = function()
      nitroApp("BusinessRascal", "Which department do you meet with to get stakeholder involvement?", "_", 1)
      wait(1.2)
      nitroCaption(0)
   end function
   goalUpdate.steps.push(firstStep)

   while true
     isGoalUpdatePerformed = goalUpdate.isPerformed()
     if isGoalUpdatePerformed == 1 then
      println("")
      println("Please Select the Department")
      println("1. Human Resources")
      println("2. IT Department")
      print("<color=#00B7AC>Please enter your selection:</color> ")
      whichDepartment = waitForTerminalInput()
      while One2Two(whichDepartment.val) == 0
        whichDepartment = waitForTerminalInput()
        wait(0.1)
      end while
      nitroCaption(1)
      break
     end if
     wait(0.1)
   end while

   if whichDepartment == "1" then
      wrongDepartment = new Sequence
      wrongDepartment.steps = []

      setupStep = new SequenceStep
      setupStep.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      setupStep.action = function()
         nitroApp("BusinessRascal", "HR does not see the need for an update. Unfortunately this means your organization was hit with a crippling cyber attack - The End", "_", 1)
         wait(1.2)
         nitroCaption(1)
      end function
      wrongDepartment.steps.push(setupStep)

      setupStep = new SequenceStep
      setupStep.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      setupStep.action = function()
         fail_mission()
      end function
      wrongDepartment.steps.push(setupStep)

      while true
        isWrongDepartment = wrongDepartment.isPerformed()
        if isWrongDepartment == 1 then
           break
        end if
        wait(0.1)
      end while

   end if

   goalRiskAnalysis = new Sequence
   goalRiskAnalysis.steps = []

   firstStep = new SequenceStep
   firstStep.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
   firstStep.action = function()
      nitroApp("BusinessRascal", "You reach out to the IT department concerning the update and got the attention of the Head of IT. They see the need for the update, but need more information. They ask for a meeting.", "_", 1)
      wait(1.2)
      nitroCaption(1)
   end function
   goalRiskAnalysis.steps.push(firstStep)

   firstStep = new SequenceStep
   firstStep.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
   firstStep.action = function()
      nitroApp("BusinessRascal", "Do you prepare a risk analysis for the meeting?", "_", 1)
      wait(1.2)
      nitroCaption(0)
   end function
   goalRiskAnalysis.steps.push(firstStep)

   while true
   isGoalRiskAnalysisPerformed = goalRiskAnalysis.isPerformed()
   if isGoalRiskAnalysisPerformed == 1 then
      println("")
      println("Do you prepare a risk analysis for the meeting?")
      println("1. Yes")
      println("2. No")
      print("<color=#00B7AC>Please enter your selection:</color> ")
      riskAnalysis = waitForTerminalInput()
      while One2Two(riskAnalysis.val) == 0
        riskAnalysis = waitForTerminalInput()
        wait(0.1)
      end while
      nitroCaption(1)
      //Dice Roll
      riskRoll = rollDice()
      //Dice roll for how the meeting went -- test this
      meetingRoll = rollDice()
      break
   end if
   wait(0.1)
   end while

   // if no to writting a risk analysis
   if riskAnalysis == "2" then

      //nitroApp("BusinessRascal", "Your presentation went well even though you did not provide a risk analysis.%0AWhile the need for an update is recognized, the timeline has been pushed back a few months.%0A%0ARolling to see how far back%0A(1-5: 6 months; 6-10: 3 months)", "_", 1)
      //wait(1.2)
      //nitroCaption(1)
      goalRiskNo = new Sequence
      goalRiskNo.steps = []

      riskStep = new SequenceStep
      riskStep.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      riskStep.action = function()
         strText = "Your presentation went well even though you did not provide a risk analysis.%0AWhile the need for an update is recognized, the timeline has been pushed back a few months.%0A%0ARolling to see how far back%0A(1-5: 6 months; 6-10: 3 months)"
         nitroApp("BusinessRascal", strText, "_", 1)
         wait(1.2)
         nitroCaption(1)  
      end function
      goalRiskNo.steps.push(riskStep)
      
      if riskRoll <= 5 then

         riskStep = new SequenceStep
         riskStep.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
         riskStep.action = function()
            strText = "You rolled a " + riskRoll + ".%0AUnfortunately because the update was delayed 6 months, your organization suffered a crippling cyber attack."
            nitroApp("BusinessRascal", strText, "_", 1)
            wait(1.2)
            nitroCaption(1)  
         end function
         goalRiskNo.steps.push(riskStep)

         riskStep = new SequenceStep
         riskStep.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
         riskStep.action = function()
            nitroApp("BusinessRascal", "The End", "_", 1)
            wait(5)
            nitroCaption(2) 
            fail_mission() 
         end function
         goalRiskNo.steps.push(riskStep)

         while true
            isGoalRiskNo = goalRiskNo.isPerformed()

            if isGoalRiskNo == 1 then
               break
            end if
            wait(0.1)
         end while
      else
         goalRiskNo = new Sequence
         goalRiskNo.steps = []
      
         riskStep = new SequenceStep
         riskStep.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
         riskStep.action = function()
            strText = "You rolled a " + riskRoll + ".%0AThe project has been delayed a few months.%0AEven with the delay, no cyber incident has occured."
            nitroApp("BusinessRascal", strText, "_", 1)
            wait(1.2)
            nitroCaption(1)  
         end function
         goalRiskNo.steps.push(riskStep)

         riskStep = new SequenceStep
         riskStep.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
         riskStep.action = function()
           nitroApp("BusinessRascal", "Now that we have support from the IT Department, we need to set our timeline.", "_", 1)
           wait(1.2)
           nitroCaption(0)
         end function
         goalRiskNo.steps.push(riskStep)

         while true
            isGoalRiskNo = goalRiskNo.isPerformed()

            if isGoalRiskNo == 1 then
               println("")
               println("What timeline do you set for the update")
               println("1. 6 months")
               println("2. 3 months")
               println("3. 1 month")
               print("<color=#00B7AC>Please enter your selection:</color> ")
               timelineSelection = waitForTerminalInput() 
               while One2Three(timelineSelection.val) == 0
                 timelineSelection = waitForTerminalInput()
                 wait(0.1)
               end while
               nitroCaption(1)
               break
            end if
         end while
      end if
   else if riskAnalysis == "1" then
     goalRiskYes = new Sequence
     goalRiskYes.steps = []

     riskStep = new SequenceStep
     riskStep.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
     riskStep.action = function()
       nitroApp("BusinessRascal", "You decided to prepare a risk analysis for the meeting. Rolling to see how the meeting went.%0A%0A1-5: Great Meeting%0A6-10: Meeting is cancelled", "_", 1)
       wait(1.2)
       nitroCaption(1)
     end function
     goalRiskYes.steps.push(riskStep)
   
     riskStep = new SequenceStep
     riskStep.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
     riskStep.action = function()
      strText = "You rolled a " + globals.meetingRoll
      nitroApp("BusinessRascal", strText, "_", 1)
      wait(1.2)
      nitroCaption(1)
     end function
     goalRiskYes.steps.push(riskStep)

     if meetingRoll <= 5 then
      riskStep = new SequenceStep
      riskStep.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      riskStep.action = function()
        nitroApp("BusinessRascal", "The Head of IT was impressed by your presentation and is fully behind the update.", "_", 1)
        wait(1.2)
        nitroCaption(1)
      end function
      goalRiskYes.steps.push(riskStep)
     else
      riskStep = new SequenceStep
      riskStep.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      riskStep.action = function()
        nitroApp("BusinessRascal", "The Head of IT had to cancel the meeting, but gives the go ahead to move forward with the update.", "_", 1)
        wait(1.2)
        nitroCaption(1)
      end function
      goalRiskYes.steps.push(riskStep)
     end if

     riskStep = new SequenceStep
     riskStep.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
     riskStep.action = function()
       nitroApp("BusinessRascal", "Now that we have support from the IT Department, we need to set our timeline.", "_", 1)
       wait(1.2)
       nitroCaption(0)
     end function
     goalRiskYes.steps.push(riskStep)

     while true
      isGoalRiskYes = goalRiskYes.isPerformed()

      if isGoalRiskYes == 1 then
         println("")
         println("What timeline do you set for the update")
         println("1. 6 months")
         println("2. 3 months")
         println("3. 1 month")
         print("<color=#00B7AC>Please enter your selection:</color> ")
         timelineSelection = waitForTerminalInput() 
         while One2Three(timelineSelection.val) == 0
           timelineSelection = waitForTerminalInput()
           wait(0.1)
         end while
         nitroCaption(1)
         break
      end if
      wait(0.1)
     end while

   end if

   goalTimeline = new Sequence
   goalTimeline.steps = []

   if timelineSelection == "1" then
      //nitroApp("BusinessRascal", "This is too long of a time to wait for this update. Your organization suffered a crippling cyber attack.%0A%0AThe End", "_", 1)
      //wait(5)
      //fail_mission()

      timeChoices = new SequenceStep
      timeChoices.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      timeChoices.action = function()
         nitroApp("BusinessRascal", "This is too long of a time to wait for this update. Your organization suffered a crippling cyber attack.%0A%0AThe End", "_", 1)
         wait(1.2)
         nitroCaption(1)
      end function
      goalTimeline.steps.push(timeChoices)

      timeChoices = new SequenceStep
      timeChoices.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      timeChoices.action = function()
         fail_mission()
      end function
      goalTimeline.steps.push(timeChoices)

   else
      if timelineSelection == "2" then
         strTimeline = "You selected 3 months.%0AGood choice!"
      else if timelineSelection == "3" then
         strTimeline = "You selected 1 month.%0AGood choice!"
      end if
      timeline = new SequenceStep
      timeline.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      timeline.action = function()
         nitroApp("BusinessRascal", globals.strTimeline, "_", 1)
         wait(1.2)
         nitroCaption(1)
      end function
      goalTimeline.steps.push(timeline)
   end if

   timeChoices = new SequenceStep
   timeChoices.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
   timeChoices.action = function()
      nitroApp("BusinessRascal", "Now that you have selected a timeline, let’s decide what to do with our time.", "_", 1)
      wait(1.2)
      nitroCaption(0)
   end function
   goalTimeline.steps.push(timeChoices)

   while true
      isGoalTimeline = goalTimeline.isPerformed()

      if isGoalTimeline == 1 then
         println("")
         if timelineSelection == "2" then //Three months
           println("With our timeline being 3 months,")
           println("we can choose three of the following actions:")
           println("1. Scan the update file for malware")
           println("2. Check the cryptographic hash of the update file")
           println("3. Check the removable device for malware")
           println("4. Make backups before installing the update")
           println("5. Set up a sandbox environment and test the update.")
           wait(1)
           while globals.lstActionChoices.len < 3
            print("<color=#00B7AC>Please enter your selection:</color> ")
            usrChoice = waitForTerminalInput()
            while One2Five(usrChoice.val) == 0
              usrChoice = waitForTerminalInput()
              wait(0.1)
            end while
            if usrChoice.val == 4 then
              globals.backups = true
            end if
              globals.lstActionChoices.push(usrChoice)
           end while
         else if timelineSelection == "3" then
            println("With our timeline being 1 month,")
            println("we can choose two of the following actions:")
            println("1. Scan the update file for malware")
            println("2. Check the cryptographic hash of the update file")
            println("3. Check the removable device for malware")
            println("4. Make backups before installing the update")
            println("5. Set up a sandbox environment and test the update.")
            wait(1)
            while globals.lstActionChoices.len < 2
              print("<color=#00B7AC>Please enter your selection:</color> ")
              usrChoice = waitForTerminalInput()
              while One2Five(usrChoice.val) == 0
                usrChoice = waitForTerminalInput()
                wait(0.1)
              end while
              if usrChoice.val == 4 then
               globals.backups = true
              end if
              globals.lstActionChoices.push(usrChoice)
            end while  
         end if
         for choice in lstActionChoices
           if choice == "1" then 
            globals.choiceSelection = true 
           else if choice == "2" then 
            globals.choiceSelection = true
           else if choice == "4" then
            globals.backups = true
           end if
         end for
         malwareRoll = rollDice()
         nitroCaption(1)
         break
      end if
      wait(0.1)
   end while

   goalMalware = new Sequence
   goalMalware.steps = []

   //Do I need to make this a globals?
   if globals.choiceSelection == false then
      timeChoices = new SequenceStep
      timeChoices.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      timeChoices.action = function()
         nitroApp("BusinessRascal", "Since you choose not to scan the file nor check the hash of the file, we need to roll to see if there is malware present.%0A1-3: Malware%0A4-10: A-OK", "_", 1)
         wait(1.2)
         nitroCaption(1)
      end function
      goalMalware.steps.push(timeChoices)
         
      if malwareRoll <= 3 then
         strRoll = "You rolled a " + malwareRoll
         timeChoices = new SequenceStep
         timeChoices.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
         timeChoices.action = function()
            nitroApp("BusinessRascal", strRoll + "%0A%0AMalware was in the update supply chain. Unfortunately you did not scan the file nor check the hash of the file, so your organization suffered a critical data breach. The End.", "_", 1)
            wait(1.2)
            nitroCaption(1)
         end function
         goalMalware.steps.push(timeChoices)

         timeChoices = new SequenceStep
         timeChoices.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
         timeChoices.action = function()
            fail_mission()
         end function
         goalMalware.steps.push(timeChoices)
      end if

      timeMaintenance = new SequenceStep
      timeMaintenance.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      timeMaintenance.action = function()
         nitroApp("BusinessRascal", "No malware was found!", "_", 1)
         wait(1.2)
         nitroCaption(1)
      end function
      goalMalware.steps.push(timeMaintenance)
      
   end if

   timeMaintenance = new SequenceStep
   timeMaintenance.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
   timeMaintenance.action = function()
      nitroApp("BusinessRascal", "We have the update and are now ready to proceed. So what will your maintenance window be?", "_", 1)
      wait(1.2)
      nitroCaption(0)
   end function
   goalMalware.steps.push(timeMaintenance)
      
   while true
      isGoalMalware = goalMalware.isPerformed()

      if isGoalMalware == 1 then
         println("")
         println("When do you want to perform the maintenance?")
         println("1. In the evening")
         println("2. On the weekend")
         print("<color=#00B7AC>Please enter your selection:</color> ")
         globals.maintenanceWindow = waitForTerminalInput()
         while One2Two(maintenanceWindow.val) == 0
            maintenanceWindow = waitForTerminalInput()
            wait(0.1)
         end while
         finalRoll = rollDice()
         nitroCaption(1)
         break
      end if
      wait(0.1)
   end while
 

   goalMaintenance = new Sequence
   goalMaintenance.steps = []

   timeMaintenance = new SequenceStep
   timeMaintenance.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
   timeMaintenance.action = function()
      nitroApp("BusinessRascal", "Everything is in place, we are ready to put the update into production. Time for one final roll.%0A%0A1-2: The update will cause an outage%0A3-7: Everything will work as planned%0A8-9: The device will start lagging%0A10: A chimera will break into the data center", "_", 1)
      wait(1.2)
      nitroCaption(1)
   end function
   goalMaintenance.steps.push(timeMaintenance)

   timeMaintenance = new SequenceStep
   timeMaintenance.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
   timeMaintenance.action = function()
      strFinalRoll = "You rolled a " + globals.finalRoll
      nitroApp("BusinessRascal", strFinalRoll, "_", 1)
      wait(1.2)
      nitroCaption(1)
   end function
   goalMaintenance.steps.push(timeMaintenance)

   if finalRoll <= 2 then
     if maintenanceWindow == "1" then
      timeMaintenance = new SequenceStep
      timeMaintenance.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      timeMaintenance.action = function()
         nitroApp("BusinessRascal", "Since the maintenance window was in the evening, the team in charge of applying the update was able to restart the system and get everything up and running by the start of the business day. Great job getting the legacy device updated!", "_", 1)
         wait(2)
         nitroCaption(1)
      end function
      goalMaintenance.steps.push(timeMaintenance)
     else
      timeMaintenance = new SequenceStep
      timeMaintenance.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      timeMaintenance.action = function()
         nitroApp("BusinessRascal", "Since you scheduled the update on a weekend, the system was down for most of Sunday. However, the IT was able to restart the system and everything was working again by end of day Monday. Good job getting the legacy device updated.", "_", 1)
         wait(2)
         nitroCaption(1)
      end function
      goalMaintenance.steps.push(timeMaintenance)
     end if
   else if finalRoll >= 3 and finalRoll <= 7 then
      timeMaintenance = new SequenceStep
      timeMaintenance.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      timeMaintenance.action = function()
         nitroApp("BusinessRascal", "Congratulations on getting the legacy device updated. You successfully navigated the change management process, great job!", "_", 1)
         wait(2)
         nitroCaption(1)
      end function
      goalMaintenance.steps.push(timeMaintenance)
   else if finalRoll >= 8 and finalRoll <= 9 then
      timeMaintenance = new SequenceStep
      timeMaintenance.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      timeMaintenance.action = function()
         nitroApp("BusinessRascal", "The device has started lagging.", "_", 1)
         wait(2)
         nitroCaption(1)
      end function
      goalMaintenance.steps.push(timeMaintenance)
      if backups == true then
         timeMaintenance = new SequenceStep
         timeMaintenance.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
         timeMaintenance.action = function()
            nitroApp("BusinessRascal", "The device has started lagging to where the services it provides are not useable. Good thing you decided to make backups before implementing the update. The IT was able to revert back while the antivirus company was contacted and a solution was found. It took a couple of weeks longer, but the legacy system is now fully updated. Good job.", "_", 1)
            wait(2)
            nitroCaption(1)
         end function
         goalMaintenance.steps.push(timeMaintenance)
      else
         timeMaintenance = new SequenceStep
         timeMaintenance.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
         timeMaintenance.action = function()
            nitroApp("BusinessRascal", "The device has started lagging to where the services it provides are not useable. Unfortunately you decided against making backups before applying the update. The latest backups were made two months ago, causing the organization to loose data.%0A%0AThe End.", "_", 1)
            wait(1.2)
            nitroCaption(1)
         end function
         goalMaintenance.steps.push(timeMaintenance)

         timeMaintenance = new SequenceStep
         timeMaintenance.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
         timeMaintenance.action = function()
            fail_mission()
         end function
         goalMaintenance.steps.push(timeMaintenance)

      end if
   else
      timeMaintenance = new SequenceStep
      timeMaintenance.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      timeMaintenance.action = function()
         nitroApp("BusinessRascal", "Oh, no! A mythical creature called a chimera has broken into the data center and has eaten the legacy system! This is an example of how we cannot predict every scenario. Sometimes the unexpected happens, which is why our goal should be cyber resiliency.%0A%0AThe End.", "_", 1)
         wait(1.2)
         nitroCaption(1)
      end function
      goalMaintenance.steps.push(timeMaintenance)

      timeMaintenance = new SequenceStep
      timeMaintenance.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      timeMaintenance.action = function()
         fail_mission()
      end function
      goalMaintenance.steps.push(timeMaintenance)

   end if

   while true
      isGoalMaintenance = goalMaintenance.isPerformed()

      if isGoalMaintenance == 1 then
         break
      end if
      wait(0.1)
   end while
else if choosenPath == "2" then
      //Implement Stronger Passwords
      goalImplement = new Sequence
      goalImplement.steps = []
   
      setupSequence = new SequenceStep
      setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      setupSequence.action = function()
         nitroApp("BusinessRascal", "Let’s implement a stronger password policy!", "_", 1)
         wait(1.2)
         nitroCaption(1)
      end function
      goalImplement.steps.push(setupSequence)
  
      setupSequence = new SequenceStep
      setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      setupSequence.action = function()
         nitroApp("BusinessRascal", "Thinking back on the change management module, one of our first steps is to get stakeholder involvement.", "_", 1)
         wait(1.2)
         nitroCaption(0)
      end function
      goalImplement.steps.push(setupSequence)
    
      while true
        isGoalImplementPerformed = goalImplement.isPerformed()
        if isGoalImplementPerformed == 1 then
           println("")
           println("Which department do you meet with to get")
           println("stakeholder involvement?")
           println("1. Finance Department ")
           println("2. Human Resources")
           println("3. Compliance and Legal")
           print("<color=#00B7AC>Please enter your selection:</color> ")
           whichDepartment = waitForTerminalInput()
           while One2Three(whichDepartment.val) == 0
             whichDepartment = waitForTerminalInput()
             wait(0.1)
           end while
           nitroCaption(1)
           break
        end if
        wait(0.1)
      end while
  
      if whichDepartment == "1" then
        departmentFail = new Sequence
        departmentFail.steps = []
  
        setupSequence = new SequenceStep
        setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
        setupSequence.action = function()
           nitroApp("BusinessRascal", "The Finance Department do not see a need to strength the organization’s password policy, so passwords were not strengthen. Therefore the company suffered a crippling data breach - The End", "_", 1)
           wait(1.2)
           nitroCaption(1)
        end function
        departmentFail.steps.push(setupSequence)
  
        setupSequence = new SequenceStep
        setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
        setupSequence.action = function()
           fail_mission()
        end function
        departmentFail.steps.push(setupSequence)

        while true
          isDepartmentFail = departmentFail.isPerformed()

          if isDepartmentFail == 1 then
            break
          end if
         wait(0.1) 
         end while
       end if
  
      goalReviewPolicy = new Sequence
      goalReviewPolicy.steps = []
      
      if whichDepartment == "2" then
        setupSequence = new SequenceStep
        setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
        setupSequence.action = function()
           nitroApp("BusinessRascal", "The Human Resource Department does see a need to implement a stronger password policy. They agree to meet with you to discuss this issue.", "_", 1)
           wait(1.2)
           nitroCaption(1)
        end function
        goalReviewPolicy.steps.push(setupSequence)
      else if whichDepartment == "3" then
          setupSequence = new SequenceStep
          setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
          setupSequence.action = function()
             nitroApp("BusinessRascal", "Compliance and Legal do see a need to implement a stronger password policy. They agree to meet with you to discuss this issue.", "_", 1)
             wait(1.2)
             nitroCaption(1)
          end function
          goalReviewPolicy.steps.push(setupSequence)
      end if
  
      setupSequence = new SequenceStep
      setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      setupSequence.action = function()
         nitroApp("BusinessRascal", "You are preparing your presentation explaining the need to implement a stronger password policy.", "_", 1)
         wait(1.2)
         nitroCaption(1)
      end function
      goalReviewPolicy.steps.push(setupSequence)
  
      setupSequence = new SequenceStep
      setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      setupSequence.action = function()
         nitroApp("BusinessRascal", "Do you review the existing policy and include your findings in your presentation or use examples of real life data breaches where weak passwords were abused?", "_", 1)
         wait(1.2)
         nitroCaption(0)
      end function
      goalReviewPolicy.steps.push(setupSequence)
  
      while true
        isGoalReviewPolicyPerformed = goalReviewPolicy.isPerformed()
        if isGoalReviewPolicyPerformed == 1 then
           println("")
           println("What to use for the presentation?")
           println("1. Policy Review")
           println("2. Real Life Examples")
           print("<color=#00B7AC>Please enter your selection:</color> ")
           reviewPolicy = waitForTerminalInput()
           while One2Two(reviewPolicy.val) == 0
             reviewPolicy = waitForTerminalInput()
             wait(0.1)
           end while
           nitroCaption(1)
           break
        end if
        wait(0.1)
      end while
  
      goalImplementWhichDept = new Sequence
      goalImplementWhichDept.steps = []
      if reviewPolicy == "1" then
          if whichDepartment == "2" then
              strDepartment = "Excellent, you pinpointed the current weaknesses of the current password policy and where it falls short and got full support from HR"
          else if whichDepartment == "3" then
              strDepartment = "Excellent, you pinpointed the current weaknesses of the current password policy and where it falls short and got full support from Compliance and Legal"
          end if
          setupSequence = new SequenceStep
          setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
          setupSequence.action = function()
             nitroApp("BusinessRascal", globals.strDepartment, "_", 1)
             wait(1.2)
             nitroCaption(1)
          end function
          goalImplementWhichDept.steps.push(setupSequence)
      else if reviewPolicy == "2" then
          if whichDepartment == "2" then
              strDepartment = "With out a policy review, the Human Resource Department do not understand a need for a change in policy. Unfortunately, this means that within 6 months the organization suffered a critical data breach - The End"
          else if whichDepartment == "3" then
              strDepartment = "Compliance and Legal are still behind the implementation, but they do not understand the weaknesses of the current policy, so timeline is delayed."
          end if
          setupSequence = new SequenceStep
          setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
          setupSequence.action = function()
             nitroApp("BusinessRascal", globals.strDepartment, "_", 1)
             wait(1.2)
             nitroCaption(1)
          end function
          goalImplementWhichDept.steps.push(setupSequence)
  
          if globals.whichDepartment =="2" and globals.reviewPolicy == "2" then
            setupSequence = new SequenceStep
            setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
            setupSequence.action = function()
               fail_mission()
            end function
            goalImplementWhichDept.steps.push(setupSequence)
          end if
  
          setupSequence = new SequenceStep
          setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
          setupSequence.action = function()
             nitroApp("BusinessRascal", "With the timeline delayed, we need to roll to see if the delay leads to a data breach:%0A%0A1-3: The delay leads to a critical data breach.%0A4-10: The does not lead to a data breach.", "_", 1)
             wait(1.2)
             nitroCaption(1)
             globals.delayRoll = rollDice()
          end function
          goalImplementWhichDept.steps.push(setupSequence)
  
          setupSequence = new SequenceStep
          setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
          setupSequence.action = function()
            strRoll = "You rolled a " + globals.delayRoll
             nitroApp("BusinessRascal", strRoll, "_", 1)
             wait(3)
             nitroCaption(1)
             if globals.delayRoll <= 3 then
              delayFail = new Sequence
              delayFail.steps = []
  
              setupSequence = new SequenceStep
              setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
              setupSequence.action = function()
                 nitroApp("BusinessRascal", "The delay leads to a critical data breach. The End", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
              end function
              delayFail.steps.push(setupSequence)
  
              setupSequence = new SequenceStep
              setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
              setupSequence.action = function()
                 fail_mission()
              end function
              delayFail.steps.push(setupSequence)
  
              while true
                 isDelayFail = delayFail.isPerformed()
  
                 if isDelayFail == 1 then
                  break
                 end if
                 wait(0.1)
              end while
             end if
          end function
          goalImplementWhichDept.steps.push(setupSequence)
  
      end if
  
      setupSequence = new SequenceStep
      setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      setupSequence.action = function()
         nitroApp("BusinessRascal", "Now that we have stakeholder buy in, we need to choose what  password standards we want to implement, but you can only choose 2.", "_", 1)
         wait(1.2)
         nitroCaption(0)
      end function
      goalImplementWhichDept.steps.push(setupSequence)
  
      while true
        isGoalImplementWhichDeptPerformed = goalImplementWhichDept.isPerformed()
        if isGoalImplementWhichDeptPerformed == 1 then
           println("")
           println("What password standards to update?")
           println("1. Length: Minimum of 12-16 characters")
           println("2. Complexity: Must include upper and")
           println("   lower case letters, numbers and special characters")
           println("3. Avoid Common Passwords: Prohibit the use of")
           println("   common passwords and dictionary words")
           println("4. Password Expiry: Set passwords to expire every")
           println("   90 days")
           println("5. History: Prevent reuse of the last 5-10 passwords")
           
           while lstUpdateStandard.len < 2
             println("<color=#00B7AC>Please enter your choice:</color>")
             standardSelection = waitForTerminalInput()
             while One2Five(standardSelection.val) == 0
               standardSelection = waitForTerminalInput()
               wait(0.1)
             end while
             if standardSelection == "1" then
               passLength = true
             end if
             lstUpdateStandard.push(standardSelection)
           end while
           nitroCaption(1)
          break
        end if
        wait(0.1)
      end while
  
      goalMultiFactor = new Sequence
      goalMultiFactor.steps = []
      
      setupSequence = new SequenceStep
      setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      setupSequence.action = function()
         nitroApp("BusinessRascal", "Now that we have what standards we want to improve and implement, what about multi-factor authentication?", "_", 1)
         wait(1.2)
         nitroCaption(1)
      end function
      goalMultiFactor.steps.push(setupSequence)
  
      setupSequence = new SequenceStep
      setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      setupSequence.action = function()
         nitroApp("BusinessRascal", "Do you insist on implementing MFA?", "_", 1)
         wait(1.2)
         nitroCaption(0)
      end function
      goalMultiFactor.steps.push(setupSequence)
      
      while true
        isGoalMultiFactorPerformed = goalMultiFactor.isPerformed()
        if isGoalMultiFactorPerformed == 1 then
           println("")
           println("Do you insist on implementing MFA?")
           println("1. Yes")
           println("2. No")
           print("<color=#00B7AC>Please enter your selection:</color> ")
           insistMFA = waitForTerminalInput()
           while One2Two(insistMFA.val) == 0
               insistMFA = waitForTerminalInput()
               wait(0.1)
            end while
           mfaRoll = rollDice()
           nitroCaption(1)
        break
      end if
        wait(0.1)
      end while
  
      if insistMFA == "2" then
        mfaFail = new Sequence
        mfaFail.steps = []
          
        setupSequence = new SequenceStep
        setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
        setupSequence.action = function()
            nitroApp("BusinessRascal", "MFA is a critical component of securing employees accounts. Not enabling MFA causes the organization to suffer a critical data breach.%0AThe End.", "_", 1)
            wait(1.2)
            nitroCaption(1)
        end function
        mfaFail.steps.push(setupSequence)
  
        setupSequence = new SequenceStep
        setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
        setupSequence.action = function()
          fail_mission()
        end function
        mfaFail.steps.push(setupSequence)
  
        while true
           isMFAFail = mfaFail.isPerformed()
  
           if isMFAFail == 1 then
            break
           end if
        wait(0.1)
        end while
      end if
  
      if whichDepartment == "2" then
          goalMultiFactorHR = new Sequence
          goalMultiFactorHR.steps = []
          
          setupSequence = new SequenceStep
          setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
          setupSequence.action = function()
             nitroApp("BusinessRascal", "HR is worried about enabling MFA, thinking that it will only annoy employees. ", "_", 1)
             wait(1.2)
             nitroCaption(1)
          end function
          goalMultiFactorHR.steps.push(setupSequence)
          
          setupSequence = new SequenceStep
          setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
          setupSequence.action = function()
             nitroApp("BusinessRascal", "Let’s roll for outcome:%0A%0A1-4: HR decides that MFA would be too much of a change for employees%0A5-10: HR approves implementing MFA", "_", 1)
             wait(1.2)
             nitroCaption(1)
          end function
          goalMultiFactorHR.steps.push(setupSequence)
  
          setupSequence = new SequenceStep
          setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
          setupSequence.action = function()
             strRoll = "You rolled a " + globals.mfaRoll
             nitroApp("BusinessRascal", strRoll, "_", 1)
             wait(1.2)
             nitroCaption(1)
          end function
          goalMultiFactorHR.steps.push(setupSequence)
      
          if mfaRoll < 5 then
              setupSequence = new SequenceStep
              setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
              setupSequence.action = function()
                 nitroApp("BusinessRascal", "The Human Resource Department thinks that implementing MFA will only annoy employees and will not consent to implementing it. Therefore within 6 months the organization will suffer a critical data breach. The End.", "_", 1)
                 wait(5)
                 nitroCaption(1)
              end function
              goalMultiFactorHR.steps.push(setupSequence)
  
              setupSequence = new SequenceStep
              setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
              setupSequence.action = function()
                 fail_mission()
              end function
              goalMultiFactorHR.steps.push(setupSequence)
  
          else if mfaRoll >= 5 and mfaRoll <= 10 then
              setupSequence = new SequenceStep
              setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
              setupSequence.action = function()
                 nitroApp("BusinessRascal", "HR is worried about the impact for employees, but with your insistence with implementing MFA, they finally agree.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
              end function
              goalMultiFactorHR.steps.push(setupSequence)
  
              setupSequence = new SequenceStep
              setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
              setupSequence.action = function()
                 nitroApp("BusinessRascal", "Excellent, now we are trucking right along. Just a few more decisions to be made.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
              end function
              goalMultiFactorHR.steps.push(setupSequence)
  
              setupSequence = new SequenceStep
              setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
              setupSequence.action = function()
                 nitroApp("BusinessRascal", "Will you write up a password policy document or create an employee awareness campaign?", "_", 1)
                 wait(1.2)
                 nitroCaption(0)
              end function
              goalMultiFactorHR.steps.push(setupSequence)
          end if
          while true
            isGoalMultiFactorHRPerformed = goalMultiFactorHR.isPerformed()
            if isGoalMultiFactorHRPerformed == 1 then
              println("")
              println("Will you write up a password policy document")
              println("or create an employee awareness campaign?")
              println("1. Policy Document")
              println("2. Awareness Campaign")
              print("<color=#00B7AC>Please enter your selection:</color> ")
              passPolicy = waitForTerminalInput()
              while One2Two(passPolicy.val) == 0
               passPolicy = waitForTerminalInput()
               wait(0.1)
              end while
              nitroCaption(1)
              break
            end if
            wait(0.1)
          end while
      else if whichDepartment == "3" then
          goalMultiFactorCL = new Sequence
          goalMultiFactorCL.steps = []
  
          setupSequence = new SequenceStep
          setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
          setupSequence.action = function()
              nitroApp("BusinessRascal", "Excellent, now we are trucking right along. Just a few more decisions to be made.", "_", 1)
              wait(1.2)
              nitroCaption(1)
          end function
          goalMultiFactorCL.steps.push(setupSequence)
  
          setupSequence = new SequenceStep
          setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
          setupSequence.action = function()
              nitroApp("BusinessRascal", "Will you write up a password policy document or create an employee awareness campaign?", "_", 1)
              wait(1.2)
              nitroCaption(0)
          end function
          goalMultiFactorCL.steps.push(setupSequence)
      
          while true
            isGoalMultiFactorCLPerformed = goalMultiFactorCL.isPerformed()
            if isGoalMultiFactorCLPerformed == 1 then
              println("")
              println("Policy Document or Awareness Campaign")
              println("1. Policy Document")
              println("2. Awareness Campaign")
              print("<color=#00B7AC>Please enter your selection:</color> ")
              passPolicy = waitForTerminalInput()
              while One2Two(passPolicy.val) == 0
               passPolicy = waitForTerminalInput()
               wait(0.1)
              end while
              nitroCaption(1)
              break
            end if
            wait(0.1)
          end while
      end if
      
      goalpassPolicy = new Sequence
      goalpassPolicy.steps = []
      
      if passPolicy == "1" then
         setupSequence = new SequenceStep
         setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
         setupSequence.action = function()
             nitroApp("BusinessRascal", "Excellent choice! This document outline the new standards, the reasons behind them, and the consequences of non-compliance.", "_", 1)
             wait(1.2)
             nitroCaption(1)
         end function
         goalpassPolicy.steps.push(setupSequence)
      else if passPolicy == "2" then
          setupSequence = new SequenceStep
          setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
          setupSequence.action = function()
              nitroApp("BusinessRascal", "You use posters, emails, and intranet to remind employees of best practices. Time will only tell if users actually pay attention.", "_", 1)
              wait(1.2)
              nitroCaption(1)
          end function
          goalpassPolicy.steps.push(setupSequence)
      end if
  
      setupSequence = new SequenceStep
      setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      setupSequence.action = function()
          nitroApp("BusinessRascal", "You are ready to implement the stronger password policy. Do you choose to select a group of employees for a pilot test or rollout to the entire organization?", "_", 1)
          wait(1.2)
          nitroCaption(0)
      end function
      goalpassPolicy.steps.push(setupSequence)
  
      while true
          isGoalpassPolicyPerformed = goalpassPolicy.isPerformed()
          if isGoalpassPolicyPerformed == 1 then
              println("")
              println("What say you?")
              println("1. Pilot Test")
              println("2. All at once")
              print("<color=#00B7AC>Please enter your selection:</color> ")
              rolloutChoice = waitForTerminalInput()
              while One2Two(rolloutChoice.val) == 0
              rolloutChoice = waitForTerminalInput()
               wait(0.1)
              end while
              nitroCaption(1)
              globals.finalRoll = rollDice()
              break
          end if
          wait(0.1)
      end while
  
      goalRollout = new Sequence
      goalRollout.steps = []
  
      if rolloutChoice == "1" then
        setupSequence = new SequenceStep
        setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
        setupSequence.action = function()
          nitroApp("BusinessRascal", "You get user buy in from the test group. You use this information in the training you create for the rest of the organization.", "_", 1)
          wait(1.2)
          nitroCaption(1)
        end function
        goalRollout.steps.push(setupSequence)
        if passPolicy == "2" then
          setupSequence = new SequenceStep
          setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
          setupSequence.action = function()
            nitroApp("BusinessRascal", "This information helps make your awareness campaign more effective.", "_", 1)
            wait(1.2)
            nitroCaption(1)
          end function
          goalRollout.steps.push(setupSequence)
        end if
      else if rolloutChoice == "2" then
        if passPolicy == "1" then
          setupSequence = new SequenceStep
          setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
          setupSequence.action = function()
            nitroApp("BusinessRascal", "Users dislike the abrupt change, but with a comprehensive password policy document for users to reference, they follow the new standards.", "_", 1)
            wait(1.2)
            nitroCaption(1)
          end function
          goalRollout.steps.push(setupSequence)
        else if passPolicy == "2" then
          setupSequence = new SequenceStep
          setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
          setupSequence.action = function()
            nitroApp("BusinessRascal", "Since you do not have a password policy document, users are confused and hate the abrupt change. Unfortunately, they use shadow IT to circumvent the new policy. Therefore the organization suffers a critical data breach. The End", "_", 1)
            wait(2)
            nitroCaption(1)
          end function
          goalRollout.steps.push(setupSequence)
  
          setupSequence = new SequenceStep
          setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
          setupSequence.action = function()
            fail_mission()
          end function
          goalRollout.steps.push(setupSequence)
  
        end if
      end if
      setupSequence = new SequenceStep
      setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      setupSequence.action = function()
          nitroApp("BusinessRascal", "Everything is in place and has been implemented for a few months now. Let’s do a policy review.", "_", 1)
          wait(1.2)
          nitroCaption(1)
      end function
      goalRollout.steps.push(setupSequence)
  
      setupSequence = new SequenceStep
      setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      setupSequence.action = function()
          nitroApp("BusinessRascal", "Roll for outcome:%0A%0A1-2: Users hate it and use shadow it to circumvent the new policy.%0A3-7: Everything is Awesome!%0A8-9: Users are using post it notes taped to their monitors to remember their passwords.%0A10: Abominable Yeti disrupts the office.", "_", 1)
          wait(1.2)
          nitroCaption(1)
      end function
      goalRollout.steps.push(setupSequence)
  
      setupSequence = new SequenceStep
      setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
      setupSequence.action = function()
          strRoll = "You rolled a " + globals.finalRoll
          nitroApp("BusinessRascal", strRoll , "_", 1)
          wait(1.2)
          nitroCaption(1) 
      end function
      goalRollout.steps.push(setupSequence)
  
      if finalRoll <= 2 then
          setupSequence = new SequenceStep
          setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
          setupSequence.action = function()
            nitroApp("BusinessRascal", "With users using shadow IT to circumvent the password standards, this leaves the organization vulnerable. The organization suffers a critical data breach within 6 months - The End.", "_", 1)
            wait(2)
            nitroCaption(1)
          end function
          goalRollout.steps.push(setupSequence)
  
          setupSequence = new SequenceStep
          setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
          setupSequence.action = function()
            fail_mission()
          end function
          goalRollout.steps.push(setupSequence)
  
      else if finalRoll >= 3 and finalRoll <= 7 then
          setupSequence = new SequenceStep
          setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
          setupSequence.action = function()
            nitroApp("BusinessRascal", "Everything is Awesome!%0AGreat Job navigating your way through implementing a stronger password policy. You’ve successfully completed this lab!", "_", 1)
            wait(1.2)
            nitroCaption(1)
          end function
          goalRollout.steps.push(setupSequence)
      else if finalRoll >=8 and finalRoll <= 9 then
          if passLength == true then
              setupSequence = new SequenceStep
              setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
              setupSequence.action = function()
                  nitroApp("BusinessRascal", "Even though users are using post-it notes to remember their passwords, since you choose to implement a minimum password length, the organization is safe…for now.", "_", 1)
                  wait(1.2)
                  nitroCaption(1)
              end function
              goalRollout.steps.push(setupSequence)
              else if passLength == false then
                  setupSequence = new SequenceStep
                  setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                  setupSequence.action = function()
                    nitroApp("BusinessRascal", "Not only are users using post-it notes to remember their passwords, you did not set a minimum password length standard. Therefore the organization suffered a critical data breach - The End", "_", 1)
                    wait(2)
                    nitroCaption(1)
                  end function
                  goalRollout.steps.push(setupSequence)
  
                  setupSequence = new SequenceStep
                  setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                  setupSequence.action = function()
                    fail_mission()
                  end function
                  goalRollout.steps.push(setupSequence)
  
              end if
      else if finalRoll == 10 then
          setupSequence = new SequenceStep
          setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
          setupSequence.action = function()
            nitroApp("BusinessRascal", "Abominable Yeti disrupts the office causing users to forget their passwords, triggering a company wide password reset.", "_", 1)
            wait(1.2)
            nitroCaption(1)
          end function
          goalRollout.steps.push(setupSequence)
  
          setupSequence = new SequenceStep
          setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
          setupSequence.action = function()
            nitroApp("BusinessRascal", "This is an example of how we cannot predict every scenario. Sometimes the unexpected happens, which is why our goal should be cyber resiliency. The End", "_", 1)
            wait(2)
            nitroCaption(1)
          end function
          goalRollout.steps.push(setupSequence)
  
          setupSequence = new SequenceStep
          setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
          setupSequence.action = function()
            fail_mission()
          end function
          goalRollout.steps.push(setupSequence)
  
      end if
      
      while true
          isGoalRolloutPerformed = goalRollout.isPerformed()
          if isGoalRolloutPerformed == 1 then
              break
          end if
          wait(0.1)
      end while
  
else if choosenPath == "3" then
     
         goalPhishing = new Sequence
         goalPhishing.steps = []
     
         setupSequence = new SequenceStep
         setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
         setupSequence.action = function()
             nitroApp("BusinessRascal", "Let’s implement phishing awareness training!", "_", 1)
             wait(1.2)
             nitroCaption(1)
         end function
         goalPhishing.steps.push(setupSequence)
     
         setupSequence = new SequenceStep
         setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
         setupSequence.action = function()
             nitroApp("BusinessRascal", "Thinking back on the change management module, one of our first steps is to get stakeholder involvement.", "_", 1)
             wait(1.2)
             nitroCaption(0)
         end function
         goalPhishing.steps.push(setupSequence)
     
         while true
         isGoalPhishing = goalPhishing.isPerformed()
         if isGoalPhishing == 1 then //We will need to add code to test user input
             println("")
             println("Which department do you meet with to get")
             println("stakeholder involvement?")
             println("1. C Level Executives")
             println("2. Information Technology")
             println("3. Human Resources")
             print("<color=#00B7AC>Please enter your selection:</color> ")
             whichDepartment = waitForTerminalInput()
             while One2Three(whichDepartment.val) == 0
                 whichDepartment = waitForTerminalInput()
                 wait(0.1)
             end while
             nitroCaption(1)
             break
         end if
         wait(0.1)
         end while
     
         //set up variable for next dialogue sequence here for different dialogue based on user's selection
         quest2Dialogue = new Sequence
         quest2Dialogue.steps = []
     
     
         if whichDepartment == "2" then
             ITFail = new Sequence
             ITFail.steps = []
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                nitroApp("BusinessRascal", "The IT department sees the value in phishing training, however they are behind on the launch of the organization’s new website.", "_", 1)
                wait(1.2)
                nitroCaption(1)
             end function
             ITFail.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                nitroApp("BusinessRascal", "This causes the awareness campaign to be delayed. Therefore the organization suffered a ransomware attack because an employee clicked on a phishing email - The End", "_", 1)
                wait(1.2)
                nitroCaption(1)
             end function
             ITFail.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
               fail_mission()
             end function
             ITFail.steps.push(setupSequence)

             while true
               isITFail = ITFail.isPerformed()
     
               if isITFail == 1 then
                 break
               end if
             wait(0.1)
             end while
         else if whichDepartment == "1" then
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                nitroApp("BusinessRascal", "Excellent choice. Getting buy in from C Level Executives can help set the tone and culture for the organization.", "_", 1)
                wait(1.2)
                nitroCaption(1)
             end function
             quest2Dialogue.steps.push(setupSequence)
         else if whichDepartment == "3" then
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                nitroApp("BusinessRascal", "Human Resources is intrigued by the idea of a phishing awareness campaign. They agree to meet with you to discuss your plan.", "_", 1)
                wait(1.2)
                nitroCaption(1)
             end function
             quest2Dialogue.steps.push(setupSequence)
         end if
     
         setupSequence = new SequenceStep
         setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
         setupSequence.action = function()
            nitroApp("BusinessRascal", "Now that you have a meeting scheduled, what information will you share to express the importance of a phishing awareness campaign?", "_", 1)
            wait(1.2)
            nitroCaption(0)
         end function
         quest2Dialogue.steps.push(setupSequence)
     
         while true
         isQuest2Dialogue = quest2Dialogue.isPerformed()
         if isQuest2Dialogue == 1 then //We will need to add code to test user input
             println("")
             println("What information to include in your presentation?")
             //println("in your presentation?")
             println("1. Real-world examples")
             println("2. Light-hearted jokes and memes")
             print("<color=#00B7AC>Please enter your selection:</color> ")
             whichInfo = waitForTerminalInput()
             while One2Two(whichInfo.val) == 0
                 whichInfo = waitForTerminalInput()
                 wait(0.1)
             end while
             nitroCaption(1)
             break
         end if
         wait(0.1)
         end while
      
         answer2Dialogue = new Sequence
         answer2Dialogue.steps = []
     
         if whichInfo == "1" then //real world
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "You choose to highlight a ransomware stories concerning organizations about the same size as yours.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             answer2Dialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "These examples really illustrated the potential impact and importance of enacting a phishing campaign.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             answer2Dialogue.steps.push(setupSequence)
     
             if whichDepartment == "1" then //C Level and Real World
                setupSequence = new SequenceStep
                setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                setupSequence.action = function()
                  nitroApp("BusinessRascal", "These examples opens the eyes of the executives.", "_", 1)
                  wait(1.2)
                  nitroCaption(1)
                end function
                answer2Dialogue.steps.push(setupSequence)
            
                setupSequence = new SequenceStep
                setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                setupSequence.action = function()
                  nitroApp("BusinessRascal", "They always thought that the organization wasn’t big enough to get the attention of threat actors. Now they know differently.", "_", 1)
                  wait(1.2)
                  nitroCaption(1)
                end function
                answer2Dialogue.steps.push(setupSequence)
     
                setupSequence = new SequenceStep
                setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                setupSequence.action = function()
                  nitroApp("BusinessRascal", "They are fully behind the phishing campaign.", "_", 1)
                  wait(1.2)
                  nitroCaption(1)
                end function
                answer2Dialogue.steps.push(setupSequence)
     
                setupSequence = new SequenceStep
                setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                setupSequence.action = function()
                   nitroApp("BusinessRascal", "Now that you have support from C Level, it is time to start planning the campaign.", "_", 1)
                   wait(1.2)
                   nitroCaption(0)
                end function
                answer2Dialogue.steps.push(setupSequence)
     
             else if whichDepartment == "3" then //HR and real world
                setupSequence = new SequenceStep
                setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                setupSequence.action = function()
                  nitroApp("BusinessRascal", "The real-world examples fall flat. HR border line accuses you of spreading fear, uncertainty and doubt (FUD).", "_", 1)
                  wait(1.2)
                  nitroCaption(1)
                end function
                answer2Dialogue.steps.push(setupSequence)
     
                setupSequence = new SequenceStep
                setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                setupSequence.action = function()
                  nitroApp("BusinessRascal", "They are not convinced of the need for a phishing awareness campaign. After all, they haven’t had a problem yet.", "_", 1)
                  wait(1.2)
                  nitroCaption(1)
                end function
                answer2Dialogue.steps.push(setupSequence)
     
                setupSequence = new SequenceStep
                setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                setupSequence.action = function()
                  nitroApp("BusinessRascal", "Therefore, the organization suffers a ransomware attack within the next 6 months. The End.", "_", 1)
                  wait(1.2)
                  nitroCaption(1)
                end function
                answer2Dialogue.steps.push(setupSequence)
     
                setupSequence = new SequenceStep
                setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                setupSequence.action = function()
                  fail_mission()
                end function
                answer2Dialogue.steps.push(setupSequence)
     
             end if //real world and whichDepartment
     
         else if whichInfo == "2" then // use jokes
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "You tell your best joke: What is a threat actor’s favorite time of year?", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             answer2Dialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "Phishing season :)", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             answer2Dialogue.steps.push(setupSequence)
     
             if whichDepartment == "3" then //HR
                setupSequence = new SequenceStep
                setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                setupSequence.action = function()
                   nitroApp("BusinessRascal", "HR loved the joke.", "_", 1)
                   wait(1.2)
                   nitroCaption(1)
                end function
                answer2Dialogue.steps.push(setupSequence)
     
                setupSequence = new SequenceStep
                setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                setupSequence.action = function()
                   nitroApp("BusinessRascal", "They appreciated the down to earth approach, which made your message come across.", "_", 1)
                   wait(1.2)
                   nitroCaption(1)
                end function
                answer2Dialogue.steps.push(setupSequence)
     
                setupSequence = new SequenceStep
                setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                setupSequence.action = function()
                   nitroApp("BusinessRascal", "They see the importance of the phishing campaign and are fully behind the training.", "_", 1)
                   wait(1.2)
                   nitroCaption(1)
                end function
                answer2Dialogue.steps.push(setupSequence)
     
                setupSequence = new SequenceStep
                setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                setupSequence.action = function()
                   nitroApp("BusinessRascal", "Now that you have support from HR, it is time to start planning the campaign.", "_", 1)
                   wait(1.2)
                   nitroCaption(0)
                end function
                answer2Dialogue.steps.push(setupSequence)
     
             else if whichDepartment == "1" then //C Level
                setupSequence = new SequenceStep
                setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                setupSequence.action = function()
                   nitroApp("BusinessRascal", "The executives at the meeting didn’t care for your flippant behavior.", "_", 1)
                   wait(1.2)
                   nitroCaption(1)
                end function
                answer2Dialogue.steps.push(setupSequence)
     
                setupSequence = new SequenceStep
                setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                setupSequence.action = function()
                   nitroApp("BusinessRascal", "Their philosophy is if a phishing campaign is so important, why are you making jokes.", "_", 1)
                   wait(1.2)
                   nitroCaption(1)
                end function
                answer2Dialogue.steps.push(setupSequence)
     
                setupSequence = new SequenceStep
                setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                setupSequence.action = function()
                   nitroApp("BusinessRascal", "They don’t approve of the phishing campaign, therefore the organization suffers a ransomware attack. The End.", "_", 1)
                   wait(1.2)
                   nitroCaption(1)
                end function
                answer2Dialogue.steps.push(setupSequence)
     
                setupSequence = new SequenceStep
                setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                setupSequence.action = function()
                   fail_mission()
                end function
                answer2Dialogue.steps.push(setupSequence)
             end if
         end if //This ends the choosing of real world or jokes
     
         while true
         isAnswerDialogue = answer2Dialogue.isPerformed()
         if isAnswerDialogue == 1 then //We will need to add code to test user input
             println("")
             println("What type of email templates would you like to use?")
             println("Pick Two:")
             println("1. Banking")
             println("2. Current Events")
             println("3. Data Breach")
             println("4. Holiday")
             println("5. Human Resources")
             
             while lstEmailTemplate.len < 2
                 print("<color=#00B7AC>Please enter your selection:</color> ")
                 emailTemplate = waitForTerminalInput()
                 while One2Five(emailTemplate.val) == 0
                     emailTemplate = waitForTerminalInput()
                     wait(0.1)
                 end while
                 lstEmailTemplate.push(emailTemplate)
                 wait(0.1)
             end while
             nitroCaption(1)
             break
         end if
         wait(0.1)
         end while
     
         quest3Dialogue = new Sequence
         quest3Dialogue.steps = []
     
         setupSequence = new SequenceStep
         setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
         setupSequence.action = function()
             nitroApp("BusinessRascal", "What level of difficulty do you set the first round of testing?", "_", 1)
             wait(1.2)
             nitroCaption(0)
         end function
         quest3Dialogue.steps.push(setupSequence)
     
         while true
         isQuest3Dialogue = quest3Dialogue.isPerformed()
         if isQuest3Dialogue == 1 then 
             println("")
             println("What level of difficulty do you set the")
             println("first round of testing?")
             println("1. Easy")
             println("2. Medium")
             println("3. Hard")
             print("<color=#00B7AC>Please enter your selection:</color> ")
             whichLevel = waitForTerminalInput()
             while One2Three(whichLevel.val) == 0
                 whichLevel = waitForTerminalInput()
                 wait(0.1)
             end while
             nitroCaption(1)
             break
         end if
         wait(0.1)
         end while
     
         answer3Dialogue = new Sequence
         answer3Dialogue.steps = []
     
         if whichLevel == "1" then
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                nitroApp("BusinessRascal", "This is the way! An easy level is a great way to establish a baseline of the employees awareness.", "_", 1)
                wait(1.2)
                nitroCaption(1)
             end function
             answer3Dialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                nitroApp("BusinessRascal", "This will give you more accurate tracking for your reporting.", "_", 1)
                wait(1.2)
                nitroCaption(1)
             end function
             answer3Dialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                nitroApp("BusinessRascal", "We need to decide how to handle employees that click on the phishing link.", "_", 1)
                wait(1.2)
                nitroCaption(0)
             end function
             answer3Dialogue.steps.push(setupSequence)
         else if whichLevel == "2" then //Medium Difficulty
             if whichDepartment == "1" then //C level
                 setupSequence = new SequenceStep
                 setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                 setupSequence.action = function()
                    nitroApp("BusinessRascal", "An easy level should have been used to establish a baseline to show effectiveness of the campaign.", "_", 1)
                    wait(1.2)
                    nitroCaption(1)
                 end function
                 answer3Dialogue.steps.push(setupSequence)
     
                 setupSequence = new SequenceStep
                 setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                 setupSequence.action = function()
                    nitroApp("BusinessRascal", "The level of difficulty is a bit high, however the C Level is committed to seeing the company culture change. ", "_", 1)
                    wait(1.2)
                    nitroCaption(1)
                 end function
                 answer3Dialogue.steps.push(setupSequence)
     
                 setupSequence = new SequenceStep
                 setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                 setupSequence.action = function()
                    nitroApp("BusinessRascal", "We need to decide how to handle employees that click on the phishing link.", "_", 1)
                    wait(1.2)
                    nitroCaption(0)
                 end function
                 answer3Dialogue.steps.push(setupSequence)
             else if whichDepartment == "3" then //HR
                 setupSequence = new SequenceStep
                 setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                 setupSequence.action = function()
                     nitroApp("BusinessRascal", "The level of difficulty is too advanced for the template used.", "_", 1)
                     wait(1.2)
                     nitroCaption(1)
                 end function
                 answer3Dialogue.steps.push(setupSequence)
     
                 setupSequence = new SequenceStep
                 setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                 setupSequence.action = function()
                     nitroApp("BusinessRascal", "An easy level should have been used to establish a baseline. You conduct a second round, but there is no perceivable improvement.", "_", 1)
                     wait(1.2)
                     nitroCaption(1)
                 end function
                 answer3Dialogue.steps.push(setupSequence)
     
                 setupSequence = new SequenceStep
                 setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                 setupSequence.action = function()
                     nitroApp("BusinessRascal", "Employees and HR are discouraged and the awareness campaign is abandoned. Therefore, the organization suffers a ransomware attack within the next 6 months. The End.", "_", 1)
                     wait(1.2)
                     nitroCaption(1)
                 end function
                 answer3Dialogue.steps.push(setupSequence)
     
                 setupSequence = new SequenceStep
                 setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
                 setupSequence.action = function()
                     fail_mission()
                 end function
                 answer3Dialogue.steps.push(setupSequence)
             end if
         else if whichLevel == "3" then //Hard
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "The level of difficulty is too advanced for the template used.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             answer3Dialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "An easy level should have been used to establish a baseline. You conduct a second round, but there is no perceivable improvement.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             answer3Dialogue.steps.push(setupSequence)
     
             if whichDepartment == "1" then
                 strDepartment = "Employees and the C level are discouraged and the awareness campaign is abandoned."
             else if whichDepartment == "3" then
                 strDepartment = "Employees and the HR are discouraged and the awareness campaign is abandoned."
             end if
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", strDepartment, "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             answer3Dialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "Therefore, the organization suffers a ransomware attack within the next 6 months. The End.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             answer3Dialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 fail_mission()
             end function
             answer3Dialogue.steps.push(setupSequence)
         end if
     
         while true
         isAnswer3Dialogue = answer3Dialogue.isPerformed()
         if isAnswer3Dialogue == 1 then 
             println("")
             println("What action should we take?")
             println("1. Place a mark on their record.")
             println("2. Do nothing this first round, but celebrate")
             println("   those who did report.")
             print("<color=#00B7AC>Please enter your selection:</color> ")
             whichAction = waitForTerminalInput()
             while One2Two(whichAction.val) == 0
                 whichAction = waitForTerminalInput()
                 wait(0.1)
             end while
             nitroCaption(1)
             break
         end if
         wait(0.1)
         end while
     
         quest4Dialogue = new Sequence
         quest4Dialogue.steps = []
     
         if whichAction == "1" then //mark on employee record    
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "Warning: This discourages employees.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             quest4Dialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 fail_mission()
             end function
             quest4Dialogue.steps.push(setupSequence)
         else if whichAction == "2" then
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "Celebrating the reporting process has given employees a sense of teamwork in the battle against evil threat actors.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             quest4Dialogue.steps.push(setupSequence) 
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "When do you schedule a time to send out the phishing emails?", "_", 1)
                 wait(1.2)
                 nitroCaption(0)
             end function
             quest4Dialogue.steps.push(setupSequence) 
         end if
     
         while true
         isQuest4Dialogue = quest4Dialogue.isPerformed()
         if isQuest4Dialogue == 1 then 
             println("")
             println("When do you schedule a time to send out the")
             println("phishing emails?")
             println("1. Monday mornings")
             println("2. Friday afternoons")
             println("3. Random day and time")
             print("<color=#00B7AC>Please enter your selection:</color> ")
             whichSchedule = waitForTerminalInput()
             while One2Three(whichSchedule.val) == 0
                 whichSchedule = waitForTerminalInput()
                 wait(0.1)
             end while
             nitroCaption(1)
             break
         end if
         wait(0.1)
         end while
     
         answer4Dialogue = new Sequence
         answer4Dialogue.steps = []
     
         if whichSchedule == "1" then //Monday Mornings
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "It soon becomes a running joke amongst employees about the Monday Morning phishing expedition.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             answer4Dialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "This does not prepare them for when a real phishing email is sent leading to a ransomware attack. The End.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             answer4Dialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 fail_mission()
             end function
             answer4Dialogue.steps.push(setupSequence)
         else if whichSchedule == "2" then //Friday afternoons
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "Friday afternoons quickly become predictable with employees joking that they cannot start their weekend before catching their weekly phish.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             answer4Dialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "This does not prepare them for when a real phishing email is sent leading to a ransomware attack. The End.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             answer4Dialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 fail_mission()
             end function
             answer4Dialogue.steps.push(setupSequence)
         else if whichSchedule == "3" then //random schedule
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "With the day and time being random, this helps employees to keep a watchful eye out for possible phishing emails.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             answer4Dialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "We almost have everything in place.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             answer4Dialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "Now we need to decide what will the landing page look like if a user clicks on the phishing link.", "_", 1)
                 wait(1.2)
                 nitroCaption(0)
             end function
             answer4Dialogue.steps.push(setupSequence)
         end if
     
         while true
         isAnswer4Dialogue = answer4Dialogue.isPerformed()
         if isAnswer4Dialogue == 1 then 
             println("")
             println("What's the landing page after a click?")
             println("1. Training Page")
             println("2. 404 Page")
             print("<color=#00B7AC>Please enter your selection:</color> ")
             whichLanding = waitForTerminalInput()
             while One2Two(whichLanding.val) == 0
                 whichLanding = waitForTerminalInput()
                 wait(0.1)
             end while
             globals.finalRoll = rollDice() //final roll for the end
             nitroCaption(1)
             break
         end if
         wait(0.1)
         end while
     
         landingDialogue = new Sequence
         landingDialogue.steps = []
     
         if whichLanding == "1" then //Goes to training
             trainingDialogue = new Sequence
             trainingDialogue.steps = []
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "You have the landing page go to phishing awareness training.", "_", 1)
                 wait(1.2)
                 nitroCaption(0)
             end function
             trainingDialogue.steps.push(setupSequence)
     
             while true
             isTrainingDialogue = trainingDialogue.isPerformed()
             if isTrainingDialogue == 1 then 
                 println("")
                 println("What aspect do you want to include with the training?")
                 println("1. Gamification")
                 println("2. Rewards, such as gift cards")
                 println("3. Certificates")
                 print("<color=#00B7AC>Please enter your selection:</color> ")
                 whichTraining = waitForTerminalInput()
                 while One2Three(whichTraining.val) == 0
                     whichTraining = waitForTerminalInput()
                     wait(0.1)
                 end while
                 nitroCaption(1)
                 break
             end if
             wait(0.1)
             end while
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "Excellent, this really encourages your users.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             landingDialogue.steps.push(setupSequence)
     
         else if whichLanding == "2" then //Goes to 404
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "This has mixed results. Some employees realize this indicates a possible phishing email and report, but others don’t.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             landingDialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "Without more training, there isn’t much improvement in detecting phishing emails.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             landingDialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "Therefore, the organization suffers a ransomware attack within the next 6 months. The End.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             landingDialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 fail_mission()
             end function
             landingDialogue.steps.push(setupSequence)
         end if
     
         setupSequence = new SequenceStep
         setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
         setupSequence.action = function()
             nitroApp("BusinessRascal", "Everything is set up and the awareness campaign has been running for a few months.", "_", 1)
             wait(1.2)
             nitroCaption(1)
         end function
         landingDialogue.steps.push(setupSequence)
     
         setupSequence = new SequenceStep
         setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
         setupSequence.action = function()
             nitroApp("BusinessRascal", "Let’s roll for evaluation.%0A%0A1-2: The reporting mechanism was not in place%0A3-7: A culture of awareness has been created.%0A8-9: Only one campaign was administered.%0A10: A Rakshasa uses mind control on employees.", "_", 1)
             wait(1.2)
             nitroCaption(1)
         end function
         landingDialogue.steps.push(setupSequence)
     
         setupSequence = new SequenceStep
         setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
         setupSequence.action = function()
             strFinalRoll = "You rolled a " + globals.finalRoll
             nitroApp("BusinessRascal", strFinalRoll, "_", 1)
             wait(1.2)
             nitroCaption(1)
         end function
         landingDialogue.steps.push(setupSequence)
     
         if finalRoll >= 1 and finalRoll < 3 then //No reporting
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "Employees got discouraged and don’t see the point in trying, saying IT will handle it.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             landingDialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "Therefore, the organization suffers a ransomware attack within the next 6 months. The End.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             landingDialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 fail_mission()
             end function
             landingDialogue.steps.push(setupSequence)
     
         else if finalRoll >= 3 and finalRoll < 8 then //Everything is Awesome
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "You’ve successfully created a culture of  awareness and reporting. Great job!", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             landingDialogue.steps.push(setupSequence)
     
         else if finalRoll >= 8 and finalRoll <= 9 then //Only one
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "Despite your best efforts, after the initial campaign was executed no others were approved.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             landingDialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "Therefore, the organization suffers a ransomware attack within the next 6 months. The End.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             landingDialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 fail_mission()
             end function
             landingDialogue.steps.push(setupSequence)
     
         else if finalRoll == 10 then //Rakshasa
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "A Rakshasa uses mind control on employees, making them click on phishing emails.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             landingDialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 nitroApp("BusinessRascal", "This is an example of how we cannot predict every scenario. Sometimes the unexpected happens, which is why our goal should be cyber resiliency. The End.", "_", 1)
                 wait(1.2)
                 nitroCaption(1)
             end function
             landingDialogue.steps.push(setupSequence)
     
             setupSequence = new SequenceStep
             setupSequence.commandWaiting = getCommandWaiting("nitrocaption", "", [ "1" ])
             setupSequence.action = function()
                 fail_mission()
             end function
             landingDialogue.steps.push(setupSequence)
         end if 
     
         while true
            isLandingDialogue = landingDialogue.isPerformed()
     
            if isLandingDialogue == 1 then
               break
            end if 
         wait(0.1)
         end while
end if //This should be the very last end if for choosenPath
     