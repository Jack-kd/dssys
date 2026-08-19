package o;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import p.C1749a;

/* loaded from: classes2.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f52028a;

    static {
        HashMap map = new HashMap();
        f52028a = map;
        map.put("pid", "111");
        map.put("type", "1023");
        map.put("device", "android");
    }

    public static void a(String str, HashMap map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            p.d dVar = new p.d();
            dVar.c(f52028a);
            dVar.b("name", str);
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    if (!TextUtils.isEmpty((CharSequence) entry.getKey()) && !TextUtils.isEmpty((CharSequence) entry.getValue())) {
                        dVar.b((String) entry.getKey(), (String) entry.getValue());
                    }
                }
            }
            new C1749a().d(c.c(), dVar, new f(true));
        } catch (Throwable th) {
            d.c(th);
        }
    }
}
