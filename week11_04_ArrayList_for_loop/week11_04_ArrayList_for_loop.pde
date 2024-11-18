//week11_04_ArrayList_for_loop
ArrayList<Integer> a= new ArrayList<Integer>();

a.add(3);
a.add(5);
a.add(7);
for(Integer i : a){//進階的 for迴圈
  println(i);  
}

for(int i=0; i<a.size(); i++){//傳統的 for迴圈
  println(a.get(i) );//用.get()取出要的那一個
}
