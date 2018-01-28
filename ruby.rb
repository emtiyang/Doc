# coding: UTF-8
=begin
勇者挑魔王beta0.1
hello ruby
小鱼哥竟然不信？
=end

#cls清屏,只在win下有用？
def cls
system ("cls")
end


def retn
puts "(按回车键继续)"
gets
cls
end

def say(name)
 print "你好！勇者",name,"！","\n"
end

def Yes
  "1、是。"
end

def No
  "2、否。"
end

#自定义choose方法不成功，有问题，重选后，无论输入1或2，都不会被继承?引入实例变量，@num，choose方法成功

def choose(num)
  while num != 2 && num != 1
    puts "请在两个选项中选择。"
    num = gets.to_i
  end
  @num = num
 end
 
 def choosetri(num3)
  while num3 != 2 && num3 != 1 && num3 != 3
    puts "请在三个选项中选择。"
    num3 = gets.to_i
  end
  @num3 = num3
 end

#自定义Fight方法成功
def fight(n,h1,a1,d1,s1,h2,a2,d2,s2)
i = 0 
dam1 = a1 - d2
dam2 = a2 - d1
if a1 <= d2
dam1 = 1
elsif a2 <= d1
dam2 = 1
end

if s1 >= s2
  while h1 > 0 and h2 > 0 do
    h2 -= dam1
    h1 -= dam2
    i += 1
    if h2 <= 0
       puts "第#{i}回合:",""
       puts "你对#{n}发动了攻击，#{n}生命减少了#{dam1}。",""
    else
	puts "第#{i}回合:",""
    puts "你对#{n}发动了攻击，#{n}生命减少了#{dam1}；",""
    puts "#{n}对你发动了攻击，你的生命减少了#{dam2}。",""
	end
  end
  if h2 <= 0
    puts "恭喜你，打倒了#{n}。你的能力得到大幅提升。",""
    sleep 1
    else
    puts "你被#{n}击倒了，游戏结束，请重新开始。"
    sleep 3
    exit
  end
else
   while h1 > 0 and h2 > 0 do
    h1 -= dam2
    h2 -= dam1
    i += 1
    if h1 <= 1
     puts "第#{i}回合:",""
     puts "#{n}对你发动了攻击，你的生命减少了#{dam2}。",""
    else
    puts "第#{i}回合:",""
    puts "#{n}对你发动了攻击，你的生命减少了#{dam2}；",""
    puts "你对#{n}发动了攻击，#{n}生命减少了#{dam1}。",""
    end
   end
  if h1 <= 0
    puts "你被#{n}击倒了，游戏结束，请重新开始。"
    sleep 1
    exit
  else
    puts "恭喜你，打倒了#{n}。你的能力得到大幅提升。",""
    sleep 3
  end
end
end

#勇者初始属性

lv = 0

hp = 50

atk = 5

dif = 2

spd = 1

#自定义shuxing方法
def shuxing(lv,hp,atk,dif,spd)
  puts "你当前的属性如下:",""
  puts "等级:#{lv}.",""
  puts "生命值:#{hp}.",""
  puts "攻击力:#{atk}.",""
  puts "防御力:#{dif}.",""
  puts "速度值:#{spd}.",""
end




print <<Dialo

勇者挑魔王  ver 0.1   
                                  design by M.T
							

				


				
你好，勇者！欢迎来到这个世界！！！

请输入你的名字：（按Alt + Shift可切换输入法，输入后按回车键确认）

Dialo

name = gets.chomp

cls

say(name)

print <<Dialo1

这是个被魔王统治了的黑暗时代，我们急需像你这样的勇者来拯救这个世界！

现在你准备好了嘛？(请输入数字，按回车键确定)

1、准备好了。

2、没有，我还没有搞清这是怎么一回事呢?

Dialo1


choose gets.to_i

choose1 = @num

cls

if choose1 == 1
  puts "很好，勇者！",""
  elsif choose1 == 2
print <<Dialo2

好吧，你还有什么事没有搞清楚呢？

1、你是谁，这里是哪？

