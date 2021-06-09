from jinja2 import Template
import sys

#print( sys.argv[:] )

if len(sys.argv) > 2:
    pos = sys.argv[1].find("jinja2.")

    if pos == -1:
        sys.exit()

    file_N = sys.argv[1][0:pos] + sys.argv[1][pos+7::]


    template = Template(sys.argv[2],  trim_blocks=True)

    text_file = open(file_N, "w")
    text_file.write(template.render())
    text_file.close()
elif len(sys.argv) == 2:
    pos = sys.argv[1].find("jinja2.")

    if pos == -1:
        sys.exit()

    file_N = sys.argv[1][0:pos] + sys.argv[1][pos+7::]

    with open(sys.argv[1], 'r') as file:
        data = file.read()

    template = Template(data,  trim_blocks=True)

    text_file = open(file_N, "w")
    text_file.write(template.render())
    text_file.close()

