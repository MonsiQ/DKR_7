uses GraphABC;
uses fractals;
var y,x,n,g:integer;
 procedure KeyDown(key: integer);
begin
case key of
VK_Up: begin y := y - 5; end;
VK_Down: begin y += 5; end;
VK_Left: begin x := x - 5; end;
VK_Right: begin x := x + 5; end;
VK_A: x := x - 50;
VK_D: x := x + 50;
VK_W: y := y - 50;
VK_S: y := y + 50;
VK_Z: n -= 5;
VK_X: n += 5;
VK_C: g += 1;
VK_V: g -= 1;
end;
Window.Clear;
serp_square(x, y, n, g);
redraw;
end;
begin
    var center := window.center;
    moveto(center.x - 200, center.y - 100);
    a := 0;
    n:=300;
    writeln('Введите глубину (Не больше 7)');
    readln(g);
    writeln('Изменить глубину на "Z" и "X"(Z-уменьшение, X-увеличение)');
    writeln('Изменить масштаб на "C" и "V"(C-уменьшение V-увеличение)');
    writeln('Перемещение на стрелки и WASD');
    sleep(5000);
    window.Clear;
    serp_square(x, y, n, g);
    onKeyDown += keydown;
end.