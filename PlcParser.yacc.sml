functor PlcParserLrValsFun(structure Token : TOKEN)
 : sig structure ParserData : PARSER_DATA
       structure Tokens : PlcParser_TOKENS
   end
 = 
struct
structure ParserData=
struct
structure Header = 
struct

end
structure LrTable = Token.LrTable
structure Token = Token
local open LrTable in 
val table=let val actionRows =
"\
\\001\000\001\000\024\000\003\000\023\000\005\000\022\000\008\000\021\000\
\\010\000\020\000\012\000\019\000\013\000\018\000\014\000\017\000\
\\015\000\016\000\020\000\015\000\021\000\014\000\022\000\013\000\
\\023\000\012\000\025\000\011\000\039\000\010\000\041\000\009\000\
\\045\000\008\000\000\000\
\\001\000\002\000\109\000\011\000\038\000\024\000\037\000\025\000\036\000\
\\026\000\035\000\027\000\034\000\028\000\033\000\029\000\032\000\
\\030\000\031\000\031\000\030\000\032\000\029\000\034\000\028\000\
\\037\000\108\000\043\000\027\000\000\000\
\\001\000\002\000\109\000\037\000\108\000\000\000\
\\001\000\002\000\125\000\011\000\038\000\024\000\037\000\025\000\036\000\
\\026\000\035\000\027\000\034\000\028\000\033\000\029\000\032\000\
\\030\000\031\000\031\000\030\000\032\000\029\000\034\000\028\000\
\\043\000\027\000\000\000\
\\001\000\003\000\023\000\005\000\022\000\008\000\021\000\010\000\020\000\
\\012\000\019\000\013\000\018\000\014\000\017\000\015\000\016\000\
\\016\000\123\000\020\000\015\000\021\000\014\000\023\000\012\000\
\\025\000\011\000\039\000\010\000\041\000\009\000\045\000\008\000\000\000\
\\001\000\003\000\023\000\005\000\022\000\008\000\021\000\010\000\020\000\
\\012\000\019\000\013\000\018\000\014\000\017\000\015\000\016\000\
\\017\000\049\000\018\000\048\000\019\000\047\000\020\000\015\000\
\\021\000\014\000\023\000\012\000\025\000\011\000\039\000\046\000\
\\040\000\045\000\041\000\009\000\043\000\044\000\045\000\008\000\000\000\
\\001\000\003\000\023\000\005\000\022\000\008\000\021\000\010\000\020\000\
\\012\000\019\000\013\000\018\000\014\000\017\000\015\000\016\000\
\\020\000\015\000\021\000\014\000\023\000\012\000\025\000\011\000\
\\039\000\010\000\041\000\009\000\045\000\008\000\000\000\
\\001\000\004\000\052\000\023\000\051\000\000\000\
\\001\000\006\000\088\000\011\000\038\000\024\000\037\000\025\000\036\000\
\\026\000\035\000\027\000\034\000\028\000\033\000\029\000\032\000\
\\030\000\031\000\031\000\030\000\032\000\029\000\034\000\028\000\
\\043\000\027\000\000\000\
\\001\000\007\000\124\000\011\000\038\000\024\000\037\000\025\000\036\000\
\\026\000\035\000\027\000\034\000\028\000\033\000\029\000\032\000\
\\030\000\031\000\031\000\030\000\032\000\029\000\034\000\028\000\
\\043\000\027\000\000\000\
\\001\000\009\000\087\000\011\000\038\000\024\000\037\000\025\000\036\000\
\\026\000\035\000\027\000\034\000\028\000\033\000\029\000\032\000\
\\030\000\031\000\031\000\030\000\032\000\029\000\034\000\028\000\
\\043\000\027\000\000\000\
\\001\000\011\000\038\000\024\000\037\000\025\000\036\000\026\000\035\000\
\\027\000\034\000\028\000\033\000\029\000\032\000\030\000\031\000\
\\031\000\030\000\032\000\029\000\034\000\028\000\035\000\080\000\
\\040\000\079\000\043\000\027\000\000\000\
\\001\000\011\000\038\000\024\000\037\000\025\000\036\000\026\000\035\000\
\\027\000\034\000\028\000\033\000\029\000\032\000\030\000\031\000\
\\031\000\030\000\032\000\029\000\034\000\028\000\042\000\142\000\
\\043\000\027\000\046\000\142\000\000\000\
\\001\000\011\000\038\000\024\000\037\000\025\000\036\000\026\000\035\000\
\\027\000\034\000\028\000\033\000\029\000\032\000\030\000\031\000\
\\031\000\030\000\032\000\029\000\034\000\127\000\043\000\027\000\000\000\
\\001\000\011\000\038\000\024\000\037\000\025\000\036\000\026\000\035\000\
\\027\000\034\000\028\000\033\000\029\000\032\000\030\000\031\000\
\\031\000\030\000\032\000\029\000\034\000\128\000\043\000\027\000\000\000\
\\001\000\011\000\038\000\024\000\037\000\025\000\036\000\026\000\035\000\
\\027\000\034\000\028\000\033\000\029\000\032\000\030\000\031\000\
\\031\000\030\000\032\000\029\000\034\000\139\000\043\000\027\000\000\000\
\\001\000\017\000\049\000\018\000\048\000\019\000\047\000\039\000\082\000\
\\040\000\093\000\043\000\044\000\000\000\
\\001\000\017\000\049\000\018\000\048\000\019\000\047\000\039\000\082\000\
\\043\000\044\000\000\000\
\\001\000\023\000\062\000\000\000\
\\001\000\023\000\086\000\000\000\
\\001\000\023\000\112\000\036\000\077\000\000\000\
\\001\000\028\000\094\000\000\000\
\\001\000\028\000\105\000\000\000\
\\001\000\028\000\135\000\036\000\077\000\000\000\
\\001\000\033\000\120\000\000\000\
\\001\000\035\000\104\000\036\000\077\000\040\000\103\000\000\000\
\\001\000\035\000\104\000\036\000\077\000\040\000\103\000\043\000\076\000\000\000\
\\001\000\036\000\077\000\043\000\076\000\000\000\
\\001\000\036\000\077\000\044\000\100\000\000\000\
\\001\000\036\000\130\000\000\000\
\\001\000\038\000\089\000\000\000\
\\001\000\039\000\061\000\000\000\
\\001\000\040\000\078\000\000\000\
\\001\000\040\000\102\000\000\000\
\\001\000\040\000\114\000\000\000\
\\001\000\040\000\116\000\000\000\
\\001\000\042\000\075\000\000\000\
\\001\000\044\000\095\000\000\000\
\\001\000\044\000\096\000\000\000\
\\001\000\045\000\063\000\000\000\
\\001\000\046\000\000\000\000\000\
\\142\000\011\000\038\000\024\000\037\000\025\000\036\000\026\000\035\000\
\\027\000\034\000\028\000\033\000\029\000\032\000\030\000\031\000\
\\031\000\030\000\032\000\029\000\034\000\028\000\043\000\027\000\000\000\
\\143\000\000\000\
\\144\000\000\000\
\\145\000\000\000\
\\146\000\000\000\
\\147\000\003\000\023\000\020\000\015\000\021\000\014\000\023\000\012\000\
\\039\000\010\000\041\000\009\000\045\000\008\000\000\000\
\\148\000\003\000\023\000\020\000\015\000\021\000\014\000\023\000\012\000\
\\039\000\010\000\041\000\009\000\045\000\008\000\000\000\
\\149\000\011\000\038\000\024\000\037\000\025\000\036\000\026\000\035\000\
\\027\000\034\000\028\000\033\000\029\000\032\000\030\000\031\000\
\\031\000\030\000\032\000\029\000\043\000\027\000\000\000\
\\150\000\000\000\
\\151\000\043\000\027\000\000\000\
\\152\000\024\000\037\000\025\000\036\000\026\000\035\000\027\000\034\000\
\\028\000\033\000\029\000\032\000\030\000\031\000\031\000\030\000\
\\032\000\029\000\043\000\027\000\000\000\
\\153\000\043\000\027\000\000\000\
\\154\000\043\000\027\000\000\000\
\\155\000\043\000\027\000\000\000\
\\156\000\043\000\027\000\000\000\
\\157\000\026\000\035\000\027\000\034\000\043\000\027\000\000\000\
\\158\000\026\000\035\000\027\000\034\000\043\000\027\000\000\000\
\\159\000\043\000\027\000\000\000\
\\160\000\043\000\027\000\000\000\
\\161\000\026\000\035\000\027\000\034\000\043\000\027\000\000\000\
\\162\000\024\000\037\000\025\000\036\000\026\000\035\000\027\000\034\000\
\\030\000\031\000\031\000\030\000\032\000\029\000\043\000\027\000\000\000\
\\163\000\024\000\037\000\025\000\036\000\026\000\035\000\027\000\034\000\
\\030\000\031\000\031\000\030\000\032\000\029\000\043\000\027\000\000\000\
\\164\000\024\000\037\000\025\000\036\000\026\000\035\000\027\000\034\000\
\\032\000\029\000\043\000\027\000\000\000\
\\165\000\024\000\037\000\025\000\036\000\026\000\035\000\027\000\034\000\
\\032\000\029\000\043\000\027\000\000\000\
\\166\000\024\000\037\000\025\000\036\000\026\000\035\000\027\000\034\000\
\\032\000\029\000\043\000\027\000\000\000\
\\167\000\011\000\038\000\024\000\037\000\025\000\036\000\026\000\035\000\
\\027\000\034\000\028\000\033\000\029\000\032\000\030\000\031\000\
\\031\000\030\000\032\000\029\000\034\000\028\000\043\000\027\000\000\000\
\\168\000\000\000\
\\169\000\000\000\
\\170\000\000\000\
\\171\000\000\000\
\\172\000\000\000\
\\173\000\000\000\
\\174\000\000\000\
\\175\000\000\000\
\\176\000\000\000\
\\177\000\000\000\
\\178\000\000\000\
\\179\000\000\000\
\\180\000\000\000\
\\181\000\000\000\
\\182\000\011\000\038\000\024\000\037\000\025\000\036\000\026\000\035\000\
\\027\000\034\000\028\000\033\000\029\000\032\000\030\000\031\000\
\\031\000\030\000\032\000\029\000\034\000\028\000\035\000\080\000\
\\043\000\027\000\000\000\
\\183\000\000\000\
\\184\000\000\000\
\\185\000\000\000\
\\186\000\011\000\038\000\024\000\037\000\025\000\036\000\026\000\035\000\
\\027\000\034\000\028\000\033\000\029\000\032\000\030\000\031\000\
\\031\000\030\000\032\000\029\000\034\000\028\000\043\000\027\000\000\000\
\\187\000\000\000\
\\188\000\000\000\
\\189\000\000\000\
\\190\000\035\000\113\000\000\000\
\\191\000\000\000\
\\192\000\000\000\
\\193\000\000\000\
\\194\000\000\000\
\\195\000\000\000\
\\196\000\036\000\077\000\000\000\
\\197\000\000\000\
\\198\000\000\000\
\\199\000\000\000\
\\200\000\000\000\
\\201\000\035\000\104\000\036\000\077\000\000\000\
\\202\000\000\000\
\"
val actionRowNumbers =
"\000\000\068\000\047\000\046\000\
\\041\000\042\000\078\000\000\000\
\\005\000\006\000\069\000\007\000\
\\077\000\076\000\006\000\006\000\
\\006\000\006\000\006\000\006\000\
\\006\000\031\000\018\000\075\000\
\\074\000\039\000\006\000\006\000\
\\006\000\006\000\006\000\006\000\
\\006\000\006\000\006\000\006\000\
\\006\000\036\000\092\000\027\000\
\\032\000\011\000\017\000\079\000\
\\005\000\098\000\097\000\096\000\
\\060\000\031\000\019\000\055\000\
\\054\000\053\000\052\000\050\000\
\\010\000\008\000\030\000\016\000\
\\021\000\037\000\066\000\065\000\
\\064\000\063\000\062\000\061\000\
\\059\000\058\000\057\000\056\000\
\\051\000\070\000\038\000\017\000\
\\071\000\072\000\006\000\028\000\
\\017\000\033\000\026\000\022\000\
\\031\000\002\000\006\000\006\000\
\\020\000\089\000\034\000\087\000\
\\006\000\067\000\035\000\095\000\
\\082\000\081\000\094\000\025\000\
\\093\000\099\000\017\000\006\000\
\\024\000\049\000\004\000\083\000\
\\009\000\003\000\091\000\017\000\
\\088\000\013\000\080\000\101\000\
\\100\000\014\000\017\000\029\000\
\\085\000\086\000\006\000\073\000\
\\090\000\000\000\000\000\023\000\
\\006\000\048\000\012\000\043\000\
\\044\000\006\000\001\000\015\000\
\\084\000\000\000\045\000\040\000"
val gotoT =
"\
\\001\000\139\000\002\000\005\000\003\000\004\000\004\000\003\000\
\\005\000\002\000\006\000\001\000\000\000\
\\000\000\
\\004\000\023\000\006\000\001\000\000\000\
\\004\000\024\000\006\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\037\000\002\000\005\000\003\000\004\000\004\000\003\000\
\\005\000\002\000\006\000\001\000\000\000\
\\003\000\041\000\004\000\003\000\005\000\002\000\006\000\001\000\
\\007\000\040\000\013\000\039\000\014\000\038\000\000\000\
\\003\000\048\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\003\000\051\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\003\000\052\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\003\000\053\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\003\000\054\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\003\000\055\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\003\000\056\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\003\000\057\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\010\000\058\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\003\000\062\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\003\000\063\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\003\000\064\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\003\000\065\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\003\000\066\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\003\000\067\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\003\000\068\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\003\000\069\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\003\000\070\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\003\000\071\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\003\000\072\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\013\000\079\000\014\000\038\000\000\000\
\\000\000\
\\003\000\041\000\004\000\003\000\005\000\002\000\006\000\001\000\
\\007\000\040\000\013\000\082\000\014\000\038\000\015\000\081\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\010\000\083\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\011\000\090\000\012\000\089\000\013\000\088\000\014\000\038\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\013\000\095\000\014\000\038\000\000\000\
\\000\000\
\\000\000\
\\003\000\097\000\004\000\003\000\005\000\002\000\006\000\001\000\
\\007\000\096\000\000\000\
\\000\000\
\\013\000\099\000\014\000\038\000\015\000\081\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\010\000\104\000\000\000\
\\008\000\105\000\000\000\
\\003\000\108\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\003\000\109\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\003\000\113\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\013\000\116\000\014\000\038\000\015\000\115\000\000\000\
\\003\000\117\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\000\000\
\\000\000\
\\003\000\120\000\004\000\003\000\005\000\002\000\006\000\001\000\
\\009\000\119\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\011\000\124\000\012\000\089\000\013\000\088\000\014\000\038\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\013\000\127\000\014\000\038\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\003\000\129\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\000\000\
\\000\000\
\\001\000\131\000\002\000\005\000\003\000\130\000\004\000\003\000\
\\005\000\002\000\006\000\001\000\000\000\
\\001\000\132\000\002\000\005\000\003\000\130\000\004\000\003\000\
\\005\000\002\000\006\000\001\000\000\000\
\\000\000\
\\003\000\134\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\003\000\135\000\004\000\003\000\005\000\002\000\006\000\001\000\000\000\
\\008\000\136\000\000\000\
\\000\000\
\\000\000\
\\001\000\138\000\002\000\005\000\003\000\130\000\004\000\003\000\
\\005\000\002\000\006\000\001\000\000\000\
\\000\000\
\\000\000\
\"
val numstates = 140
val numrules = 61
val s = ref "" and index = ref 0
val string_to_int = fn () => 
let val i = !index
in index := i+2; Char.ord(String.sub(!s,i)) + Char.ord(String.sub(!s,i+1)) * 256
end
val string_to_list = fn s' =>
    let val len = String.size s'
        fun f () =
           if !index < len then string_to_int() :: f()
           else nil
   in index := 0; s := s'; f ()
   end
