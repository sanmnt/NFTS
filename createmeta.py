import sys


for i in range(10):
    original_stdout = sys.stdout
    filename = "/run/media/david/SHARED DATA/testing/"+str(i)+".json"

    with open(filename, 'w') as f:
        sys.stdout = f
        print('{')
        print("\t\"description\": \"CPP\",")
        print("\t\"image\": \"https://github.com/sanmnt/NFTS/tree/main/testing/"+str(i)+".jpg\",")
        print("\t\"name\": \"CPP"+str(i)+"\",")
        print('}')
        sys.stdout = original_stdout
