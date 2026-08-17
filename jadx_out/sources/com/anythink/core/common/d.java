package com.anythink.core.common;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.h.ac;
import com.anythink.core.common.h.by;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2427a = "d";

    /* renamed from: e, reason: collision with root package name */
    private static volatile d f2428e;

    /* renamed from: b, reason: collision with root package name */
    private Context f2429b;

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, ac> f2430c = new ConcurrentHashMap(8);

    /* renamed from: d, reason: collision with root package name */
    private Map<String, String> f2431d;

    private d() {
    }

    public static d a() {
        if (f2428e == null) {
            synchronized (d.class) {
                try {
                    if (f2428e == null) {
                        f2428e = new d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f2428e;
    }

    public final void b(String str, String str2, String str3) {
        by byVarB;
        ac acVar = this.f2430c.get(str);
        if (acVar == null || (byVarB = acVar.b()) == null || !TextUtils.equals(byVarB.G(), str3) || !TextUtils.equals(acVar.d(), str2)) {
            return;
        }
        acVar.f();
    }

    public final synchronized String b(String str) {
        Map<String, String> map = this.f2431d;
        if (map == null) {
            return null;
        }
        return map.remove(str);
    }

    public final void a(String str, ac acVar) {
        this.f2430c.put(str, acVar);
    }

    public final void a(String str, String str2, String str3) {
        by byVarB;
        ac acVar = this.f2430c.get(str);
        if (acVar == null || (byVarB = acVar.b()) == null || !TextUtils.equals(byVarB.G(), str3) || !TextUtils.equals(acVar.d(), str2)) {
            return;
        }
        acVar.e();
    }

    public final ac a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f2430c.remove(str);
    }

    public final synchronized void a(String str, String str2) {
        try {
            if (this.f2431d == null) {
                this.f2431d = new ConcurrentHashMap();
            }
            this.f2431d.put(str, str2);
        } catch (Throwable th) {
            throw th;
        }
    }
}
