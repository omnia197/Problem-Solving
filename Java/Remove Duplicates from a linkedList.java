import java.util.*;
public class Main
{
	public static void main(String[] args) {
	    LinkedList<Integer>r = new LinkedList<Integer>();
	    LinkedList<Integer>s = new LinkedList<Integer>();
	    Test<Integer> t = new Test();
	    r.add(1); r.add(1); r.add(4); r.add(2);
	    s = t.removeDuplicates(r);
	    for(Integer in: s){
	        System.out.println(in);
	    }
		
	}
	
}
class Test<T>{
    public LinkedList<T> removeDuplicates(LinkedList<T> l1){
	    LinkedList<T>res = new LinkedList<T>();
	    for(T t: l1){
	        if(!res.contains(t)){
	            res.add(t);
	        }
	    }
	    return res;
	}
}