2、没有问题了，告诉我魔王在哪里吧！

Dialo2
 
  choose gets.to_i
  choose1B = @num
  cls
  case choose1B
  when 1
print <<Dialo3
村长： 我？呵呵，我就是这条村的村长。

这里是勇者村，所有勇者一开始都会来的地方。
     
好了，现在我要告诉你魔王在哪里了？

Dialo3
     
  else
    puts " 很好，勇者！",""
  end
  
 end

retn

print <<Dialo4

魔王的城堡就在......这里还有一些装备给你，希望你早日战胜魔王，拯救世界。

你获得了：生锈的小刀*1，破旧的布衣*1，草鞋*1 。
 
是否把装备都穿戴上：

1、是。

2、不需要。

Dialo4

choose gets.to_i
choose2 = @num
cls
case choose2
when 1
  puts "已装备好，你的攻击力上升10,防御力上升1,速度上升1。",""
  atk += 10
  dif += 1
  spd += 1
   
else
 puts "破装备，我不需要。" ,""
end

retn

print <<Dialo4

前方出现几只史莱姆，看起来很弱，是否消灭他们？

1、是。

2、否。还是直接找魔王去。

Dialo4

choose gets.to_i
choose3 = @num
cls
case choose3
when 1
  puts "杀啊。",""
  puts "你终于干翻这堆小怪物！等级+1,生命+50,攻击+10,防御+2,速度+1。",""
  lv += 1
  hp += 50
  atk += 10
  dif += 2
  spd += 1
   
else
  puts "溜之大吉。",""
   
end

retn

print <<Dialo6

前面大山脚下有几只地精，看起来有点强壮，是否消灭他们？

Dialo6
puts Yes(),""
puts No()


choose gets.to_i
choose4 = @num
cls
case choose4
when 1
  if choose3 == 2
    puts "你被地精围欧致死，游戏结束，请重新开始吧。"
    sleep 3
    exit
  else
    puts "你死里逃生，终于在最后一只地精攻击过来前将他打死。",""
    puts "你的能力得到大幅提升。等级+5,生命+250,攻击+50,防御+10,速度

+5。",""
    lv += 5
    hp += 250
    atk += 50
    dif += 10
    spd += 5
     
  end
else
  puts "你偷偷溜过去时被地精发现，最终被围欧致死。游戏结束，请重新开始吧。"
sleep 3
  exit
end
retn
puts "你从地精身上找到了铁匕首，皮甲，皮靴，是否装备上。",""
puts Yes(),""
puts No()


choose gets.to_i
choose5 = @num
cls
case choose5
when 1
  puts "你的攻击力上升了40,防御力上升了8。",""
  atk += 40
  dif += 8
   
else
   
end
retn
#哥布林的属性
glv = 20
ghp = 1000
gatk = 200
gdif = 100
gspd = 10

print <<Dialo7

终于来到魔王城堡下的山洞入口，通过这个洞口就可以进入魔王的宫殿了。

不过，山洞口站着两个高大的哥布林，手里持着粗大的铁棒，是否攻击他们？

1、是的。

2、还是再找几只地精练练手。

Dialo7


choose gets.to_i
choose6 = @num
cls
  while choose6 != 1
    puts "你战胜了地精，能力大幅度提升了。等级+5,生命+250,攻击+50,防御+10,

速度+5。"
  lv += 5
  hp += 250
  atk += 50
  dif += 10
  spd += 5
  shuxing lv,hp,atk,dif,spd 
  retn
  print <<Dialo8

是继续打地精升级还是去挑战哥布林？

1、挑战哥布林。

2、继续打地精。

Dialo8

  choose gets.to_i
    choose6 = @num
   cls
  end

 if choose6 == 1
 fight "哥布林", hp, atk, dif, spd, ghp, gatk, gdif, gspd
end

 puts "你的等级+10,生命+500,攻击+100,防御+20,速度+10。",""
  lv += 10
  hp += 500
  atk += 100
  dif += 20
  spd += 10
 shuxing lv,hp,atk,dif,spd
   
