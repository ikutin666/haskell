doubleMe x = x + x

doubleUs x y = x*2 + y*2
boomBangs xs = [if x < 10 then "БУМ!" else "БАХ!" | x <- [xs], odd x]
luckyTicketv1=   [ (x,y) | x <- [0,1..999], y<-[0,1..999], sumStr(show x)==sumStr(show y)]
luckyTicketv2=  [ show a ++ show b ++ show c ++ show d ++ show i++show f | a <-[0,1..9],b <-[0,1..9],c <-[0,1..9],d <-[0,1..9],i <-[0,1..9],f <-[0,1..9], (a+b+c)==(d+i+f)]
luckyTicketv3= length [ x | x <- [0,1..999999], sumStr(take 3 (show x))==sumStr(drop 3 (show x))]

listToStr ::[Int]->String

listToStr []=[]
listToStr (x:xs)=show x++listToStr xs




strToList :: String->[Int]
strToList []=[]
strToList (x:xs) = (read ([x]) :: Int):(strToList xs)

sumStr :: [Char] -> Int
sumStr []=0
sumStr (x:xs)=(read ([x]) :: Int)+(sumStr xs)



