# from google_images_download import google_images_download
# import json







recyclable = [
        "paper",
        "newspaper",
        "magazine",
        "catalog",
        "map",
        "phonebook",
        "mail",
        "paperboard",
        "tissue",
        "box",
        "card",
        "folder",
        "can",
        "straw",
        "carton",
        "book",
        "cup",
        "envelope",
        "cardboard",
        "vase",
        "plastic",
        "boxboard",
        "box",
        "metal",
        "tin",
        "aluminum",
        "dish",
        "plate",
        "tray",
        "cookware",
        "copper",
        "jewelry",
        "key",
        "steel",
        "pot",
        "bucket",
        "pan",
        "tin",
        "pyrex",
        "utensil",
        "glass",
        "bottle",
        "jar",
        "cup",
        "jug",
        "metal",
        "spoon",
        "fork",
        "office paper",
        "blind",
        "curtain",
    ]

key = ', '.join(recyclable)
print(key)

config = {
    "Records": [
        {
            "keywords": key, 
            "limit": 20,
            "size": "medium",
            "type": "photo",
            "print_urls": false
        }
    ]
}





#response = google_images_download.googleimagesdownload()
#absolute_image_paths = response.download(classx)
    

special = [
    "battery",
    "computer",
    "electronics",
    "bulb",
    "microfilm",
    "cell phone",
    "phone",
    "mobile phone",
    "equipment",
    "inkjet",
    "cartridge",
    "inkjet cardridge",
    "cd",
    "disk",
    "tire",
    "ink cartridge",
    "tv",
    "power cord",
    "personal computer",
    "laptop",
    "portable computer",
]

compost = [
    "fruit",
    "vegetable",
    "apple",
    "pear",
    "banana",
    "cucumber",
    "strawberry",
    "apricots",
    "avocado",
    "blackberry",
    "cherry",
    "coconut",
    "date",
    "durian",
    "dragonfruit",
    "grape",
    "grapefruit",
    "kiwi",
    "lime",
    "lemon",
    "lychee",
    "mango",
    "melon",
    "nectarine",
    "olive",
    "orange",
    "peach",
    "pineapple",
    "plum",
    "pomegranate",
    "pomelo",
    "raspberries",
    "watermelon",
    "broccoli",
    "cabbage",
    "celery",
    "corn",
    "basil",
    "rosemary",
    "sage",
    "thyme",
    "kale",
    "lettuce",
    "mushroom",
    "onion",
    "pepper",
    "ginger",
    "wasabi",
    "squash",
    "tomato",
    "potato",
    "hair",
    "wood",
    "popcorn",
    "leaves",
    "egg",
    "pasta",
    "meat",
    "soy",
    "pumpkin",
    "nut",
    "cheese",
    "toothpicks",
    "pickles",
    "feather",
    "fur",
    "bone",
]

