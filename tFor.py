def forTest( testList ) :
    len = 15
    for i in range(0,len,2) :
        print i 
        
testList = ['this','is','list']

def pyLatin( word ) :
    
    if not isinstance(word, basestring) or len( word ) < 2 :
        raise TypeError

    firstChar = word[0];
    word = word[1:]
    word += firstChar + "ay"
    return word

print pyLatin( "dog" )

CityPlanePrices = { 
    "Charlotte": 183,
    "Tampa": 220,
    "Pittsburgh": 222,
    "Los Angeles": 475 
    }

print CityPlanePrices

def add_monthly_interest(balance):
    return balance * (1 + (0.15 / 12))

def make_payment(payment, balance):
    new_balance = balance - payment
    print str(new_balance)
    
    new_balance += add_monthly_interest( new_balance )
    print "b: %f p: %f n: %f" % (balance,payment,new_balance)
    return "You still owe: " + str(new_balance)
    
make_payment( 10, 100 )

suitcase = ["sunglasses", "hat", "passport", "laptop", "suit", "shoes"]

first = suitcase[:2]   # The first two items

print first

prices = {
    "banana": 4,
    "apple": 2,
    "orange": 1.5,
    "pear": 3
}
    
stock = {
    "banana": 6,
    "apple": 0,
    "orange": 32,
    "pear": 15
}

tolalValue = 0.0

for fruit in prices :
    tolalValue += stock[fruit] * prices[fruit]
     
print tolalValue


for v in stock.iteritems() :
    print v
    
    
for val in range( 2, 11 ) :
    print val
    
    
def reverse( aStr ) :
    nStr = ''
    for pos in range(1,len(aStr) + 1) :
        nStr += aStr[ len(aStr) - pos ]
        print aStr[ len(aStr) - pos ]
    return nStr

print reverse( "testme" )

def median( aList ) :
    if( len(aList) == 1 ) :
        return aList[0]
        
    nList = sorted( aList );
    
    if len( nList ) % 2 == 0 :
        half = int(len( nList ) / 2)
        print "Half: " + str(half)
        return float(nList[half] + nList[half-1]) / 2
    else :
        return nList[ int(len(nList)/2) ]
    
print median( [4, 5, 5, 4] )
