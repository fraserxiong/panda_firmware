# Comma Pedal Tunning instruction
---
The voltage scale isn't right when the Pedal is not working properly. The tuning is a way to scale the voltage correctly.
**Warning: Please ensure you are in accessory mode (for most ICE vehicles and some EVs) and in PARK  with the parking brake on. Double-check to make sure nothing is in motion and will not be in motion.**
Tip: You might need help from a friend or family to press the Pedal when taking voltage measurements.
## Data Gathering
1. Mesure the baseline voltage without a pedal. You can use the connector in the Pedal and expose the connection for probing.
   1. Preparation:
      1. If you are not comfortable with opening the case of the Pedal, You can find a spare pair connector here (I can waive your shipping for pedal tuning, pls contact me on Discord): [Spare plain connector](https://shop.tlbb.ca/products/copy-of-connectors-for-honda-toyota-gm-vw-plain-connector)
      2. Cut the zip ties on the Pedal and open the case.
      3. Prepare a piece of cardboard, a pen, a stapler or metal wires and a roll of tape.
         1. You will see the label on the pedal PCB board in the middle of two sides of the connector. 
         2. Write them down on the cardboard top to bottom in the same order as on the Pedal. 
         3. Leave space between each label so we can connect the connector without covering the label.
         4. Example: ![Cardboard1](/img/cardboard1.jpg)
      4. unscrew the two sides of the connectors one by one.
         1. Tape each connector to the label on the cardboard.
         2. Make sure one side of the connector can touch the other.
         3. Example: ![Cardboard2](/img/cardboard2.jpg)
         4. Keep the screws in one place so you don't lose them. They are M3 screws, just in case you lose one.
      5. Staple or twist metal wires on both sides so they connect.
         1. Example: ![Cardboard3](/img/cardboard3.jpg)
      6. Make a copy of the file from here: [Pedal Tune google sheets Template](https://docs.google.com/spreadsheets/d/1ouTLbtZo-gkmOsDZUQalfS_RvJQIARuTajHyPTTipL0/edit?usp=sharing)
         1. Name the file with the format of: Discord_name-Car_Year-Car_Make-Car_Model
            1. Example: tinybear-2019-Toyota-sienna
         2. Share the file to: tlbbstudio@gmail.com
         3. You can also download it as CSV OR XLS file, edit locally and send it to tinybear on Discord or email it to tlbbstudio@gmail.com with the title "pedal tuning".
         4. It is recommended that you print it out and fill in the value in writing so you don't mess up what firmware you flash when you switch around the program on your computer.
         5. A PDF version is in this repo.
      7. You only need to connect the connector you made in the preparation section. No comma device is needed.
   2. Measurement (Using multimeter):
      1. Measure the voltage according to the Google Sheets baseline measurement section.
      2. A picture reference of where to measure is given in the Google Sheets.
2. Flash The firmware and measure the voltage with the Pedal installed.
   1. Preparation:
      1. Restore the Pedal if you use the connector pair for baseline measurement.
         1. If you unscrew the two sides of the connectors, screw in the connectors in the order you have on the cardboard. 
         2. If you messed up the order, you can always ask me on Discord for the connection order.
         3. You will find the number label on each wire on the connector and the letter label on the Pedal PCB board. The connection order matches the number to the letter.
      2. You need a DFU key to flash the firmware. You can find it here (I can waive your shipping for pedal tuning, pls contact me on Discord): [DFU key](https://shop.tlbb.ca/products/dfu-key)
      3. You only need to connect the comma pedal. No comma device is needed.
   2. Firmware flashing:
      1. Follow this video guide to flash your Pedal: [Flash Pedal in DFU mode](https://youtu.be/DNf0OGwXUUQ)
      2. You can find the firmware in this repo OR here: [Pedal firmware for tuning](https://github.com/fraserxiong/panda_firmware/tree/Pedal_tune/Firmware)
      3. The order of firmware flashed does not matter. Here is the list of firmware:
         1. Base (Base value)
         2. Base100 (Base value + 100)
         3. Base200 (Base value + 200)
         4. Base-100 (Base value - 100)
         5. Base-200 (Base value - 200)
         6. BaseX105 (Base value x 1.05)
         7. BaseX110 (Base value x 1.10)
         8. BaseX95 (Base value x 0.95)
         9. BaseX90 (Base value x 0.90)
   3. Measurement (Using multimeter):
      1. Connect The Pedal after you flash the firmware.
      2. Measure the voltage according to Google Sheets. Please ensure you put the value in the correct section for the firmware.
      3. A picture reference of where to measure is given in the Google Sheets.
3. Once done, notify me by email OR on Discord so I can gather data and calculate the tune value.
   1. It is best to have at least 3 reports of each model year to calculate the tuning value, but 1 report can also be used to calculate the tune.
   2. The tune only applies to input from the accelerator pedal, the command from openpilot will not be changed. If you have an issue with adaptive cruise control using openpilot, this is not what you are looking for. 