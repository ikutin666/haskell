t=[1,2..10]
t2=[x|x<-t,x>4]
triangle=[(a,b,c)|c<-[1,2..10],b<-[1,2..c],a<-[1,2..b],
    a+b+c==24,a*a+b*b==c*c]


length'::(Num b)=>[a]->b
length' xs =sum [1| _<-xs]

tt [x]="111"
tt (_:_)="444"


--replicate'::(Eq n, Show e)=>n->e->[e]
replicate' 1 e=[e]
replicate' 0 e=[]
replicate' n e=e:(replicate' (n-1) e)

take' n (x:xs)
    | n<=0 =[]
    | otherwise = x:(take'  (n-1) xs)

reverse' []=[]

reverse' (x:xs)=(reverse' xs)++[x]