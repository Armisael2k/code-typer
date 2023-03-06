from pynput import keyboard
import time


def init():
    file1 = open('code.txt', 'r')
    
    while True:
        line = file1.readline()
        if not line:
            break
        time.sleep(0.1)
        keyboard.Controller().type(line)
    
    file1.close()

def on_release(key):
    try:
        if (key == keyboard.Key.ctrl_l):
            time.sleep(1)
            init()
            exit()
    except AttributeError:
        print('special key {0} released'.format(
            key))

# Collect events until released
with keyboard.Listener(
        on_release=on_release) as listener:
    listener.join()

# ...or, in a non-blocking fashion:
listener = keyboard.Listener(
    on_release=on_release)
listener.start()    