package o;

import java.util.LinkedHashMap;

/* loaded from: classes2.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static LinkedHashMap f52024a;

    /* renamed from: b, reason: collision with root package name */
    public static LinkedHashMap f52025b = new LinkedHashMap(2);

    static {
        f52024a = new LinkedHashMap(6);
        f52024a.put("Y29tLmJhaWR1LnNhcGkyLiguKik=", "ZGUzMDhkNzk3M2I1MTcxODgzMzMzYTk3MjUzMzI3ZTQ=");
        f52024a.put("Y29tLmJhaWR1LnNlYXJjaGJveA==", "YzJiMGI0OTdkMDM4OWU2ZGUxNTA1ZTdmZDhmNGQ1Mzk=");
        f52024a.put("Y29tLmJhaWR1LkJhaWR1TWFw", "YzJiMGI0OTdkMDM4OWU2ZGUxNTA1ZTdmZDhmNGQ1Mzk=");
        f52024a.put("Y29tLmJhaWR1Lm5ldGRpc2s=", "YWU1ODIxNDQwZmFiNWUxYTYxYTAyNWYwMTRiZDg5NzI=");
        f52024a.put("Y29tLmJhaWR1LnRpZWJh", "NjczMDA0Y2YyZjZlZmRlYzIzODVjODExNmMxZThjMTQ=");
        f52024a.put("Y29tLmJhaWR1Lmhhb2thbg==", "N2ZkMzcyNzg1MmQyOWViNmY0MjgzOTg4ZGMwZDYxNTA=");
        LinkedHashMap linkedHashMap = new LinkedHashMap(6);
        for (String str : f52024a.keySet()) {
            linkedHashMap.put(g.l(str), g.l((String) f52024a.get(str)));
        }
        f52024a = linkedHashMap;
        Object[] array = linkedHashMap.keySet().toArray();
        f52025b.put(array[0].toString(), (String) f52024a.get(array[0]));
        f52025b.put(array[1].toString(), (String) f52024a.get(array[1]));
    }
}