val string_to_pairlist = fn (conv_key,conv_entry) =>
     let fun f () =
         case string_to_int()
         of 0 => EMPTY
          | n => PAIR(conv_key (n-1),conv_entry (string_to_int()),f())
     in f
     end
val string_to_pairlist_default = fn (conv_key,conv_entry) =>
    let val conv_row = string_to_pairlist(conv_key,conv_entry)
    in fn () =>
       let val default = conv_entry(string_to_int())
           val row = conv_row()
       in (row,default)
       end
   end
val string_to_table = fn (convert_row,s') =>
    let val len = String.size s'
        fun f ()=
           if !index < len then convert_row() :: f()
           else nil
     in (s := s'; index := 0; f ())
     end
local
  val memo = Array.array(numstates+numrules,ERROR)
  val _ =let fun g i=(Array.update(memo,i,REDUCE(i-numstates)); g(i+1))
       fun f i =
            if i=numstates then g i
            else (Array.update(memo,i,SHIFT (STATE i)); f (i+1))
          in f 0 handle General.Subscript => ()
          end
in
val entry_to_action = fn 0 => ACCEPT | 1 => ERROR | j => Array.sub(memo,(j-2))
end
val gotoT=Array.fromList(string_to_table(string_to_pairlist(NT,STATE),gotoT))
val actionRows=string_to_table(string_to_pairlist_default(T,entry_to_action),actionRows)
val actionRowNumbers = string_to_list actionRowNumbers
val actionT = let val actionRowLookUp=
let val a=Array.fromList(actionRows) in fn i=>Array.sub(a,i) end
in Array.fromList(List.map actionRowLookUp actionRowNumbers)
end
in LrTable.mkLrTable {actions=actionT,gotos=gotoT,numRules=numrules,
numStates=numstates,initialState=STATE 0}
end
end
local open Header in
type pos = int
type arg = unit
structure MlyValue = 
struct
datatype svalue = VOID | ntVOID of unit ->  unit
 | CINT of unit ->  (int) | NOME of unit ->  (string)
 | Types of unit ->  (plcType list) | AtomType of unit ->  (plcType)
 | Type of unit ->  (plcType) | TypedVar of unit ->  (plcType*string)
 | Params of unit ->  ( ( plcType * string )  list)
 | Args of unit ->  ( ( plcType * string )  list)
 | CondExpr of unit ->  (expr option)
 | MatchExpr of unit ->  ( ( expr option * expr )  list)
 | Comps of unit ->  (expr list) | Const of unit ->  (expr)
 | AppExpr of unit ->  (expr) | AtomExpr of unit ->  (expr)
 | Expr of unit ->  (expr) | Decl of unit ->  (expr)
 | Prog of unit ->  (expr)
end
type svalue = MlyValue.svalue
type result = expr
end
structure EC=
struct
open LrTable
infix 5 $$
fun x $$ y = y::x
val is_keyword =
fn _ => false
val preferred_change : (term list * term list) list = 
nil
val noShift = 
fn (T 45) => true | _ => false
val showTerminal =
fn (T 0) => "VAR"
  | (T 1) => "FIM"
  | (T 2) => "FN"
  | (T 3) => "RECURSAO"
  | (T 4) => "SE"
  | (T 5) => "ENTAO"
  | (T 6) => "SE_NAO"
  | (T 7) => "CORRESPONDE"
  | (T 8) => "COM"
  | (T 9) => "NEGACAO"
  | (T 10) => "E"
  | (T 11) => "CABECA"
  | (T 12) => "CAUDA"
  | (T 13) => "VAZIO"
  | (T 14) => "IMPRIME"
  | (T 15) => "UNDERLINE"
  | (T 16) => "NADA"
  | (T 17) => "BOOLEANO"
  | (T 18) => "INTEIRO"
  | (T 19) => "VERDADEIRO"
  | (T 20) => "FALSO"
  | (T 21) => "FUNCAO"
  | (T 22) => "NOME"
  | (T 23) => "SOMA"
  | (T 24) => "SUBTRACAO"
  | (T 25) => "MULTIPLICACAO"
  | (T 26) => "DIVISAO"
  | (T 27) => "IGUALDADE"
  | (T 28) => "DIFERENTE"
  | (T 29) => "MENOR_QUE"
  | (T 30) => "MENOR_OU_IGUAL"
  | (T 31) => "CONSTRUTOR"
  | (T 32) => "DOIS_PONTOS"
  | (T 33) => "PONTO_VIRGULA"
  | (T 34) => "VIRGULA"
  | (T 35) => "SETA"
  | (T 36) => "BARRA_VERTICAL"
  | (T 37) => "SETA_FUNCIONAL"
  | (T 38) => "ABRE_PARENTESES"
  | (T 39) => "FECHA_PARENTESES"
  | (T 40) => "ABRE_CHAVES"
  | (T 41) => "FECHA_CHAVES"
  | (T 42) => "ABRE_COLCHETES"
  | (T 43) => "FECHA_COLCHETES"
  | (T 44) => "CINT"
  | (T 45) => "EOF"
  | _ => "bogus-term"
local open Header in
val errtermvalue=
fn _ => MlyValue.VOID
end
val terms : term list = nil
 $$ (T 45) $$ (T 43) $$ (T 42) $$ (T 41) $$ (T 40) $$ (T 39) $$ (T 38)
 $$ (T 37) $$ (T 36) $$ (T 35) $$ (T 34) $$ (T 33) $$ (T 32) $$ (T 31)
 $$ (T 30) $$ (T 29) $$ (T 28) $$ (T 27) $$ (T 26) $$ (T 25) $$ (T 24)
 $$ (T 23) $$ (T 21) $$ (T 20) $$ (T 19) $$ (T 18) $$ (T 17) $$ (T 16)
 $$ (T 15) $$ (T 14) $$ (T 13) $$ (T 12) $$ (T 11) $$ (T 10) $$ (T 9)
 $$ (T 8) $$ (T 7) $$ (T 6) $$ (T 5) $$ (T 4) $$ (T 3) $$ (T 2) $$ (T 
1) $$ (T 0)end
structure Actions =
struct 
exception mlyAction of int
local open Header in
val actions = 
fn (i392,defaultPos,stack,
    (()):arg) =>
case (i392,stack)
of  ( 0, ( ( _, ( MlyValue.Expr Expr1, Expr1left, Expr1right)) :: 
rest671)) => let val  result = MlyValue.Prog (fn _ => let val  (Expr
 as Expr1) = Expr1 ()
 in (Expr)
end)
 in ( LrTable.NT 0, ( result, Expr1left, Expr1right), rest671)
end
|  ( 1, ( ( _, ( MlyValue.Decl Decl1, Decl1left, Decl1right)) :: 
rest671)) => let val  result = MlyValue.Prog (fn _ => let val  (Decl
 as Decl1) = Decl1 ()
 in (Decl)
end)
 in ( LrTable.NT 0, ( result, Decl1left, Decl1right), rest671)
end
|  ( 2, ( ( _, ( MlyValue.Prog Prog1, _, Prog1right)) :: _ :: ( _, ( 
MlyValue.Expr Expr1, _, _)) :: _ :: ( _, ( MlyValue.NOME NOME1, _, _))
 :: ( _, ( _, VAR1left, _)) :: rest671)) => let val  result = 
MlyValue.Decl (fn _ => let val  (NOME as NOME1) = NOME1 ()
 val  (Expr as Expr1) = Expr1 ()
 val  (Prog as Prog1) = Prog1 ()
 in (Let(NOME, Expr, Prog))
end)
 in ( LrTable.NT 1, ( result, VAR1left, Prog1right), rest671)
end
|  ( 3, ( ( _, ( MlyValue.Prog Prog1, _, Prog1right)) :: _ :: ( _, ( 
MlyValue.Expr Expr1, _, _)) :: _ :: ( _, ( MlyValue.Args Args1, _, _))
 :: ( _, ( MlyValue.NOME NOME1, _, _)) :: ( _, ( _, FUNCAO1left, _))
 :: rest671)) => let val  result = MlyValue.Decl (fn _ => let val  (
NOME as NOME1) = NOME1 ()
 val  (Args as Args1) = Args1 ()
 val  (Expr as Expr1) = Expr1 ()
 val  (Prog as Prog1) = Prog1 ()
 in (Let(NOME, makeAnon(Args, Expr), Prog))
end)
 in ( LrTable.NT 1, ( result, FUNCAO1left, Prog1right), rest671)
end
|  ( 4, ( ( _, ( MlyValue.Prog Prog1, _, Prog1right)) :: _ :: ( _, ( 
MlyValue.Expr Expr1, _, _)) :: _ :: ( _, ( MlyValue.Type Type1, _, _))
 :: _ :: ( _, ( MlyValue.Args Args1, _, _)) :: ( _, ( MlyValue.NOME 
NOME1, _, _)) :: _ :: ( _, ( _, FUNCAO1left, _)) :: rest671)) => let
 val  result = MlyValue.Decl (fn _ => let val  (NOME as NOME1) = NOME1
 ()
 val  (Args as Args1) = Args1 ()
 val  (Type as Type1) = Type1 ()
 val  (Expr as Expr1) = Expr1 ()
 val  (Prog as Prog1) = Prog1 ()
 in (makeFun(NOME, Args, Type, Expr, Prog))
end)
 in ( LrTable.NT 1, ( result, FUNCAO1left, Prog1right), rest671)
end
|  ( 5, ( ( _, ( MlyValue.AtomExpr AtomExpr1, AtomExpr1left, 
AtomExpr1right)) :: rest671)) => let val  result = MlyValue.Expr (fn _
 => let val  (AtomExpr as AtomExpr1) = AtomExpr1 ()
 in (AtomExpr)
end)
 in ( LrTable.NT 2, ( result, AtomExpr1left, AtomExpr1right), rest671)

end
|  ( 6, ( ( _, ( MlyValue.AppExpr AppExpr1, AppExpr1left, 
AppExpr1right)) :: rest671)) => let val  result = MlyValue.Expr (fn _
 => let val  (AppExpr as AppExpr1) = AppExpr1 ()
 in (AppExpr)
end)
 in ( LrTable.NT 2, ( result, AppExpr1left, AppExpr1right), rest671)

end
|  ( 7, ( ( _, ( MlyValue.Expr Expr3, _, Expr3right)) :: _ :: ( _, ( 
MlyValue.Expr Expr2, _, _)) :: _ :: ( _, ( MlyValue.Expr Expr1, _, _))
 :: ( _, ( _, SE1left, _)) :: rest671)) => let val  result = 
MlyValue.Expr (fn _ => let val  Expr1 = Expr1 ()
 val  Expr2 = Expr2 ()
 val  Expr3 = Expr3 ()
 in (If(Expr1, Expr2, Expr3))
end)
 in ( LrTable.NT 2, ( result, SE1left, Expr3right), rest671)
end
|  ( 8, ( ( _, ( MlyValue.MatchExpr MatchExpr1, _, MatchExpr1right))
 :: _ :: ( _, ( MlyValue.Expr Expr1, _, _)) :: ( _, ( _, 
CORRESPONDE1left, _)) :: rest671)) => let val  result = MlyValue.Expr
 (fn _ => let val  (Expr as Expr1) = Expr1 ()
 val  (MatchExpr as MatchExpr1) = MatchExpr1 ()
 in (Match (Expr, MatchExpr))
end)
 in ( LrTable.NT 2, ( result, CORRESPONDE1left, MatchExpr1right), 
rest671)
end
|  ( 9, ( ( _, ( MlyValue.Expr Expr1, _, Expr1right)) :: ( _, ( _, 
NEGACAO1left, _)) :: rest671)) => let val  result = MlyValue.Expr (fn
 _ => let val  (Expr as Expr1) = Expr1 ()
 in (Prim1("!", Expr))
end)
 in ( LrTable.NT 2, ( result, NEGACAO1left, Expr1right), rest671)
end
|  ( 10, ( ( _, ( MlyValue.Expr Expr2, _, Expr2right)) :: _ :: ( _, ( 
MlyValue.Expr Expr1, Expr1left, _)) :: rest671)) => let val  result = 
MlyValue.Expr (fn _ => let val  Expr1 = Expr1 ()
 val  Expr2 = Expr2 ()
 in (Prim2("&&", Expr1, Expr2))
end)
 in ( LrTable.NT 2, ( result, Expr1left, Expr2right), rest671)
end
|  ( 11, ( ( _, ( MlyValue.Expr Expr1, _, Expr1right)) :: ( _, ( _, 
CABECA1left, _)) :: rest671)) => let val  result = MlyValue.Expr (fn _
 => let val  (Expr as Expr1) = Expr1 ()
 in (Prim1("hd", Expr))
end)
 in ( LrTable.NT 2, ( result, CABECA1left, Expr1right), rest671)
end
|  ( 12, ( ( _, ( MlyValue.Expr Expr1, _, Expr1right)) :: ( _, ( _, 
CAUDA1left, _)) :: rest671)) => let val  result = MlyValue.Expr (fn _
 => let val  (Expr as Expr1) = Expr1 ()
 in (Prim1("tl", Expr))
end)
 in ( LrTable.NT 2, ( result, CAUDA1left, Expr1right), rest671)
end
|  ( 13, ( ( _, ( MlyValue.Expr Expr1, _, Expr1right)) :: ( _, ( _, 
VAZIO1left, _)) :: rest671)) => let val  result = MlyValue.Expr (fn _
 => let val  (Expr as Expr1) = Expr1 ()
 in (Prim1("ise", Expr))
end)
 in ( LrTable.NT 2, ( result, VAZIO1left, Expr1right), rest671)
end
|  ( 14, ( ( _, ( MlyValue.Expr Expr1, _, Expr1right)) :: ( _, ( _, 
IMPRIME1left, _)) :: rest671)) => let val  result = MlyValue.Expr (fn
 _ => let val  (Expr as Expr1) = Expr1 ()
 in (Prim1("print", Expr))
end)
 in ( LrTable.NT 2, ( result, IMPRIME1left, Expr1right), rest671)
end
|  ( 15, ( ( _, ( MlyValue.Expr Expr2, _, Expr2right)) :: _ :: ( _, ( 
MlyValue.Expr Expr1, Expr1left, _)) :: rest671)) => let val  result = 
MlyValue.Expr (fn _ => let val  Expr1 = Expr1 ()
 val  Expr2 = Expr2 ()
 in (Prim2("+", Expr1, Expr2))
end)
 in ( LrTable.NT 2, ( result, Expr1left, Expr2right), rest671)
end
|  ( 16, ( ( _, ( MlyValue.Expr Expr2, _, Expr2right)) :: _ :: ( _, ( 
MlyValue.Expr Expr1, Expr1left, _)) :: rest671)) => let val  result = 
MlyValue.Expr (fn _ => let val  Expr1 = Expr1 ()
 val  Expr2 = Expr2 ()
 in (Prim2("-", Expr1, Expr2))
end)
 in ( LrTable.NT 2, ( result, Expr1left, Expr2right), rest671)
end
|  ( 17, ( ( _, ( MlyValue.Expr Expr2, _, Expr2right)) :: _ :: ( _, ( 
MlyValue.Expr Expr1, Expr1left, _)) :: rest671)) => let val  result = 
MlyValue.Expr (fn _ => let val  Expr1 = Expr1 ()
 val  Expr2 = Expr2 ()
 in (Prim2("*", Expr1, Expr2))
end)
 in ( LrTable.NT 2, ( result, Expr1left, Expr2right), rest671)
end
|  ( 18, ( ( _, ( MlyValue.Expr Expr2, _, Expr2right)) :: _ :: ( _, ( 
MlyValue.Expr Expr1, Expr1left, _)) :: rest671)) => let val  result = 
MlyValue.Expr (fn _ => let val  Expr1 = Expr1 ()
 val  Expr2 = Expr2 ()
 in (Prim2("/", Expr1, Expr2))
end)
 in ( LrTable.NT 2, ( result, Expr1left, Expr2right), rest671)
end
|  ( 19, ( ( _, ( MlyValue.Expr Expr1, _, Expr1right)) :: ( _, ( _, 
SUBTRACAO1left, _)) :: rest671)) => let val  result = MlyValue.Expr
 (fn _ => let val  (Expr as Expr1) = Expr1 ()
 in (Prim1("-", Expr))
end)
 in ( LrTable.NT 2, ( result, SUBTRACAO1left, Expr1right), rest671)

end
|  ( 20, ( ( _, ( MlyValue.Expr Expr2, _, Expr2right)) :: _ :: ( _, ( 
MlyValue.Expr Expr1, Expr1left, _)) :: rest671)) => let val  result = 
MlyValue.Expr (fn _ => let val  Expr1 = Expr1 ()
 val  Expr2 = Expr2 ()
 in (Prim2("=", Expr1, Expr2))
end)
 in ( LrTable.NT 2, ( result, Expr1left, Expr2right), rest671)
end
|  ( 21, ( ( _, ( MlyValue.Expr Expr2, _, Expr2right)) :: _ :: ( _, ( 
MlyValue.Expr Expr1, Expr1left, _)) :: rest671)) => let val  result = 
MlyValue.Expr (fn _ => let val  Expr1 = Expr1 ()
 val  Expr2 = Expr2 ()
 in (Prim2("!=", Expr1, Expr2))
end)
 in ( LrTable.NT 2, ( result, Expr1left, Expr2right), rest671)
end
|  ( 22, ( ( _, ( MlyValue.Expr Expr2, _, Expr2right)) :: _ :: ( _, ( 
MlyValue.Expr Expr1, Expr1left, _)) :: rest671)) => let val  result = 
MlyValue.Expr (fn _ => let val  Expr1 = Expr1 ()
 val  Expr2 = Expr2 ()
 in (Prim2("<", Expr1, Expr2))
end)
 in ( LrTable.NT 2, ( result, Expr1left, Expr2right), rest671)
end
|  ( 23, ( ( _, ( MlyValue.Expr Expr2, _, Expr2right)) :: _ :: ( _, ( 
MlyValue.Expr Expr1, Expr1left, _)) :: rest671)) => let val  result = 
MlyValue.Expr (fn _ => let val  Expr1 = Expr1 ()
 val  Expr2 = Expr2 ()
 in (Prim2("<=", Expr1, Expr2))
end)
 in ( LrTable.NT 2, ( result, Expr1left, Expr2right), rest671)
end
|  ( 24, ( ( _, ( MlyValue.Expr Expr2, _, Expr2right)) :: _ :: ( _, ( 
MlyValue.Expr Expr1, Expr1left, _)) :: rest671)) => let val  result = 
MlyValue.Expr (fn _ => let val  Expr1 = Expr1 ()
 val  Expr2 = Expr2 ()
 in (Prim2("::", Expr1, Expr2))
end)
 in ( LrTable.NT 2, ( result, Expr1left, Expr2right), rest671)
end
|  ( 25, ( ( _, ( MlyValue.Expr Expr2, _, Expr2right)) :: _ :: ( _, ( 
MlyValue.Expr Expr1, Expr1left, _)) :: rest671)) => let val  result = 
MlyValue.Expr (fn _ => let val  Expr1 = Expr1 ()
 val  Expr2 = Expr2 ()
 in (Prim2(";", Expr1, Expr2))
end)
 in ( LrTable.NT 2, ( result, Expr1left, Expr2right), rest671)
end
|  ( 26, ( ( _, ( _, _, FECHA_COLCHETES1right)) :: ( _, ( 
MlyValue.CINT CINT1, _, _)) :: _ :: ( _, ( MlyValue.Expr Expr1, 
Expr1left, _)) :: rest671)) => let val  result = MlyValue.Expr (fn _
 => let val  (Expr as Expr1) = Expr1 ()
 val  (CINT as CINT1) = CINT1 ()
 in (Item (CINT, Expr))
end)
 in ( LrTable.NT 2, ( result, Expr1left, FECHA_COLCHETES1right), 
rest671)
end
|  ( 27, ( ( _, ( MlyValue.Const Const1, Const1left, Const1right)) :: 
rest671)) => let val  result = MlyValue.AtomExpr (fn _ => let val  (
Const as Const1) = Const1 ()
 in (Const)
end)
 in ( LrTable.NT 3, ( result, Const1left, Const1right), rest671)
end
|  ( 28, ( ( _, ( MlyValue.NOME NOME1, NOME1left, NOME1right)) :: 
rest671)) => let val  result = MlyValue.AtomExpr (fn _ => let val  (
NOME as NOME1) = NOME1 ()
 in (Var(NOME))
end)
 in ( LrTable.NT 3, ( result, NOME1left, NOME1right), rest671)
end
|  ( 29, ( ( _, ( _, _, FECHA_CHAVES1right)) :: ( _, ( MlyValue.Prog 
Prog1, _, _)) :: ( _, ( _, ABRE_CHAVES1left, _)) :: rest671)) => let
 val  result = MlyValue.AtomExpr (fn _ => let val  (Prog as Prog1) = 
Prog1 ()
 in (Prog)
end)
 in ( LrTable.NT 3, ( result, ABRE_CHAVES1left, FECHA_CHAVES1right), 
rest671)
end
|  ( 30, ( ( _, ( _, _, FECHA_PARENTESES1right)) :: ( _, ( 
MlyValue.Comps Comps1, _, _)) :: ( _, ( _, ABRE_PARENTESES1left, _))
 :: rest671)) => let val  result = MlyValue.AtomExpr (fn _ => let val 
 (Comps as Comps1) = Comps1 ()
 in (List Comps)
end)
 in ( LrTable.NT 3, ( result, ABRE_PARENTESES1left, 
FECHA_PARENTESES1right), rest671)
end
|  ( 31, ( ( _, ( _, _, FECHA_PARENTESES1right)) :: ( _, ( 
MlyValue.Expr Expr1, _, _)) :: ( _, ( _, ABRE_PARENTESES1left, _)) :: 
rest671)) => let val  result = MlyValue.AtomExpr (fn _ => let val  (
Expr as Expr1) = Expr1 ()
 in (Expr)
end)
 in ( LrTable.NT 3, ( result, ABRE_PARENTESES1left, 
FECHA_PARENTESES1right), rest671)
end
|  ( 32, ( ( _, ( _, _, FIM1right)) :: ( _, ( MlyValue.Expr Expr1, _,
 _)) :: _ :: ( _, ( MlyValue.Args Args1, _, _)) :: ( _, ( _, FN1left,
 _)) :: rest671)) => let val  result = MlyValue.AtomExpr (fn _ => let
 val  (Args as Args1) = Args1 ()
 val  (Expr as Expr1) = Expr1 ()
 in (makeAnon(Args, Expr))
end)
 in ( LrTable.NT 3, ( result, FN1left, FIM1right), rest671)
end
|  ( 33, ( ( _, ( MlyValue.AtomExpr AtomExpr2, _, AtomExpr2right)) :: 
( _, ( MlyValue.AtomExpr AtomExpr1, AtomExpr1left, _)) :: rest671)) =>
 let val  result = MlyValue.AppExpr (fn _ => let val  AtomExpr1 = 
AtomExpr1 ()
 val  AtomExpr2 = AtomExpr2 ()
 in (Call(AtomExpr1, AtomExpr2))
end)
 in ( LrTable.NT 4, ( result, AtomExpr1left, AtomExpr2right), rest671)

end
|  ( 34, ( ( _, ( MlyValue.AtomExpr AtomExpr1, _, AtomExpr1right)) :: 
( _, ( MlyValue.AppExpr AppExpr1, AppExpr1left, _)) :: rest671)) =>
 let val  result = MlyValue.AppExpr (fn _ => let val  (AppExpr as 
AppExpr1) = AppExpr1 ()
 val  (AtomExpr as AtomExpr1) = AtomExpr1 ()
 in (Call(AppExpr, AtomExpr))
end)
 in ( LrTable.NT 4, ( result, AppExpr1left, AtomExpr1right), rest671)

end
|  ( 35, ( ( _, ( _, VERDADEIRO1left, VERDADEIRO1right)) :: rest671))
 => let val  result = MlyValue.Const (fn _ => (ConB true))
 in ( LrTable.NT 5, ( result, VERDADEIRO1left, VERDADEIRO1right), 
rest671)
end
|  ( 36, ( ( _, ( _, FALSO1left, FALSO1right)) :: rest671)) => let
 val  result = MlyValue.Const (fn _ => (ConB false))
 in ( LrTable.NT 5, ( result, FALSO1left, FALSO1right), rest671)
end
|  ( 37, ( ( _, ( MlyValue.CINT CINT1, CINT1left, CINT1right)) :: 
rest671)) => let val  result = MlyValue.Const (fn _ => let val  (CINT
 as CINT1) = CINT1 ()
 in (ConI CINT)
end)
 in ( LrTable.NT 5, ( result, CINT1left, CINT1right), rest671)
end
|  ( 38, ( ( _, ( _, _, FECHA_PARENTESES1right)) :: ( _, ( _, 
ABRE_PARENTESES1left, _)) :: rest671)) => let val  result = 
MlyValue.Const (fn _ => (List []))
 in ( LrTable.NT 5, ( result, ABRE_PARENTESES1left, 
FECHA_PARENTESES1right), rest671)
end
|  ( 39, ( ( _, ( _, _, FECHA_PARENTESES1right)) :: _ :: _ :: ( _, ( 
MlyValue.Type Type1, _, _)) :: ( _, ( _, ABRE_PARENTESES1left, _)) :: 
rest671)) => let val  result = MlyValue.Const (fn _ => let val  (Type
 as Type1) = Type1 ()
 in (ESeq(Type))
end)
 in ( LrTable.NT 5, ( result, ABRE_PARENTESES1left, 
FECHA_PARENTESES1right), rest671)
end
|  ( 40, ( ( _, ( MlyValue.Expr Expr2, _, Expr2right)) :: _ :: ( _, ( 
MlyValue.Expr Expr1, Expr1left, _)) :: rest671)) => let val  result = 
MlyValue.Comps (fn _ => let val  Expr1 = Expr1 ()
 val  Expr2 = Expr2 ()
 in (Expr1 :: Expr2 :: [])
end)
 in ( LrTable.NT 6, ( result, Expr1left, Expr2right), rest671)
end
|  ( 41, ( ( _, ( MlyValue.Comps Comps1, _, Comps1right)) :: _ :: ( _,
 ( MlyValue.Expr Expr1, Expr1left, _)) :: rest671)) => let val  result
 = MlyValue.Comps (fn _ => let val  (Expr as Expr1) = Expr1 ()
 val  (Comps as Comps1) = Comps1 ()
 in (Expr :: Comps)
end)
 in ( LrTable.NT 6, ( result, Expr1left, Comps1right), rest671)
end
|  ( 42, ( ( _, ( _, FIM1left, FIM1right)) :: rest671)) => let val  
result = MlyValue.MatchExpr (fn _ => ([]))
 in ( LrTable.NT 7, ( result, FIM1left, FIM1right), rest671)
end
|  ( 43, ( ( _, ( MlyValue.MatchExpr MatchExpr1, _, MatchExpr1right))
 :: ( _, ( MlyValue.Expr Expr1, _, _)) :: _ :: ( _, ( 
MlyValue.CondExpr CondExpr1, _, _)) :: ( _, ( _, BARRA_VERTICAL1left,
 _)) :: rest671)) => let val  result = MlyValue.MatchExpr (fn _ => let
 val  (CondExpr as CondExpr1) = CondExpr1 ()
 val  (Expr as Expr1) = Expr1 ()
 val  (MatchExpr as MatchExpr1) = MatchExpr1 ()
 in ((CondExpr, Expr) :: MatchExpr)
end)
 in ( LrTable.NT 7, ( result, BARRA_VERTICAL1left, MatchExpr1right), 
rest671)
end
|  ( 44, ( ( _, ( MlyValue.Expr Expr1, Expr1left, Expr1right)) :: 
rest671)) => let val  result = MlyValue.CondExpr (fn _ => let val  (
Expr as Expr1) = Expr1 ()
 in (SOME(Expr))
end)
 in ( LrTable.NT 8, ( result, Expr1left, Expr1right), rest671)
end
|  ( 45, ( ( _, ( _, UNDERLINE1left, UNDERLINE1right)) :: rest671)) =>
 let val  result = MlyValue.CondExpr (fn _ => (NONE))
 in ( LrTable.NT 8, ( result, UNDERLINE1left, UNDERLINE1right), 
rest671)
end
|  ( 46, ( ( _, ( _, _, FECHA_PARENTESES1right)) :: ( _, ( _, 
ABRE_PARENTESES1left, _)) :: rest671)) => let val  result = 
MlyValue.Args (fn _ => ([]))
 in ( LrTable.NT 9, ( result, ABRE_PARENTESES1left, 
FECHA_PARENTESES1right), rest671)
end
|  ( 47, ( ( _, ( _, _, FECHA_PARENTESES1right)) :: ( _, ( 
MlyValue.Params Params1, _, _)) :: ( _, ( _, ABRE_PARENTESES1left, _))
 :: rest671)) => let val  result = MlyValue.Args (fn _ => let val  (
Params as Params1) = Params1 ()
 in (Params)
end)
 in ( LrTable.NT 9, ( result, ABRE_PARENTESES1left, 
FECHA_PARENTESES1right), rest671)
end
|  ( 48, ( ( _, ( MlyValue.TypedVar TypedVar1, TypedVar1left, 
TypedVar1right)) :: rest671)) => let val  result = MlyValue.Params (fn
 _ => let val  (TypedVar as TypedVar1) = TypedVar1 ()
 in (TypedVar::[])
end)
 in ( LrTable.NT 10, ( result, TypedVar1left, TypedVar1right), rest671
)
end
|  ( 49, ( ( _, ( MlyValue.Params Params1, _, Params1right)) :: _ :: (
 _, ( MlyValue.TypedVar TypedVar1, TypedVar1left, _)) :: rest671)) =>
 let val  result = MlyValue.Params (fn _ => let val  (TypedVar as 
TypedVar1) = TypedVar1 ()
 val  (Params as Params1) = Params1 ()
 in (TypedVar::Params)
end)
 in ( LrTable.NT 10, ( result, TypedVar1left, Params1right), rest671)

end
|  ( 50, ( ( _, ( MlyValue.NOME NOME1, _, NOME1right)) :: ( _, ( 
MlyValue.Type Type1, Type1left, _)) :: rest671)) => let val  result = 
MlyValue.TypedVar (fn _ => let val  (Type as Type1) = Type1 ()
 val  (NOME as NOME1) = NOME1 ()
 in ((Type, NOME))
end)
 in ( LrTable.NT 11, ( result, Type1left, NOME1right), rest671)
end
|  ( 51, ( ( _, ( MlyValue.AtomType AtomType1, AtomType1left, 
AtomType1right)) :: rest671)) => let val  result = MlyValue.Type (fn _
 => let val  (AtomType as AtomType1) = AtomType1 ()
 in (AtomType)
end)
 in ( LrTable.NT 12, ( result, AtomType1left, AtomType1right), rest671
)
end
|  ( 52, ( ( _, ( _, _, FECHA_PARENTESES1right)) :: ( _, ( 
MlyValue.Types Types1, _, _)) :: ( _, ( _, ABRE_PARENTESES1left, _))
 :: rest671)) => let val  result = MlyValue.Type (fn _ => let val  (
Types as Types1) = Types1 ()
 in (ListT Types)
end)
 in ( LrTable.NT 12, ( result, ABRE_PARENTESES1left, 
FECHA_PARENTESES1right), rest671)
end
|  ( 53, ( ( _, ( _, _, FECHA_COLCHETES1right)) :: ( _, ( 
MlyValue.Type Type1, _, _)) :: ( _, ( _, ABRE_COLCHETES1left, _)) :: 
rest671)) => let val  result = MlyValue.Type (fn _ => let val  (Type
 as Type1) = Type1 ()
 in (SeqT Type)
end)
 in ( LrTable.NT 12, ( result, ABRE_COLCHETES1left, 
FECHA_COLCHETES1right), rest671)
end
|  ( 54, ( ( _, ( MlyValue.Type Type2, _, Type2right)) :: _ :: ( _, ( 
MlyValue.Type Type1, Type1left, _)) :: rest671)) => let val  result = 
MlyValue.Type (fn _ => let val  Type1 = Type1 ()
 val  Type2 = Type2 ()
 in (FunT (Type1, Type2))
end)
 in ( LrTable.NT 12, ( result, Type1left, Type2right), rest671)
end
|  ( 55, ( ( _, ( _, NADA1left, NADA1right)) :: rest671)) => let val  
result = MlyValue.AtomType (fn _ => (ListT []))
 in ( LrTable.NT 13, ( result, NADA1left, NADA1right), rest671)
end
|  ( 56, ( ( _, ( _, BOOLEANO1left, BOOLEANO1right)) :: rest671)) =>
 let val  result = MlyValue.AtomType (fn _ => (BoolT))
 in ( LrTable.NT 13, ( result, BOOLEANO1left, BOOLEANO1right), rest671
)
end
|  ( 57, ( ( _, ( _, INTEIRO1left, INTEIRO1right)) :: rest671)) => let
 val  result = MlyValue.AtomType (fn _ => (IntT))
 in ( LrTable.NT 13, ( result, INTEIRO1left, INTEIRO1right), rest671)

end
|  ( 58, ( ( _, ( _, _, FECHA_PARENTESES1right)) :: ( _, ( 
MlyValue.Type Type1, _, _)) :: ( _, ( _, ABRE_PARENTESES1left, _)) :: 
rest671)) => let val  result = MlyValue.AtomType (fn _ => let val  (
Type as Type1) = Type1 ()
 in (Type)
end)
 in ( LrTable.NT 13, ( result, ABRE_PARENTESES1left, 
FECHA_PARENTESES1right), rest671)
end
|  ( 59, ( ( _, ( MlyValue.Type Type2, _, Type2right)) :: _ :: ( _, ( 
MlyValue.Type Type1, Type1left, _)) :: rest671)) => let val  result = 
MlyValue.Types (fn _ => let val  Type1 = Type1 ()
 val  Type2 = Type2 ()
 in (Type1 :: Type2 :: [])
end)
 in ( LrTable.NT 14, ( result, Type1left, Type2right), rest671)
end
|  ( 60, ( ( _, ( MlyValue.Types Types1, _, Types1right)) :: _ :: ( _,
 ( MlyValue.Type Type1, Type1left, _)) :: rest671)) => let val  result
 = MlyValue.Types (fn _ => let val  (Type as Type1) = Type1 ()
 val  (Types as Types1) = Types1 ()
 in (Type :: Types)
end)
 in ( LrTable.NT 14, ( result, Type1left, Types1right), rest671)
end
| _ => raise (mlyAction i392)
end
val void = MlyValue.VOID
val extract = fn a => (fn MlyValue.Prog x => x
| _ => let exception ParseInternal
	in raise ParseInternal end) a ()
end
end
structure Tokens : PlcParser_TOKENS =
struct
type svalue = ParserData.svalue
type ('a,'b) token = ('a,'b) Token.token
fun VAR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 0,(
ParserData.MlyValue.VOID,p1,p2))
fun FIM (p1,p2) = Token.TOKEN (ParserData.LrTable.T 1,(
ParserData.MlyValue.VOID,p1,p2))
fun FN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 2,(
ParserData.MlyValue.VOID,p1,p2))
fun RECURSAO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 3,(
ParserData.MlyValue.VOID,p1,p2))
fun SE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 4,(
ParserData.MlyValue.VOID,p1,p2))
fun ENTAO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 5,(
ParserData.MlyValue.VOID,p1,p2))
fun SE_NAO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 6,(
ParserData.MlyValue.VOID,p1,p2))
fun CORRESPONDE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 7,(
ParserData.MlyValue.VOID,p1,p2))
fun COM (p1,p2) = Token.TOKEN (ParserData.LrTable.T 8,(
ParserData.MlyValue.VOID,p1,p2))
fun NEGACAO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 9,(
ParserData.MlyValue.VOID,p1,p2))
fun E (p1,p2) = Token.TOKEN (ParserData.LrTable.T 10,(
ParserData.MlyValue.VOID,p1,p2))
fun CABECA (p1,p2) = Token.TOKEN (ParserData.LrTable.T 11,(
ParserData.MlyValue.VOID,p1,p2))
fun CAUDA (p1,p2) = Token.TOKEN (ParserData.LrTable.T 12,(
ParserData.MlyValue.VOID,p1,p2))
fun VAZIO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 13,(
ParserData.MlyValue.VOID,p1,p2))
fun IMPRIME (p1,p2) = Token.TOKEN (ParserData.LrTable.T 14,(
ParserData.MlyValue.VOID,p1,p2))
fun UNDERLINE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 15,(
ParserData.MlyValue.VOID,p1,p2))
fun NADA (p1,p2) = Token.TOKEN (ParserData.LrTable.T 16,(
ParserData.MlyValue.VOID,p1,p2))
fun BOOLEANO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 17,(
ParserData.MlyValue.VOID,p1,p2))
fun INTEIRO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 18,(
ParserData.MlyValue.VOID,p1,p2))
fun VERDADEIRO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 19,(
ParserData.MlyValue.VOID,p1,p2))
fun FALSO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 20,(
ParserData.MlyValue.VOID,p1,p2))
fun FUNCAO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 21,(
ParserData.MlyValue.VOID,p1,p2))
fun NOME (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 22,(
ParserData.MlyValue.NOME (fn () => i),p1,p2))
fun SOMA (p1,p2) = Token.TOKEN (ParserData.LrTable.T 23,(
ParserData.MlyValue.VOID,p1,p2))
fun SUBTRACAO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 24,(
ParserData.MlyValue.VOID,p1,p2))
fun MULTIPLICACAO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 25,(
ParserData.MlyValue.VOID,p1,p2))
fun DIVISAO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 26,(
ParserData.MlyValue.VOID,p1,p2))
fun IGUALDADE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 27,(
ParserData.MlyValue.VOID,p1,p2))
fun DIFERENTE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 28,(
ParserData.MlyValue.VOID,p1,p2))
fun MENOR_QUE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 29,(
ParserData.MlyValue.VOID,p1,p2))
fun MENOR_OU_IGUAL (p1,p2) = Token.TOKEN (ParserData.LrTable.T 30,(
ParserData.MlyValue.VOID,p1,p2))
fun CONSTRUTOR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 31,(
ParserData.MlyValue.VOID,p1,p2))
fun DOIS_PONTOS (p1,p2) = Token.TOKEN (ParserData.LrTable.T 32,(
ParserData.MlyValue.VOID,p1,p2))
fun PONTO_VIRGULA (p1,p2) = Token.TOKEN (ParserData.LrTable.T 33,(
ParserData.MlyValue.VOID,p1,p2))
fun VIRGULA (p1,p2) = Token.TOKEN (ParserData.LrTable.T 34,(
ParserData.MlyValue.VOID,p1,p2))
fun SETA (p1,p2) = Token.TOKEN (ParserData.LrTable.T 35,(
ParserData.MlyValue.VOID,p1,p2))
fun BARRA_VERTICAL (p1,p2) = Token.TOKEN (ParserData.LrTable.T 36,(
ParserData.MlyValue.VOID,p1,p2))
fun SETA_FUNCIONAL (p1,p2) = Token.TOKEN (ParserData.LrTable.T 37,(
ParserData.MlyValue.VOID,p1,p2))
fun ABRE_PARENTESES (p1,p2) = Token.TOKEN (ParserData.LrTable.T 38,(
ParserData.MlyValue.VOID,p1,p2))
fun FECHA_PARENTESES (p1,p2) = Token.TOKEN (ParserData.LrTable.T 39,(
ParserData.MlyValue.VOID,p1,p2))
fun ABRE_CHAVES (p1,p2) = Token.TOKEN (ParserData.LrTable.T 40,(
ParserData.MlyValue.VOID,p1,p2))
fun FECHA_CHAVES (p1,p2) = Token.TOKEN (ParserData.LrTable.T 41,(
ParserData.MlyValue.VOID,p1,p2))
fun ABRE_COLCHETES (p1,p2) = Token.TOKEN (ParserData.LrTable.T 42,(
ParserData.MlyValue.VOID,p1,p2))
fun FECHA_COLCHETES (p1,p2) = Token.TOKEN (ParserData.LrTable.T 43,(
ParserData.MlyValue.VOID,p1,p2))
fun CINT (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 44,(
ParserData.MlyValue.CINT (fn () => i),p1,p2))
fun EOF (p1,p2) = Token.TOKEN (ParserData.LrTable.T 45,(
ParserData.MlyValue.VOID,p1,p2))
end
end