retn
  puts "哥布林掉在地上的粗大的铁棒，是否捡起来装备上？",""
  puts Yes(),""
  puts No()


  choose gets.to_i
    choose7 = @num
  cls
  if choose7 == 1
    puts "你的攻击力上升了100,速度下降了5。",""
    atk += 100
    spd -= 5
     
  end
  
retn

  #石巨人的属性
  slv = 30
  shp = 1500
  satk = 300
  sdif = 150
  sspd = 5

print <<Dialo
 
"通过了山洞,你终于看到了魔王的城堡,而且城堡门口还有个石巨人."
  
"要不要动他?"

Dialo
  puts Yes(),""
   puts No()


  choose gets.to_i
  choose8 = @num
  cls
  if choose8 == 1
    fight "石巨人",hp,atk,dif,spd,shp,satk,sdif,sspd
  else
    print "这个时候没有退路了,勇者",name,"啊,你还是上吧."
    fight "石巨人",hp,atk,dif,spd,shp,satk,sdif,sspd
  end
  
  puts "你的等级+20,生命+1000,攻击+200,防御+40,速度+20。",""
  lv += 20
  hp += 1000
  atk += 200
  dif += 40
  spd += 20
  shuxing lv,hp,atk,dif,spd
   
retn
 
  #魔王属性
  blv = 100
  bhp = 60000
  batk = 6000
  bdif = 600
  bspd = 60

  print "来吧,勇者",name,",魔王就在城堡的大殿内等着你.\n"
print <<Dialo9

拿出你所有的勇气,杀进去吧.

现在,你来到了魔王的面前,你的选择是:

1、向魔王打个招呼.

2、二话不说，开打.
Dialo9
  

  choose gets.to_i
  choose9 = @num 
 cls
  if choose9 == 1
    print <<Dialo10
“那个..魔王,你好!”
     
魔王: 你好啊,新来的勇者.你来我的城堡有何贵干,也是像其它勇者一样为了打败我嘛

?
     
“像其它勇者一样打败你?不是,不是...等等,这有其它勇者?”
      
魔王: 当然,你不是第一个,也很可能不是最后一个,至于在你之前来的那些勇者,我把

他们都消灭掉了.
       
“消..消灭掉了?(呵呵,还好没二话不说就开打.)”


Dialo10

retn

print <<Dialo10
  
魔王: 是的,就凭他们那几下三脚猫功夫,和几件破装备,就想打倒我,简直太天真了!当然，

多数的勇者都没走到我这里,就被哥布林王收拾掉了.
  
“(哥布林王?)呵呵..呵呵..就是还没来到城堡这里就挂掉了?”
   
魔王: 那是,哥布林王虽然实力不如我,但对付那些普通的勇者还是绰绰有余的.只是,

那家伙老是偷懒,时不时就不知道跑到哪里去玩了.
    
“喔...喔...呵呵”
     
魔王: 好了,不废话了,既然你来这里不是为了打倒我,那你的目的是什么?
    
1、 我..我就是..刚来到这里,好奇,四处走走看看...
     
2、 我当然是为了打倒你,拯救这个世界.
    
3、 我来这里,是因为村长说,打倒了你,就可以拯救这个世界.

Dialo10
     
    choosetri gets.to_i
	choose9A = @num3
	
	cls
    
    case choose9A
    when 1
      print <<Dialo11

魔王: 你说谎,勇者!!!你身上的装备,不都是打倒我手下获得的嘛?你是蒙骗不了我的.

受死吧,勇者.
        
你没有来得及还手，就被魔王一巴掌拍死了。游戏结束，请重新开始。

Dialo11
              
      sleep3
      exit
    when 2
      puts "魔王: 很好,我最欣赏你这样的勇者,来吧,让我看看你有几斤几两."
      fight "魔王",hp,atk,dif,spd,bhp,batk,bdif,bspd
    print <<Dialo12

魔王: 什么,我竟然会被你打败,这是不可能的,这是不可能的!!!

魔王使用了自爆,勇者被自爆产生的冲击波卷了进去,无法幸免,游戏结束.

