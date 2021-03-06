#|{-
Crie uma fun ̧c ̃ao que receba trˆes notas de um aluno (a,  b,  c),
  calcule a m ́edia e retorne se o aluno foiaprovado ou reprovado.
    Para um aluno ser aprovado, ele deve possuir nota igual ou superior a 6.
      Leia asnotas dos alunos do teclado.
-}

func :: Float -> Float -> Float -> String
func x y z =
  if ((x+y+z)/3 >= 6) then
    "Aprovado"
  else
    "Reprovado"


main = do
    print("Digite uma nota")
    xString <- getLine
    let x = (read xString :: Float)
    print("Digite uma nota")
    yString <- getLine
    let y = (read yString :: Float)
    print("Digite uma nota")
    zString <- getLine
    let z = (read zString :: Float)

    let resultado = func x y z

    print(resultado)
|#

(defun aprovado (m1 m2 m3 m4)
  (cond
    (( >= (/ (+ m1 m2 m3 m4) 4) 6 ) "APROVADO")
    (t "REPROVADO")
  )
)

(defun main ()
  (setq m1 (read))
  (setq m2 (read))
  (setq m3 (read))
  (setq m4 (read))
  (write-line (write-to-string (aprovado m1 m2 m3 m4) ) )
)

(main)
