﻿Class CompilerFunction
	Name.s
	Declaration.s
EndClass


Procedure NewCompilerFunction(Name.s)
	Protected *this.CompilerFunction = AllocateMemory(SizeOf(CompilerFunction))
	*this\Name = Trim(StringField(Name, 1, "("))
	*this\Declaration = Trim(Name)
	ProcedureReturn *this
EndProcedure

Procedure.s CompilerFunction_GetName(*this.CompilerFunction)
	ProcedureReturn *this\Name
EndProcedure

Procedure FreeCompilerFunction(*this.CompilerFunction)
	FreeMemory(*this)
EndProcedure

