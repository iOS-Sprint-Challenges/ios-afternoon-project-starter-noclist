# Afternoon Project - NOC List

Greetings agent. Your mission is a top priority for the agency. Please read below for further info.

Our undercover agents in Eastern Europe are in trouble. The NOC list (Non-official cover) has been leaked and we need our directors to have quick access to the information so we can try to mitigate the damage. Some of the agents on the list have an access level that makes them privy to very sensitive information. We need an application that will present the NOC list's information in a quickly digestible format. Our top agents have been working on it, but we need this done ASAP and you've proven yourself to be quite capable of a quick turnaround.

The Director herself has given you access to all the agency's resources to complete this mission. We're counting on you agent.

Here is the complete NOC List. This information is classified at the highest levels, so guard it very carefully.

* coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: true
* coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: false
* coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false
* coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true
* coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false
* coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false
* coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true
* coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false
* coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true
* coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true
* coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false

This message will self destruct in 5 seconds.

## Objectives

After completing this assignment, you should...
* be able to use a UITableViewController to show a simple list of elements
* be able to pass data from one view controller to another through the segue
* gain proficiency in grouping like data together into a structure that can be easily moved around inside the application through the use of tuples.

## Required Features

### Storyboard Tasks

* The table view cell prototype should have its reuse identifier set (hint: this should match the identifier set in `cellForRowAtIndexPath`)

### Code Tasks

#### In `NOCListTableViewController.swift`
1. Create a property at the top of the class called `agents`. It should be a `private` `var` and the data type is `Array` with member elements of the following type: `(coverName: String, realName: String, accessLevel: Int, compromised: Bool)`.
2. In the function `viewDidLoad`, add the following:
    * call the function `loadNOCList()` (this function does not yet exist, but will be created in the next step)
3. Create a `private` function at the bottom of your class called `loadNOCList()`.
    * Inside the function, create a tuple for each agent and store each one in its own `let` constant.
    * Once all the tuples are created and stored in their respective constants, add them to the array `agents` you created previously at the top of the class.
4. In the `numberOfRowsInSection` method, return the count of the agents array so the appropriate number of cells is generated.
5. In the `cellForRowAt` method:
    * add the cell reuse identifier string to the call to dequeue a cell. It can be found by going to the storyboard and clicking on the cell prototype and looking in the attributes inspector.
    * Fetch a single agent from the array of `agents`. Use the `indexPath` object to determine which agent should be fetched.
    * Using the cell you dequeued at the top of the function, set the `textLabel` and `detailTextLabel` with the agent's `coverName` and `realName` respectively.
    * To change the cell color, use the state of the agent's `compromised` property. If they are compromised, change the cell's background with the following:
        * `cell.backgroundColor = UIColor(hue: 0, saturation: 0.4, brightness: 0.9, alpha: 1.0)`
    * If the agent isn't compromised, set the background to white. You can just use `.white` like so:
        * `cell.backgroundColor = .white`
    * Lastly, make sure the cell object is being returned.
6. Add a function in the data source section called `titleForFooterInSection`. You should be able to just type the name into Xcode and allow it to complete the function signature for you. Once you see the right one appearing in the list of results, just press [enter] to let it stub out the method.
7. Inside the above function you just added, return a string that includes interpolation. See the string below:
    * `"\(compromisedCount()) agents compromised"`
    * The above string will call the function referenced within `\()` and once it returns an answer, that answer will be converted to a string and placed in the position where the interpolation is within the larger string.
8. At this point, the app should be runnable and should display the agents in a tableview. Run the app in the simulator to make sure the app's feature set is stable.

#### In `AgentDetailViewController.swift`
9. Create an `agent` property of the following type:
    * `(coverName: String, realName: String, accessLevel: Int, compromised: Bool)`
    * Notice this is the same type as the members of the `agents` array in the other view controller.
10. In the `viewDidLoad` method:
    * set the `text` properties of the three outlets to their respective values from the `agent` property.
    * If the agent is compromised, change the background of the view to the same red color you used in the tableview cell.
        * `view.backgroundColor = `