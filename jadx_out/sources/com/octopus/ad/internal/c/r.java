package com.octopus.ad.internal.c;

import com.octopus.ad.R;
import com.octopus.ad.a.g;

/* loaded from: classes4.dex */
public class r {

    /* renamed from: d, reason: collision with root package name */
    private static r f34621d;

    /* renamed from: a, reason: collision with root package name */
    public g.d f34622a;

    /* renamed from: b, reason: collision with root package name */
    public g.c f34623b = g.c.ISP_OTHER;

    /* renamed from: c, reason: collision with root package name */
    public String f34624c;

    private r() {
    }

    public static r a() {
        r rVar;
        synchronized (r.class) {
            try {
                if (f34621d == null) {
                    f34621d = new r();
                    f.a(f.f34565a, f.a(R.string.init));
                }
                rVar = f34621d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return rVar;
    }
}
