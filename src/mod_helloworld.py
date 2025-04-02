# mod_hello_world.py
# Shows "Hello World" message in WOT and displays tank equipment above shells

import BigWorld
from debug_utils import LOG_NOTE

def init():
    LOG_NOTE("Hello World mod initialized!")
    # Display a notification in the game after 5 seconds
    BigWorld.callback(5, show_message)

def show_message():
    try:
        # Import here to avoid load order issues
        from gui import SystemMessages
        
        # Display a message in the game
        SystemMessages.pushMessage('Hello World from WOT mod!', SystemMessages.SM_TYPE.Warning)
        LOG_NOTE("Hello World message displayed!")
    except Exception as e:
        LOG_NOTE("Error displaying Hello World message: %s" % e)