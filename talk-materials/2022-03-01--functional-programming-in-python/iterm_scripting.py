"""
Script to control background images of iTerm window.

Despite being written for a presentation on functional programming, this uses
global variables, mutates a list, and is entirely dedicated to producing a side
effect.

Meant to be used as an interactive session to control the background images,
which is why running it drops into pdb.
"""
from pathlib import Path
import pdb
import iterm2

IMG_DIR = Path(__file__).parent / "images"
WINDOW_NAME = "Presentation"

BLANK = ""
LOGO = "18fascii.png"
SIDE = "side-effects.png"  # https://xkcd.com/1790/
CHANGE = "parmenides.png"  # https://existentialcomics.com/comic/181
rotation = [LOGO, BLANK, SIDE, BLANK, CHANGE, BLANK]


def set_image(image):
    location = str(IMG_DIR / image) if image else ""

    async def main(connection):
        profiles = await iterm2.Profile.async_get(connection)
        pb = [p for p in profiles if p.name == WINDOW_NAME][0]
        status = await pb.async_set_background_image_location(location)
        return status

    return iterm2.run_until_complete(main)


def ni():
    image = rotation.pop(0) if rotation else BLANK
    set_image(image)


if __name__ == "__main__":
    pdb.set_trace()
