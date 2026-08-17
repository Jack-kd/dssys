package com.smartdigimkt.y4;

import android.text.TextUtils;
import com.smartdigimkt.w4.u;
import com.smartdigimkt.w4.x;
import com.smartdigimkt.w4.z;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class b implements com.smartdigimkt.v4.a {

    /* renamed from: a, reason: collision with root package name */
    public final z f45252a;

    /* renamed from: b, reason: collision with root package name */
    public final int f45253b;

    public b(com.smartdigimkt.v4.d dVar) {
        z zVar;
        x xVar = new x(dVar.f44718a, dVar.f44719b);
        xVar.f45001c = false;
        if (TextUtils.isEmpty(xVar.f44999a) || TextUtils.isEmpty(xVar.f45000b)) {
            zVar = null;
        } else {
            String str = xVar.f44999a + xVar.f45000b;
            ConcurrentHashMap concurrentHashMap = x.f44998d;
            zVar = (z) concurrentHashMap.get(str);
            if (zVar == null) {
                synchronized (x.class) {
                    try {
                        zVar = (z) concurrentHashMap.get(str);
                        if (zVar == null) {
                            zVar = new z(xVar.f44999a, xVar.f45000b, xVar.f45001c);
                            concurrentHashMap.put(str, zVar);
                        }
                    } finally {
                    }
                }
            }
        }
        this.f45252a = zVar;
        this.f45253b = dVar.f44721d;
    }

    @Override // com.smartdigimkt.v4.a
    public final void a(Object obj, String str) {
        a(str, obj, this.f45253b);
    }

    @Override // com.smartdigimkt.v4.a
    public final Object b(Object obj, String str) {
        z zVar;
        if (!TextUtils.isEmpty(str) && (zVar = this.f45252a) != null) {
            try {
                if (obj instanceof String) {
                    return zVar.getString(str, (String) obj);
                }
                if (obj instanceof Integer) {
                    return Integer.valueOf(zVar.getInt(str, ((Integer) obj).intValue()));
                }
                if (obj instanceof Long) {
                    return Long.valueOf(zVar.getLong(str, ((Long) obj).longValue()));
                }
                if (!(obj instanceof Double)) {
                    return obj instanceof Float ? Float.valueOf(zVar.getFloat(str, ((Float) obj).floatValue())) : obj instanceof Boolean ? Boolean.valueOf(zVar.getBoolean(str, ((Boolean) obj).booleanValue())) : zVar.d(str);
                }
                double dDoubleValue = ((Double) obj).doubleValue();
                synchronized (zVar) {
                    com.smartdigimkt.w4.d dVar = (com.smartdigimkt.w4.d) zVar.f44954g.get(str);
                    if (dVar != null && dVar.a() == 5) {
                        dDoubleValue = ((com.smartdigimkt.w4.f) dVar).f44975b;
                    }
                }
                return Double.valueOf(dDoubleValue);
            } catch (Throwable th) {
                th.getMessage();
            }
        }
        return obj;
    }

    @Override // com.smartdigimkt.v4.a
    public final void clear() {
        z zVar = this.f45252a;
        if (zVar != null) {
            synchronized (zVar) {
                zVar.c();
                zVar.i();
                zVar.m();
            }
        }
    }

    @Override // com.smartdigimkt.v4.a
    public final Map getAll() {
        z zVar = this.f45252a;
        if (zVar != null) {
            return zVar.getAll();
        }
        return null;
    }

    @Override // com.smartdigimkt.v4.a
    public final void remove(String str) {
        z zVar = this.f45252a;
        if (zVar != null) {
            zVar.remove(str);
            a(this.f45253b);
        }
    }

    @Override // com.smartdigimkt.v4.a
    public final void a(String str, Object obj, int i2) {
        if (TextUtils.isEmpty(str) || obj == null || this.f45252a == null) {
            return;
        }
        try {
            String string = obj.toString();
            if (obj instanceof String) {
                this.f45252a.putString(str, (String) obj);
            } else if (obj instanceof Integer) {
                this.f45252a.putInt(str, Integer.parseInt(string));
            } else if (obj instanceof Long) {
                this.f45252a.putLong(str, Long.parseLong(string));
            } else if (obj instanceof Double) {
                this.f45252a.a(str, Double.parseDouble(string));
            } else if (obj instanceof Float) {
                this.f45252a.putFloat(str, Float.parseFloat(string));
            } else if (obj instanceof Boolean) {
                this.f45252a.putBoolean(str, Boolean.parseBoolean(string));
            }
            a(i2);
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.smartdigimkt.v4.a
    public final void a(HashMap map) {
        z zVar;
        int i2 = this.f45253b;
        if (map.isEmpty() || (zVar = this.f45252a) == null) {
            return;
        }
        try {
            zVar.a(map);
            a(i2);
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public final void a(int i2) {
        z zVar = this.f45252a;
        if (zVar == null) {
            return;
        }
        if (i2 == 0) {
            i2 = 1;
        }
        if (i2 == 1) {
            zVar.f44963p.execute(new u(zVar));
        } else if (i2 == 2) {
            zVar.r();
        }
    }
}
