program Diamond_shape_with_characters;

uses crt;

var n, j, i, p, ch : integer;
c : char;

begin
    clrscr;
    
    write('From 1 to 26, choose size n=');
    readln(n);
    
    for j := 1 to 2 * n - 1 do
    begin
        for i := 1 to 4 * n - 3 do
        begin
            ch := 0;
            for p := 0 to n - 1 - abs(j - n) do
                if (i = 2 * n - 1 - 2 * p) or (i = 2 * n - 1 + 2 * p) then
                begin
                    c := chr(ord('a') + abs(j - n) + p);
	                write(c);
	                ch := 1;
                end;
            if ch = 0 then
                write('-');
            
        end;
        
        writeln();
    end;
    
    readln
end.
