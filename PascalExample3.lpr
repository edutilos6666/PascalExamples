program PascalExample3;

type
  day = integer;
  SUMMER = (April, May, June, July, September);
COLORS = (Red, Green, Blue, Yellow, Magenta, Cyan, Black, White);
TRANSPORT = (Bus, Train, Airplane, Ship);
  months = (Jan , Feb , Mar, Apr, Ma, Jun, Jul, Aug, Sep, Oct, Nov, Dec);
  { winter =   Jan ... Apr;  -> doesn't work }

const
   PI = 3.14;
   NAME = 'foobar';
   AGE = 10 ;
   WAGE = 100.0;

  var
    bday: day;
    favMonth:SUMMER;
    favColor:COLORS;
    favTransport:TRANSPORT;

begin
  bday := 10 ;
  writeln('day = ', bday);
  writeln('PI = ', PI);
  writeln('NAME = ', NAME);
  writeln('AGE = ', AGE);
  writeln('WAGE = ', wage);
  favMonth := April;
  favColor := COLORS.Green;
  favTransport := TRANSPORT.Ship;
  writeln('favMonth = ', favMonth);
  writeln('favColor = ', favColor);
  writeln('favTransport = ', favTransport);
end.