Dialo12
      sleep3
      exit
    end
  else
    fight "魔王",hp,atk,dif,spd,bhp,batk,bdif,bspd
   print <<Dialo13

魔王: 什么,我竟然会被你打败,这是不可能的,这是不可能的!!!

魔王使用自爆,勇者被自爆产生的冲击波卷了进去,无法幸免,游戏结束.

Dialo13
      sleep3
      exit
  end
  
  if choose9A == 3
   print <<Dialo14
魔王: 哈.哈.哈...很好,你是第一个这么诚实的勇者.那么我问你,你对那个叫你来这

里的人,知道多少?
      
“这个,我只知道他是新手村的村长.”
       
魔王: 这是当然,就算你仔细去问,他也不会告诉你更多的.因为所谓的勇者村,不过是

他为了召唤你们这些勇者而搭建的一个小地方,里面的那些村民也都是他的手下.而召

唤你们这些勇者的目的,并不是为了拯救什么世界,这个世界好着呢.他只是为了打倒我

,好让他自己当上魔王,然后统一这个世界,成就他的黑暗时代梦想.


Dialo14

retn
print <<Dialo14

“这,这不可能.要是村长这么有野心,你又怎么可能会放过他,任他召唤勇者来对付你.”
         
魔王: 哈哈哈...问得好,勇者.因为当魔王真的很无聊,而那个村长,他可以时不时给我

提供一些乐趣,而我又可阻止他统一这个世界的野心,一举两得.所以我是不会主动把自

己的乐趣给断掉的.   
       
“真的是这样?那身为魔王的你又为什么不去统一世界,把这个世界全部变成魔域?”
           
魔王: 那是因为这件事很累,又没有什么乐趣.我把这个世界都变成魔域,我也得不到什

么乐趣.再说了,我放着不理,外面还是偶尔有人类的军队来攻打我的,这样我就多了一

点乐子.
  
“真的只是这样..嘛?”



Dialo14

retn

print <<Dialo14
   
魔王: 信不信由你?你可以回去问问你的那位村长,又或者...陪我玩一下,呵.呵呵.

1、好，那我就回去问问村长，打扰了，魔王。

2、我才不会被你的那些鬼话迷惑，受死吧，魔王。

Dialo14


    choose gets.to_i
	choose9B = @num
	cls
    if choose9B == 2
     fight "魔王",hp,atk,dif,spd,bhp,batk,bdif,bspd
     puts "魔王: 什么,我竟然会被你打败,这是不可能的,这是不可能的!!!"
      puts "魔王使用自爆,勇者被自爆产生的冲击波卷了进去,无法幸免,游戏结束."
      sleep3
      exit
    end
  end

  if choose9B == 1
   print <<Dialo15

你离开了魔王的城堡，怀着满肚子的疑惑找到了村长。

你想问村长什么呢？

1、村长，你到底是谁？

2、这里到底是哪里？

Dialo15
  end

    choose gets.to_i
	choose9C = @num
	cls
    if choose9C == 2
print "村长: 咦！？勇者，这里就勇者村，专门负责接待像",name,"你这样的勇者的地方。\n"	
print <<Dialo16

“那村长你到底是谁？”

村长: 呵呵！那个魔王肯定对你说什么了吧。勇者你可别被魔王的话给迷惑了，我就

是这条村第九代的村长，专门负责接待勇者大人你的。

(按回车键继续)
Dialo16
      
    else
print <<Dialo17

村长: 咦，勇者，你怎么回来了？

村长: 呵呵！那个魔王肯定对你说什么了吧。勇者你可别被魔王的话给迷惑了，我就

是这条村第九代的村长，专门负责接待勇者大人你的。

“那这里到底是哪里？”

Dialo17

print "村长: 勇者，这里就勇者村，专门负责接待像",name,"你这样的勇者的地方。\n","\n"
	 
puts "(按回车键继续)"
    end
    


  gets
  cls
  
print <<Dialo18

“你骗人，这里根本不是什么勇者村，你也不是什么村长。你只不过是召唤我来帮你打

