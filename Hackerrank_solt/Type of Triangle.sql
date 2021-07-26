select IF(t.A + t.B > t.C,
	 IF((t.A = t.B) and (t.B = t.C),
	    "Equilateral",
	   IF((t.A = t.B) or (t.B = t.C) or (t.C = t.A),
	      "Isosceles",
	     "Scalene"))
	 "Not A Triangle")
from TRIANGLES t;
