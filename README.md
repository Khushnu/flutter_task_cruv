# flutter_task_cruv

Flutter train seat booking task 

the demo of the app and description are below

https://github.com/Khushnu/flutter_task_cruv/assets/34332682/8edd9310-f256-4c4e-8f56-5315f45716cf

The indian railway seat booking app created using flutter framework with provider statemanagement 
the app contain two screens one is seat selection ui and other one is reserved seats ui 
the complexity of rendering seats was little complex it is 2d array so to takle this issue i create a cabin seat widget where i passed seat index type of seat and search text
the then on selection screen listview.builder used to create seats now to render seats upper seat no 1, middle no 2, lower seat no 3, side up seat no 7 and side up seats etc. 
the cabin seat widget returned from listview.builder. the cabin seat widget required index, show seat no like 1, 2, 3, and 7 the logic is the cabin seat widget expect index, 
now the index of listview assign to cabin seat widget, to show seat no 1, 2, 3, and 7 .. in cabin seat no 1 index:  (1 + index * 8) for seat 2 (2 + index * 8)  . which output like 1,2,3
same for seat no 7 index of 7 + index * 8. it show the side low for side low the index is 8 + index * 8. now to select the seats i used logic in cabin seat widget on tap function
that if the reservedseat.contain(seatmodel) then it should remove it the remove function from provider used  else the add function from provider used. 
To search the seat by number i already pass the string searchtext. i create a function in provider where i compare the searchbar.text == seatmodel.search then it will highlight that seat
the search function of provider i called in inouttextformfieldwidget onchanged where the search function accept a string which is (v) and setstate used to update the ui. 
the confirm selection button used to navigate to reserved screen where i watched the reservedlist with help of provider the ui contain the seats which was selected from selection ui 
the reserved screen shows the total reserved seats and expansion tile widget to make the ui more attractive. to hide the keyboard the focusscope function was used when to tap anywhere 
on selection screen it hide the keyboard also the icon i used in searchbar when it clicked the searchbar is cleared and the keyboard will hide. 

thank you.
