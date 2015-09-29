#!/usr/bin/env ruby
# coding: utf-8

x = 5
arr = ["H","e","l","l","o"," ","W","o","r","l","d","!","\n"]
hex = [0x48,0x65,0x6c,0x6c,0x6f,0x20,0x57,0x6f,0x72,0x6c,0x64,0x21,0x13,0x0a]

# whileループ:5から1ずつ引いていって0になったらループを抜ける
printf("whileループ\t: ")
while x != 0 do
  printf("%5d",x -= 1)
end

# untilループ:0から1ずつ足していって5になったらループを抜ける
printf("\nuntilループ\t: ")
until x == 5 do
  printf("%5d", x )
  x += 1
end

# 後置while:5だとループを抜けるが、必ず1度は実行される
printf("\n後置while\t: ")
begin
  printf("%5d", x)
end while x != 5

# forループ:配列の文字を一つずつ表示する
printf("\nforループ\t: ")
for c in arr do
  putc(c)
end

# .eachメソッド:配列の文字コードを一つずつ表示する
printf("eachメソッド\t: ")
hex.each do |c|
  putc(c)
end

# loop構文: break を使って、x が10になったら無限ループから抜ける
printf("loop構文とbreak\t: ")
loop do
  printf("%5d",x)
  x += 1
  break if x == 10
end
    
# .times メソッド: xの回数(10)分、繰り返す
puts("\n.timesメソッド\t: ")
i = 0
x.times do
  printf("%d:x=%d\t",i+=1,x)
end

# next で処理を実行させない
puts("\n.next構文\t:")
i = 0
x.times do
  printf("%d\t",i)
  next
  printf("%d:x=%d\t",i+=1,x)
end
   
# redo で無限ループ
puts("\nredo構文\t: ^c で抜けるしかない")
x.times do
  redo
end
