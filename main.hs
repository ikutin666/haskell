t=[1,2..10]
t2=[x|x<-t,x>4]
triangle=[(a,b,c)|c<-[1,2..10],b<-[1,2..c],a<-[1,2..b],
    a+b+c==24,a*a+b*b==c*c]


length'::(Num b)=>[a]->b
length' xs =sum [1| _<-xs]