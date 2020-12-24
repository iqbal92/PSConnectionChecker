# PSConnectionChecker

PSConnection frame work is use to check wifi and cellular connection is available or not

HOW TO USE :

//First of all drag and drop PSConnectionfinder.framework

//Go to general  -> Frameworks and Library Then select PSConnectionfinder.framework   -> Embeded without signing


        import PSConnectionFinder


	      //MARK:- StartMonitor function is monitor your network when app is running

	      PSConnection.shared.startMonitoring()

        //Then Paste Below code on app launch or your first view controller of app

	      PSConnection.shared.netStatusChangeHandler = {
            DispatchQueue.main.async { [unowned self] in
                lblConnection.text = PSConnection.shared.isConnected ? "Connected" : "Not Connected"
            }
        }
