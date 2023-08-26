#알겠어 선이형, iframe이 그렇게 위험하면, 내가 그걸 안쓰는 소스코드를 추가로 넣을께.

ent = '<li> <iframe width="640" height="420" src="https://playentry.org/iframe/64c3c577f8fbe700373bf007" frameborder="0"></iframe> </li>'

o = open

with o('index.html') as f:
    x = f.read().replace(ent, '<!--' + ent + '-->')

with o('index.html', 'w') as f:
    f.write(x)