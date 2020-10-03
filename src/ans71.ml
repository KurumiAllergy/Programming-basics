(*5教科の点数を与えられたらその合計点と平均点を組みにして返す*)
(*goukei_to_heikin : int -> int -> int -> int -> int -> int * int*)
let goukei_to_heikin kokugo sugaku eigo rika syakai = (kokugo + sugaku + eigo + rika + syakai,
                                                        (kokugo + sugaku + eigo + rika + syakai) / 5)

(*test*)
let test1 = goukei_to_heikin 50 50 50 50 50 = (250, 50)
let test2 = goukei_to_heikin 90 70 95 65 90 = (410, 82)
let test3 = goukei_to_heikin 60 50 70 55 65 = (300, 60)