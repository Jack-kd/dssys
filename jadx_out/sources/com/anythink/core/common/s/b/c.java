package com.anythink.core.common.s.b;

import android.text.TextUtils;
import com.anythink.core.common.d.t;
import com.anythink.core.common.s.a.g;
import com.anythink.core.common.s.a.j;
import java.util.Map;

/* loaded from: classes2.dex */
public class c implements com.anythink.core.common.s.a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f7642a = "c";

    /* renamed from: b, reason: collision with root package name */
    private final String f7643b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f7644c;

    /* renamed from: d, reason: collision with root package name */
    private final com.anythink.core.common.s.a.a f7645d;

    /* renamed from: e, reason: collision with root package name */
    private final int f7646e;

    public c(com.anythink.core.common.s.c cVar) {
        j.a aVar = new j.a(cVar.a(), cVar.b());
        aVar.a();
        j jVarB = aVar.b();
        this.f7645d = jVarB;
        this.f7646e = cVar.d();
        String strB = cVar.b();
        this.f7643b = strB;
        if (strB.endsWith(t.f3016a)) {
            this.f7644c = true;
        } else {
            this.f7644c = jVarB.getBoolean(t.a.f3032a, false);
        }
    }

    private static com.anythink.core.common.s.a.a a(com.anythink.core.common.s.c cVar) {
        j.a aVar = new j.a(cVar.a(), cVar.b());
        aVar.a();
        return aVar.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.anythink.core.common.s.a
    public final <V> V b(String str, V v2) {
        com.anythink.core.common.s.a.a aVar;
        if (!TextUtils.isEmpty(str) && v2 != 0 && (aVar = this.f7645d) != null) {
            try {
                return v2 instanceof String ? (V) aVar.getString(str, (String) v2) : v2 instanceof Integer ? (V) Integer.valueOf(aVar.getInt(str, ((Integer) v2).intValue())) : v2 instanceof Long ? (V) Long.valueOf(aVar.getLong(str, ((Long) v2).longValue())) : v2 instanceof Double ? (V) Double.valueOf(aVar.a(str, ((Double) v2).doubleValue())) : v2 instanceof Float ? (V) Float.valueOf(aVar.getFloat(str, ((Float) v2).floatValue())) : v2 instanceof Boolean ? (V) Boolean.valueOf(aVar.getBoolean(str, ((Boolean) v2).booleanValue())) : (V) aVar.d(str);
            } catch (Throwable unused) {
            }
        }
        return v2;
    }

    @Override // com.anythink.core.common.s.a
    public final int c() {
        com.anythink.core.common.s.a.a aVar = this.f7645d;
        if (aVar instanceof j) {
            return ((j) aVar).j();
        }
        return 0;
    }

    public final boolean d() {
        return this.f7644c;
    }

    public final void e() {
        this.f7644c = true;
        a(t.a.f3032a, (String) Boolean.TRUE);
    }

    @Override // com.anythink.core.common.s.a
    public final <V> void a(String str, V v2) {
        a(str, v2, this.f7646e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.anythink.core.common.s.a
    public final <V> void a(String str, V v2, int i2) {
        if (TextUtils.isEmpty(str) || v2 == 0 || this.f7645d == null) {
            return;
        }
        try {
            String string = v2.toString();
            if (v2 instanceof String) {
                this.f7645d.putString(str, (String) v2);
            } else if (v2 instanceof Integer) {
                this.f7645d.putInt(str, Integer.parseInt(string));
            } else if (v2 instanceof Long) {
                this.f7645d.putLong(str, Long.parseLong(string));
            } else if (v2 instanceof Double) {
                this.f7645d.b(str, Double.parseDouble(string));
            } else if (v2 instanceof Float) {
                this.f7645d.putFloat(str, Float.parseFloat(string));
            } else if (v2 instanceof Boolean) {
                this.f7645d.putBoolean(str, Boolean.parseBoolean(string));
            }
            a(i2);
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.core.common.s.a
    public final void b(String str) {
        com.anythink.core.common.s.a.a aVar = this.f7645d;
        if (aVar != null) {
            aVar.remove(str);
            a(this.f7646e);
        }
    }

    @Override // com.anythink.core.common.s.a
    public final void b() {
        com.anythink.core.common.s.a.a aVar = this.f7645d;
        if (aVar != null) {
            aVar.clear();
        }
    }

    @Override // com.anythink.core.common.s.a
    public final void a(Map<String, Object> map) {
        a(map, this.f7646e);
    }

    @Override // com.anythink.core.common.s.a
    public final void a(Map<String, Object> map, int i2) {
        com.anythink.core.common.s.a.a aVar;
        if (map == null || map.isEmpty() || (aVar = this.f7645d) == null) {
            return;
        }
        try {
            aVar.a(map, (Map<Class, com.anythink.core.common.s.a.a.b>) null);
            a(i2);
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.core.common.s.a
    public final Map<String, Object> a() {
        com.anythink.core.common.s.a.a aVar = this.f7645d;
        if (aVar != null) {
            return aVar.getAll();
        }
        return null;
    }

    @Override // com.anythink.core.common.s.a
    public final boolean a(String str) {
        com.anythink.core.common.s.a.a aVar = this.f7645d;
        return aVar != null && aVar.contains(str);
    }

    private void a(int i2) {
        com.anythink.core.common.s.a.a aVar = this.f7645d;
        if (aVar == null) {
            return;
        }
        if (aVar instanceof g) {
            i2 = ((g) aVar).j();
        } else if ((aVar instanceof j) && i2 == 0) {
            i2 = 1;
        }
        if (i2 == 1) {
            this.f7645d.apply();
        } else if (i2 == 2) {
            this.f7645d.commit();
        }
    }
}
