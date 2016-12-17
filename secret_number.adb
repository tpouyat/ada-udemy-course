with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;

procedure Secret_Number is
		Secret : Integer;
		Gen : Generator;
		Choice : Integer;
		Choice_String : String(1 .. 3) := (others => ' ');
		Last : Integer;
	begin
		reset(Gen);
		Secret := Integer(random(Gen)*100.0+0.5);
		Choice := Secret - 1;
		while (Choice /= Secret) loop
			Put_Line("Please enter a number between 1 and 100");
			Get_Line(Choice_String, Last);
			Choice := Integer'Value(Choice_String);
			
			if (Choice < Secret) then
				Put_Line("Choice too small");
			elsif (Choice > Secret) then
				Put_Line("Choice too big");
			else
				Put_Line("Found it !");
			end if;
		end loop;
end Secret_Number;
