*sposób użycia:*

statystyki proporcji ekranów

`statistics()`

wyświetlanie wzajemnego położenia wyświetlanych obszarów dla różnych proporcji ekranu
parametr: liczba rozważanych przypadków ( *1*: wszystko na jednym obrazku albo *2*: jedno dla 
widescreenów i jedno dla normalnych)

`[always_visible_areas, background_resolutions] = resolutions(1..2)`

`background_resolutions` - wymagane rozmiary tła
`always_visible_areas` - wielkość obszaru widzianego na KAŻDYCH proporcjach

disclaimer: nie należy się przesadnie przejmować tym, że na 3:2 czegoś nie widać do końca. 
Prawie nikt nie ma takiego monitora (<1%)
