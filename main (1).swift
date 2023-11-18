//
//  main.swift
//  SWIFTlab3
//
//  Created by admin on 11/18/23.
//

import Foundation

//zad1
print("Wprowadz dowolny ciag znakow: ")
var ciag = readLine()!
print("Wpisz podedynczy znak: ")
var znak = Character(readLine()!)
print("Wprowadz liczbe calkowita: ")
var liczba = Int(readLine()!)!
    if(ciag.starts(with: String(znak)))
    {
        print("Znak \(znak) znajduje sie na poczatku ciagu")
    }
    else if(ciag.hasSuffix(String(znak)))
    {
        print("Znak \(znak) znajduje sie na koncu ciagu")
    }
     else if(ciag[ciag.index(ciag.startIndex,offsetBy: liczba)]==znak)
    {
        print("Znak \(znak) znajduje sie na indeksie oddalonym o \(liczba) od pocztku ciagu")
    }
else if(ciag[ciag.index(ciag.endIndex,offsetBy: -liczba)]==znak)
{
    print("Znak \(znak) znajduje sie na indeksie oddalonym o \(liczba) od konca ciagu")
}
else{
    print("Podany znak nie znajduje sie na poczatku ani na koncu ciagu, nie ma go tez ideksie znajdujacym sie na odleglosc rowna podanej liczbie od poczatku ani od konca ciagu")
}
////zad2
print("Wprowadz ciag A: ")
var ciagA = readLine()!
print("Wprowadz B: ")
var ciagB = readLine()!
if(ciagA==ciagB)
{
    print("Ciagi sa identyczne")
}
else{print("Ciagi nie sa identyczne")}
print("Wprowadz prefiks: ")
var prefiks = readLine()!
if(ciagA.hasPrefix(prefiks)&&ciagB.hasPrefix(prefiks))
{
    print("Ciag A i ciag B posiadaja ten prefiks")
}
    else if(ciagA.hasPrefix(prefiks))
{
    print("Ciag A posiada podany prefiks")
}
else if(ciagB.hasPrefix(prefiks))
{
    print("Ciag B posaida podany prefiks")
}
else{
    print("Zaden z wporwadzonych ciagow nie posiada tego prefiksu")
}
print("Wprowadz sufiks: ")
var sufiks = readLine()!
if(ciagA.hasSuffix(sufiks)&&ciagB.hasSuffix(sufiks))
{
    print("Obydwa ciagi posiadaja ten sufiks")
}
else if(ciagA.hasSuffix(sufiks))
{
    print("Ciag A posiada wprowadzony sufiks")
}
else if(ciagB.hasSuffix(sufiks))
{
    print("Ciag B posiada wprowadzony sufiks")
}
else{
    print("Zaden z wprowadzonych ciagow nie posiada takiego sufiksu")
}
////zad3
//ROK PRZESTEPNY TO TAKI, KTORY JEST PODZIELNY PRZEZ 4 I NIE JEST PODZIELNY PRZEZ 100 LUB JEST PODZIELNY PRZEZ 400
print("Wprowadz rok, aby sprawdzic, czy jest przestepny: ")
var rok = Int(readLine()!)!
if(rok>0)
{
    if(((rok%4==0) && (rok%100 != 0)) || rok%400==0)
    {
        print("Rok jest przestepny")
    }
    else{
        print("Rok nie jest przestepny")
    }

}
else
{
    print("Wprowadzono niepoprawny rok, sprobuj ponownie")
}
//zad4

print("Wprowadz liczbe calkowita z zakresu od 2 do 3010(rok), aby sprawdzic, ktory wiek reprezentuje: ")
var wczytana = Int(readLine()!)!
if(wczytana >= 2 && wczytana <= 3010){
if (wczytana < 101)
{
    print("rok \(wczytana) - wiek 1")
}
else
{
    let wiek = Int(ceil(Double(wczytana)/100.0))
    print("rok \(wczytana) - wiek \(wiek)")
}
}
else{
    print("Wczytano liczbe spoza zakresu.")
}
//zad5
print("Wprowadz srednia studenta: ")
var srednia = Double(readLine()!)!
if(srednia >= 2.0 && srednia <= 5.0){
switch(srednia)
{
case 0..<3.0: print("Przynalezne stypendium: 0")
case 3.0..<4.0: print("Przynalezne stypendium: 100")
case 4.0..<4.5: print("Przynalezne stypendium: 150")
case 4.5..<5.0: print("Przynalezne stypendium: 200")
default: print("Przynalezne stypendium: 200")
}
}else{
    print("Wprowadzona wartosc sredniej jest niepoprawna, sproboj ponownie")
}
//zad6
print("Wprowadz liczbe calkowita A: ")
var liczbaA = Int(readLine()!)!
print("Wprowadz liczbe calkowita B: ")
var liczbaB = Int(readLine()!)!
print("Wybierz jedna z opcji: \n1-dodawanie\n2-odejmowanie\n3-mnozenie\n4-dzielenie")
var wybrano = Int(readLine()!)!
if(wybrano >= 1 && wybrano <= 4 ){
    let dzielenie = Double(liczbaA)/Double(liczbaB)
    switch(wybrano)
{
case 1: print("Wynik: \(liczbaA+liczbaB)")
case 2: print ("Wynik: \(liczbaA-liczbaB) ")
case 3: print("Wynik: \(liczbaA*liczbaB)")
case 4: if(liczbaB == 0 )
    {
    print("Blad! Nie mozna dzielic przez 0")
    }else{
        print(String(format:"Wynik: %.2lf",dzielenie))

    }
default:print("")
}
}else
{
    print("Wybrano niepoprawna liczbe, sprobuj ponownie, wybierz liczbe od 1 do 4")
}
//zad7
print("Wprowadz znak z klawiatury: ")
var w = Character(readLine()!)
switch(w){
case "a","e","i","o","y","A","E","I","O","U","Y": print("Wprowadzono samogloske")
case "q","w","r","t","p","s","d","f","g","h","j","k","l","z","x","c","v","b","n","Q","W","R","T","P","S","D","F","G","H","J","K","L","Z","X","C","V","B","N","M":
print("Wprowadzono spolgloske")
case "1","2","3","4","5","6","7","8","9","0":
print("Wprowadzono cyfre")
default: print("Wprowadzno inny znak")
}
