(* Plc interpreter main file *)

CM.make("$/basis.cm");
CM.make("$/ml-yacc-lib.cm");

use "Environ.sml";
use "Absyn.sml";
use "PlcParserAux.sml";
use "PlcParser.yacc.sig";
use "PlcParser.yacc.sml";
use "PlcLexer.lex.sml";
use "Parse.sml";
use "PlcInterp.sml";
use "PlcChecker.sml";

Control.Print.printLength := 1000;
Control.Print.printDepth  := 1000;
Control.Print.stringDepth := 1000;

open PlcFrontEnd;

fun run exp =
        let
            val expType = teval exp []
            val expResult = eval exp []
        in
            val2string(expResult) ^ " : " ^ type2string(expType)
        end
        (*INTERPRETER EXCEPTIONS*)
        handle Impossible => "Impossible: esse erro nao deveria acontecer"
        | HDEmptySeq =>  "HDEmptySeq: nao e possivel acessar head"
        | TLEmptySeq =>  "TLEmptySeq: nao e possivel acessar tail"
        | ValueNotFoundInMatch =>  "ValueNotFoundInMatch: nao e possivel encontrar valor no casamento"
        | NotAFunc =>  "NotAFunc: nao e uma funcao"
        (*TYPE CHECKER EXCEPTIONS*)
        | EmptySeq =>  "EmptySeq: sequencia vazia"
        | UnknownType => "UnknownType: tipo nao conhecido"
        | NotEqTypes =>  "NotEqTypes: comparacao entre tipos distintos"
        | WrongRetType =>  "WrongRetType: diferente tipo de declaracao"
        | DiffBrTypes =>  "DiffBrTypes: tipos br distintos"
        | IfCondNotBool =>  "IfCondNotBool: nao e permitido condicao nao booleana"
        | NoMatchResults =>  "NoMatchResults: casamento sem resultados"
        | MatchResTypeDiff =>  "MatchResTypeDiff: tipos distintos no casamento"
        | MatchCondTypesDiff =>  "MatchCondTypesDiff: diferentes tipos condicoes no casamento"
        | CallTypeMisM =>  "CallTypeMisM: nao e possivel chamada de funcao sem tipo"
        | NotFunc =>  "NotFunc: nao e funcao"
        | ListOutOfRange =>  "ListOutOfRange: escopo da lista foi ultrapassado"
        | OpNonList =>  "OpNonList: opcao nao e uma lista"
        (*ENVIRON EXCEPTIONS*)
        | SymbolNotFound => "SymbolNotFound: simbolo nao encontrado"
        (*UNKNOWN EXCEPTIONS*)
        | _ => "UnknownError: erro desconhecido"