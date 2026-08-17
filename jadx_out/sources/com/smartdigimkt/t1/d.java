package com.smartdigimkt.t1;

import android.text.TextUtils;
import com.smartdigimkt.c5.q;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.z.a0;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class d {

    /* renamed from: j, reason: collision with root package name */
    public static volatile d f44198j;

    /* renamed from: c, reason: collision with root package name */
    public String f44201c;

    /* renamed from: d, reason: collision with root package name */
    public File f44202d;

    /* renamed from: h, reason: collision with root package name */
    public String f44206h;

    /* renamed from: i, reason: collision with root package name */
    public String f44207i;

    /* renamed from: a, reason: collision with root package name */
    public final String f44199a = d.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    public final String f44200b = com.smartdigimkt.c5.d.a("aHR0cHM6Ly9tb3Jlcy5hbnl0aGlua3RlY2guY29tL3RpbmlmeS90YWt1X2FkeF9leHRfcmVzX2pzb24udHh0");

    /* renamed from: e, reason: collision with root package name */
    public boolean f44203e = false;

    /* renamed from: f, reason: collision with root package name */
    public final Object f44204f = new Object();

    /* renamed from: g, reason: collision with root package name */
    public Map f44205g = new HashMap();

    public static d a() {
        if (f44198j == null) {
            synchronized (d.class) {
                try {
                    if (f44198j == null) {
                        f44198j = new d();
                    }
                } finally {
                }
            }
        }
        return f44198j;
    }

    public final boolean b() {
        String str;
        if (this.f44203e) {
            return false;
        }
        String str2 = "";
        com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
        if (aVarA != null && !aVarA.f39371f) {
            str2 = aVarA.f39360V;
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = this.f44200b;
        }
        if (TextUtils.isEmpty(str2) || TextUtils.equals(this.f44207i, str2)) {
            return false;
        }
        synchronized (this) {
            str = this.f44206h;
        }
        if (TextUtils.isEmpty(str) || !TextUtils.equals(str, str2)) {
            this.f44201c = str2;
            return true;
        }
        if (this.f44205g.isEmpty()) {
            this.f44205g = c();
        }
        return false;
    }

    public final synchronized HashMap c() {
        synchronized (this.f44204f) {
            if (this.f44202d == null) {
                return new HashMap();
            }
            String strC = "";
            try {
                File file = new File(this.f44202d, "adx_optional_res.txt");
                if (file.exists() && file.canRead()) {
                    strC = q.c(file);
                }
            } catch (Throwable unused) {
            }
            return a(strC);
        }
    }

    public final synchronized HashMap a(String str) {
        HashMap map = new HashMap();
        if (TextUtils.isEmpty(str)) {
            return map;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.optString(next));
            }
        } catch (Throwable unused) {
        }
        return map;
    }

    public final boolean c(String str) {
        Map map = this.f44205g;
        if (map != null && !map.isEmpty()) {
            String str2 = (String) this.f44205g.get(str);
            if (!TextUtils.isEmpty(str2) && a0.a().b(new o(3, str2), 0, 0) != null) {
                return true;
            }
        }
        return false;
    }

    public final void a(HashSet hashSet, String str) {
        String strB = b(str);
        if (TextUtils.isEmpty(strB)) {
            return;
        }
        hashSet.add(strB);
    }

    public final String b(String str) {
        Map map = this.f44205g;
        if (map != null && !map.isEmpty()) {
            return (String) this.f44205g.get(str);
        }
        return "";
    }
}
