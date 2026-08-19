package com.anythink.core.common;

import android.text.TextUtils;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.h.aw;
import com.anythink.core.common.h.by;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static String f2379a = "c";

    /* renamed from: f, reason: collision with root package name */
    private static volatile c f2380f;

    /* renamed from: b, reason: collision with root package name */
    ConcurrentHashMap<String, Long> f2381b = new ConcurrentHashMap<>();

    /* renamed from: c, reason: collision with root package name */
    ConcurrentHashMap<String, Long> f2382c = new ConcurrentHashMap<>();

    /* renamed from: d, reason: collision with root package name */
    Map<String, a> f2383d = new ConcurrentHashMap(5);

    /* renamed from: e, reason: collision with root package name */
    Map<String, aw> f2384e;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        String f2387a;

        /* renamed from: b, reason: collision with root package name */
        String f2388b;

        /* renamed from: c, reason: collision with root package name */
        long f2389c;
    }

    private c() {
    }

    public static c a() {
        if (f2380f == null) {
            synchronized (c.class) {
                try {
                    if (f2380f == null) {
                        f2380f = new c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f2380f;
    }

    public final boolean b(by byVar) {
        if (byVar.y() == 7) {
            return false;
        }
        if (byVar.U() == 0) {
            return false;
        }
        return (this.f2382c.get(byVar.G()) != null ? this.f2382c.get(byVar.G()).longValue() : 0L) + byVar.U() >= System.currentTimeMillis();
    }

    private void b(String str, long j2) {
        this.f2382c.put(str, Long.valueOf(j2));
    }

    public final boolean a(by byVar) {
        if (byVar.T() == 0) {
            return false;
        }
        return (this.f2381b.get(byVar.G()) != null ? this.f2381b.get(byVar.G()).longValue() : 0L) + byVar.T() >= System.currentTimeMillis();
    }

    public final void b(String str) {
        JSONObject jSONObjectOptJSONObject;
        this.f2384e = new ConcurrentHashMap(3);
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                try {
                    String next = itKeys.next();
                    if (!TextUtils.isEmpty(next) && (jSONObjectOptJSONObject = jSONObject.optJSONObject(next)) != null) {
                        this.f2384e.put(next, new aw(jSONObjectOptJSONObject));
                    }
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
        }
    }

    public final void a(String str, long j2) {
        this.f2381b.put(str, Long.valueOf(j2));
    }

    public final long a(String str) {
        Long l2 = this.f2382c.get(str);
        if (l2 != null) {
            return l2.longValue();
        }
        return 0L;
    }

    public final void a(String str, long j2, AdError adError) {
        if (TextUtils.equals(adError.getCode(), ErrorCode.noADError)) {
            a aVar = this.f2383d.get(str);
            if (aVar == null) {
                aVar = new a();
            }
            aVar.f2387a = adError.getPlatformCode();
            aVar.f2388b = adError.getPlatformMSG();
            aVar.f2389c = j2;
            this.f2383d.put(str, aVar);
        }
    }

    public final boolean a(int i2, com.anythink.core.e.m mVar, by byVar) {
        int i3;
        if (this.f2384e == null) {
            return false;
        }
        List<Integer> listA = mVar.A();
        if (listA.isEmpty()) {
            return false;
        }
        a aVar = this.f2383d.get(byVar.G());
        if (aVar == null) {
            return false;
        }
        switch (i2) {
            case 1:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                i3 = 3;
                break;
            case 2:
            default:
                i3 = 1;
                break;
            case 8:
                i3 = 2;
                break;
        }
        if (!listA.contains(Integer.valueOf(i3))) {
            return false;
        }
        aw awVar = this.f2384e.get(String.valueOf(byVar.n()));
        if (awVar == null) {
            return false;
        }
        List<aw.a> listA2 = awVar.a();
        if (listA2.isEmpty()) {
            return false;
        }
        return a(listA2, aVar);
    }

    private static boolean a(List<aw.a> list, a aVar) {
        if (aVar != null && list != null) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                try {
                    aw.a aVar2 = list.get(i2);
                    if (aVar2 != null) {
                        String strA = aVar2.a();
                        if (TextUtils.isEmpty(strA)) {
                            continue;
                        } else {
                            long jB = aVar2.b();
                            Map<String, Long> mapC = aVar2.c();
                            if (strA.equals("-88888")) {
                                if (!TextUtils.isEmpty(aVar.f2388b) && mapC != null && !mapC.isEmpty()) {
                                    for (Map.Entry<String, Long> entry : mapC.entrySet()) {
                                        String key = entry.getKey();
                                        Long value = entry.getValue();
                                        if (value.longValue() > 0 && !TextUtils.isEmpty(key) && aVar.f2388b.contains(key) && aVar.f2389c + value.longValue() > System.currentTimeMillis()) {
                                            return true;
                                        }
                                    }
                                }
                            } else if (TextUtils.isEmpty(aVar.f2387a)) {
                                continue;
                            } else if (TextUtils.isEmpty(aVar.f2388b)) {
                                if (strA.equals(aVar.f2387a) && ((mapC == null || mapC.isEmpty()) && jB > 0 && aVar.f2389c + jB > System.currentTimeMillis())) {
                                    return true;
                                }
                            } else if (mapC == null || mapC.isEmpty()) {
                                if (jB > 0 && aVar.f2389c + jB > System.currentTimeMillis()) {
                                    return true;
                                }
                            } else {
                                for (Map.Entry<String, Long> entry2 : mapC.entrySet()) {
                                    String key2 = entry2.getKey();
                                    Long value2 = entry2.getValue();
                                    if (value2.longValue() > 0 && !TextUtils.isEmpty(key2) && aVar.f2388b.contains(key2) && aVar.f2389c + value2.longValue() > System.currentTimeMillis()) {
                                        return true;
                                    }
                                }
                            }
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        return false;
    }
}
