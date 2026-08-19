package com.anythink.core.common.h;

import com.anythink.core.api.ATAdInfo;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class bp {

    /* renamed from: b, reason: collision with root package name */
    private Map<String, Object> f4008b;

    /* renamed from: c, reason: collision with root package name */
    private i f4009c;

    /* renamed from: d, reason: collision with root package name */
    private Map<String, String> f4010d;

    /* renamed from: f, reason: collision with root package name */
    private boolean f4012f;

    /* renamed from: h, reason: collision with root package name */
    private Map<String, String> f4014h;

    /* renamed from: g, reason: collision with root package name */
    private String f4013g = "";

    /* renamed from: a, reason: collision with root package name */
    final Object f4007a = new Object();

    /* renamed from: i, reason: collision with root package name */
    private JSONObject f4015i = null;

    /* renamed from: j, reason: collision with root package name */
    private at f4016j = null;

    /* renamed from: e, reason: collision with root package name */
    private final Map<String, com.anythink.core.common.f> f4011e = new ConcurrentHashMap(1);

    public final Object a() {
        return this.f4007a;
    }

    public final Map<String, Object> b() {
        return this.f4008b;
    }

    public final i c() {
        return this.f4009c;
    }

    public final boolean d() {
        return this.f4012f;
    }

    public final String e() {
        return this.f4013g;
    }

    public final JSONObject f() {
        return this.f4015i;
    }

    public final com.anythink.core.common.f a(String str) {
        return this.f4011e.get(str);
    }

    public final String b(String str) {
        Map<String, String> map = this.f4010d;
        return map == null ? "" : map.remove(str);
    }

    public final String c(String str) {
        Map<String, String> map = this.f4014h;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    public final void a(String str, com.anythink.core.common.f fVar) {
        this.f4011e.put(str, fVar);
    }

    public final void a(Map<String, Object> map) {
        this.f4008b = map;
    }

    private void a(String str, Object obj) {
        if (this.f4008b == null) {
            this.f4008b = new ConcurrentHashMap(2);
        }
        this.f4008b.put(str, obj);
    }

    public final void b(String str, String str2) {
        if (this.f4014h == null) {
            this.f4014h = new ConcurrentHashMap(2);
        }
        this.f4014h.put(str, str2);
    }

    public final void a(ATAdInfo aTAdInfo) {
        if (aTAdInfo != null) {
            this.f4009c = new i(aTAdInfo.getAdsourceId(), aTAdInfo.getShowId(), aTAdInfo.getNetworkFirmId());
        } else {
            this.f4009c = null;
        }
    }

    public final void a(String str, String str2) {
        synchronized (this) {
            try {
                if (this.f4010d == null) {
                    this.f4010d = new ConcurrentHashMap(2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f4010d.put(str, str2);
    }

    public final void a(boolean z2) {
        this.f4012f = z2;
    }

    public final void a(Object[] objArr) {
        this.f4013g = com.anythink.core.common.v.p.a(objArr);
    }

    public final void a(JSONObject jSONObject) {
        this.f4015i = jSONObject;
    }

    public final void a(String str, List<c> list) {
        if (this.f4016j == null) {
            this.f4016j = new at();
        }
        this.f4016j.a(str, list);
    }

    public final void a(String str, String str2, String str3) {
        at atVar = this.f4016j;
        if (atVar != null) {
            atVar.a(str, str2, str3);
        }
    }
}
