package com.smartdigimkt.h3;

import android.text.TextUtils;
import com.kuaishou.weapon.p0.bg;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;

/* loaded from: classes5.dex */
public final class m {

    /* renamed from: n, reason: collision with root package name */
    public static m f40575n;

    /* renamed from: b, reason: collision with root package name */
    public long f40577b;

    /* renamed from: g, reason: collision with root package name */
    public k f40582g;

    /* renamed from: m, reason: collision with root package name */
    public com.smartdigimkt.x.f f40588m;

    /* renamed from: a, reason: collision with root package name */
    public final String f40576a = m.class.getSimpleName();

    /* renamed from: h, reason: collision with root package name */
    public final Set f40583h = Collections.synchronizedSet(new HashSet());

    /* renamed from: j, reason: collision with root package name */
    public long f40585j = bg.f30873s;

    /* renamed from: k, reason: collision with root package name */
    public final CopyOnWriteArrayList f40586k = new CopyOnWriteArrayList();

    /* renamed from: l, reason: collision with root package name */
    public Long f40587l = null;

    /* renamed from: f, reason: collision with root package name */
    public final Object f40581f = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final ConcurrentLinkedQueue f40578c = new ConcurrentLinkedQueue();

    /* renamed from: d, reason: collision with root package name */
    public final ConcurrentHashMap f40579d = new ConcurrentHashMap();

    /* renamed from: e, reason: collision with root package name */
    public final ConcurrentHashMap f40580e = new ConcurrentHashMap();

    /* renamed from: i, reason: collision with root package name */
    public boolean f40584i = false;

    public m() {
        this.f40577b = 0L;
        this.f40577b = Math.max(0L, com.smartdigimkt.c3.g.f39679g);
        com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
        if (aVarA != null && !aVarA.f39371f) {
            this.f40577b = aVarA.f39351M;
        }
        com.smartdigimkt.b4.e.a().a(new g(this), 0L, 17);
    }

    public static m b() {
        if (f40575n == null) {
            synchronized (m.class) {
                try {
                    if (f40575n == null) {
                        f40575n = new m();
                    }
                } finally {
                }
            }
        }
        return f40575n;
    }

    public final void a(String str, int i2, long j2, int i3, boolean z2) {
        this.f40577b = j2;
        this.f40584i = (i3 == 1 || SDKContext.getInstance().a(com.anythink.core.common.m.f.bH)) ? false : true;
        if (SDKContext.getInstance().a(com.anythink.core.common.m.f.bG) || TextUtils.isEmpty(str)) {
            return;
        }
        com.smartdigimkt.b4.e.a().a(new i(this, j2, str, z2, i2, i3), 0L, 2);
    }

    public final JSONArray[] c() {
        JSONArray[] jSONArrayArr = new JSONArray[2];
        try {
            JSONArray jSONArray = new JSONArray();
            JSONArray jSONArray2 = new JSONArray();
            Iterator it = this.f40580e.keySet().iterator();
            while (it.hasNext()) {
                b bVar = (b) this.f40580e.get((String) it.next());
                if (bVar != null && bVar.f40549c) {
                    jSONArray.put(Long.parseLong(bVar.f40552f));
                    jSONArray2.put(Math.floor(((System.currentTimeMillis() - bVar.f40548b) / 1000.0d) / 3600.0d));
                }
            }
            jSONArrayArr[0] = jSONArray;
            jSONArrayArr[1] = jSONArray2;
        } catch (Throwable unused) {
        }
        return jSONArrayArr;
    }

    public static void a(m mVar, ArrayList arrayList, boolean z2) {
        synchronized (mVar.f40581f) {
            try {
                if (arrayList.size() > 0) {
                    if (z2 && arrayList.size() > 0) {
                        for (int i2 = 0; i2 < arrayList.size(); i2++) {
                            mVar.f40586k.add(((d) arrayList.get(i2)).f40554a);
                        }
                    }
                    mVar.f40578c.addAll(arrayList);
                    mVar.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a() {
        synchronized (this.f40581f) {
            try {
                if (this.f40577b >= 0 && this.f40578c.size() > 0 && this.f40582g == null) {
                    d dVar = (d) this.f40578c.poll();
                    if (dVar != null) {
                        k kVar = new k(this, dVar);
                        this.f40582g = kVar;
                        com.smartdigimkt.b4.e.a().a(kVar, 0L, 17);
                    } else {
                        a();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void a(m mVar) {
        synchronized (mVar.f40581f) {
            try {
                if (mVar.f40582g != null) {
                    mVar.f40582g = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(com.smartdigimkt.x.f fVar) {
        synchronized (this.f40581f) {
            this.f40588m = fVar;
        }
    }
}
