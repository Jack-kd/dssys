package j1;

import h1.C1431D;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public abstract class h {
    public static Map a(e eVar) {
        C1431D c1431dC = eVar.c();
        if (c1431dC == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("sql", c1431dC.c());
        map.put("arguments", c1431dC.b());
        return map;
    }
}