败魔王，好让你自己当上魔王而已。”

村长: 呵呵，好聪明的勇者，看来又得重新召唤个傻瓜了。

村长露出了本来面目，变成了一只蝠妖。

战斗开始。



Dialo18

retn
 
  
 #村长的属性
  clv =50
  chp = 2500
  catk = 500
  cdif = 250
  cspd = 50
  fight "村长",hp,atk,dif,spd,chp,catk,cdif,cspd
  retn
  print "恭喜你，",name,"勇者，你已经成功通关。你可以离开这个世界了。\n","\n"
  puts "请输入'1',开启法阵，你就可以回到你原来的世界了。"
choose10 = gets.to_i
while choose10 != 1
  puts "请输入数字1。",""
  choose10 = gets.to_i
end

cls

print <<Fz
◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇
◇◇◇◇◇◇◇◇◇◇◇◇◇◆◆◇◇◇◇◇◇◇◇◇◇◇◇◇◇
◇◇◇◇◆◆◆◆◆◆◆◆◆◆◆◆◇◇◇◇◇◇◇◇◇◇◇◇◇
◇◇◇◇◇◆◆◆◆◆◆◆◆◆◆◇◇◇◇◇◇◇◆◇◇◇◇◇◇
◇◇◇◇◇◇◇◇◇◇◇◇◇◆◆◇◇◇◇◇◇◇◆◆◇◇◇◇◇
◇◇◇◇◇◇◇◇◇◇◇◇◇◆◆◇◇◇◇◇◇◇◆◆◇◇◇◇◇
◇◇◇◇◇◇◇◇◇◇◇◇◇◆◆◇◇◇◇◇◇◇◆◆◇◇◇◇◇
◇◇◇◇◇◇◇◇◇◇◇◇◇◆◆◇◇◇◇◇◇◆◆◇◇◇◇◇◇
◇◇◇◇◇◇◇◇◇◇◇◇◇◆◇◇◇◇◇◇◇◆◆◇◇◇◇◇◇
◇◇◇◇◇◇◇◇◇◇◇◇◇◆◇◇◇◇◇◇◇◆◆◇◇◇◇◇◇
◇◇◇◇◆◆◇◇◇◇◇◇◇◆◇◇◇◇◆◆◆◆◆◇◇◇◇◇◇
◇◇◇◇◆◆◇◇◇◆◆◆◆◆◆◆◆◆◆◆◆◆◆◇◇◇◇◇◇
◇◇◇◇◇◆◆◆◆◆◆◆◆◆◆◆◆◆◇◇◇◆◆◇◇◇◇◇◇
◇◇◇◇◇◆◆◆◆◇◇◇◇◆◆◇◇◇◇◇◇◆◆◇◇◇◇◇◇
◇◇◇◇◇◆◆◇◇◇◇◇◇◆◆◇◇◇◇◇◇◆◆◇◇◇◇◇◇
◇◇◇◇◇◆◆◇◇◇◇◇◇◆◆◇◇◇◇◇◇◇◇◇◇◇◇◇◇
◇◇◇◇◇◆◆◇◇◇◇◇◇◆◆◇◇◇◇◇◇◇◇◇◇◇◇◇◇
◇◇◇◇◇◆◆◇◇◇◇◇◇◆◆◇◇◇◇◇◇◇◇◇◇◇◇◇◇
◇◇◇◇◇◆◆◇◇◇◇◇◆◆◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇
◇◇◇◇◆◆◇◇◇◇◇◇◆◆◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇
◇◇◇◇◆◆◇◇◇◇◇◇◆◆◇◇◇◇◇◇◆◆◆◆◇◇◇◇◇
◇◇◇◇◆◆◇◇◇◇◇◇◆◆◆◆◆◆◆◆◆◆◆◆◆◇◇◇◇
◇◇◇◇◇◆◇◇◇◇◇◇◆◆◆◆◆◆◆◆◆◇◇◇◇◇◇◇◇
◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇

Fz

retn

print "恭喜你已开启法阵，再见，勇者",name,"。\n"

sleep 3

exit




  


