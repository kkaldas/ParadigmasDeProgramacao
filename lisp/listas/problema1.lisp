#|
{-
Crie uma fun ̧c ̃ao com assinatura
soma ::  [Int] -> Int, a qual recebe uma lista de Int
 e retorna a somade todos os elementos da lista.
   Retorne 0 caso a lista for vazia.Nao
    utilizenenhuma fun ̧c ̃ao pronta doHaskell
    para realizar esta tarefa.
-}

soma:: [Int] -> Int
soma [] = 0
soma (a:b) = a + soma b

main = do
  print((soma [2,3,5] ))
|#

(defun soma (lista)
  (cond
    ( (null lista) 0 )
    ( t (+ (car lista) (soma (cdr lista) )) )
  )
)

(defun main ()
  (write-line (write-to-string (soma '(1 2 3) ) ) )
)

(main)
