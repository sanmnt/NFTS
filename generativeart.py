from PIL import Image
from PIL import ImageFont
from PIL import ImageDraw


for i in range(10):
    img = Image.open("/run/media/david/SHARED DATA/testing/original.jpg")
    draw = ImageDraw.Draw(img)
    font = ImageFont.truetype("/usr/share/fonts/TTF/Hack-Bold.ttf", 50)
    draw.text((5, 5),str(i),(0,0,0),font=font)
    img.save('/run/media/david/SHARED DATA/testing/'+str(i)+'.jpg')
