.\\" auto-generated by docbook2man-spec $Revision: 1.25 $
.TH "MOVE" "l" "2003-11-02" "SQL - Language Statements" "SQL Commands"
.SH NAME
MOVE \- position a cursor

.SH SYNOPSIS
.sp
.nf
MOVE [ \fIdirection\fR { FROM | IN } ] \fIcursorname\fR
.sp
.fi
.SH "DESCRIPTION"
.PP
\fBMOVE\fR repositions a cursor without retrieving any data.
\fBMOVE\fR works exactly like the \fBFETCH\fR
command, except it only positions the cursor and does not return rows.
.PP
Refer to 
FETCH [\fBfetch\fR(l)]
for details on syntax and usage.
.SH "OUTPUTS"
.PP
On successful completion, a \fBMOVE\fR command returns a command
tag of the form
.sp
.nf
MOVE \fIcount\fR
.sp
.fi
The \fIcount\fR is the number
of rows moved over (possibly zero).
.SH "EXAMPLES"
.sp
.nf
BEGIN WORK;
DECLARE liahona CURSOR FOR SELECT * FROM films;

-- Skip the first 5 rows:
MOVE FORWARD 5 IN liahona;
MOVE 5

-- Fetch the 6th row from the cursor liahona:
FETCH 1 FROM liahona;
 code  | title  | did | date_prod  |  kind  |  len
-------+--------+-----+------------+--------+-------
 P_303 | 48 Hrs | 103 | 1982-10-22 | Action | 01:37
(1 row)

-- Close the cursor liahona and end the transaction:
CLOSE liahona;
COMMIT WORK;
.sp
.fi
.SH "COMPATIBILITY"
.PP
There is no \fBMOVE\fR statement in the SQL standard.