package com.anythink.core.common.m.c;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.v.ad;
import com.kuaishou.weapon.p0.bg;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    private static final String f5677a = "HttpReqLimitInterceptor";

    /* renamed from: b, reason: collision with root package name */
    private final Object f5678b = new Object();

    /* renamed from: c, reason: collision with root package name */
    private final Context f5679c;

    /* renamed from: d, reason: collision with root package name */
    private final Map<String, Long> f5680d;

    /* renamed from: e, reason: collision with root package name */
    private final a f5681e;

    /* renamed from: f, reason: collision with root package name */
    private long f5682f;

    public static class a {

        /* renamed from: b, reason: collision with root package name */
        public long f5684b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f5685c = true;

        /* renamed from: a, reason: collision with root package name */
        public int f5683a = 5;

        public a(long j2) {
            this.f5684b = j2;
        }
    }

    public h(Context context, Map<String, Long> map, a aVar) {
        this.f5679c = context;
        this.f5680d = map;
        this.f5681e = aVar;
    }

    public static String a(com.anythink.core.common.m.b.d dVar) {
        if (dVar == null) {
            return "";
        }
        return dVar.b() + "_req_next_timestamp";
    }

    private void b(com.anythink.core.common.m.b.d dVar) {
        String strA = a(dVar);
        String strD = d(dVar);
        this.f5680d.put(strA, 0L);
        com.anythink.core.common.s.a aVarC = ad.c(this.f5679c, "anythink_app_pl_cl_retry");
        aVarC.a(strA, (String) 0L);
        aVarC.a(strD, (String) 0L);
    }

    private static String c(com.anythink.core.common.m.b.d dVar) {
        if (dVar == null) {
            return "";
        }
        return dVar.b() + "_req_frist_timestamp";
    }

    private static String d(com.anythink.core.common.m.b.d dVar) {
        if (dVar == null) {
            return "";
        }
        return dVar.b() + "_req_count";
    }

    private static String e(com.anythink.core.common.m.b.d dVar) {
        if (dVar == null) {
            return "";
        }
        return dVar.b() + "_data";
    }

    private static String f(com.anythink.core.common.m.b.d dVar) {
        if (dVar == null) {
            return "";
        }
        return dVar.b() + "_data_timestamp";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.anythink.core.common.m.b.f] */
    /* JADX WARN: Type inference failed for: r8v4, types: [org.json.JSONObject] */
    private void a(com.anythink.core.common.m.b.f fVar, com.anythink.core.common.m.b.d dVar, com.anythink.core.common.s.a aVar) {
        a aVar2 = this.f5681e;
        if (aVar2 == null || aVar2.f5685c) {
            long jLongValue = ((Long) aVar.b(f(dVar), 0L)).longValue();
            String jSONObject = (String) aVar.b(e(dVar), "");
            boolean z2 = jLongValue > 0 && System.currentTimeMillis() - jLongValue <= a();
            if (TextUtils.isEmpty(jSONObject) || !z2) {
                return;
            }
            try {
                jSONObject = new JSONObject(jSONObject);
            } catch (Throwable unused) {
            }
            try {
                fVar.a(jSONObject);
                fVar.b(200);
                fVar.a(true);
            } catch (Throwable unused2) {
            }
        }
    }

    private int b() {
        a aVar = this.f5681e;
        if (aVar != null) {
            return aVar.f5683a;
        }
        return 5;
    }

    private long a(com.anythink.core.common.s.a aVar, String str) {
        long j2 = this.f5682f;
        return j2 <= 0 ? ((Long) aVar.b(str, 0L)).longValue() : j2;
    }

    private long a() {
        a aVar = this.f5681e;
        return aVar != null ? aVar.f5684b : bg.f30873s;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e4 A[Catch: all -> 0x004c, TryCatch #1 {all -> 0x004c, blocks: (B:12:0x0037, B:14:0x0044, B:32:0x0099, B:34:0x009f, B:36:0x00a5, B:37:0x00af, B:39:0x00b5, B:41:0x00bf, B:45:0x00e0, B:47:0x00e4, B:49:0x00e8, B:51:0x00ee, B:53:0x00f4, B:54:0x00f6, B:56:0x0101, B:57:0x0108, B:58:0x0110, B:43:0x00cb, B:44:0x00d6, B:59:0x011a, B:20:0x004f, B:22:0x006f, B:26:0x0080), top: B:69:0x0037, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ee A[Catch: all -> 0x004c, TryCatch #1 {all -> 0x004c, blocks: (B:12:0x0037, B:14:0x0044, B:32:0x0099, B:34:0x009f, B:36:0x00a5, B:37:0x00af, B:39:0x00b5, B:41:0x00bf, B:45:0x00e0, B:47:0x00e4, B:49:0x00e8, B:51:0x00ee, B:53:0x00f4, B:54:0x00f6, B:56:0x0101, B:57:0x0108, B:58:0x0110, B:43:0x00cb, B:44:0x00d6, B:59:0x011a, B:20:0x004f, B:22:0x006f, B:26:0x0080), top: B:69:0x0037, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0110 A[Catch: all -> 0x004c, TryCatch #1 {all -> 0x004c, blocks: (B:12:0x0037, B:14:0x0044, B:32:0x0099, B:34:0x009f, B:36:0x00a5, B:37:0x00af, B:39:0x00b5, B:41:0x00bf, B:45:0x00e0, B:47:0x00e4, B:49:0x00e8, B:51:0x00ee, B:53:0x00f4, B:54:0x00f6, B:56:0x0101, B:57:0x0108, B:58:0x0110, B:43:0x00cb, B:44:0x00d6, B:59:0x011a, B:20:0x004f, B:22:0x006f, B:26:0x0080), top: B:69:0x0037, outer: #3 }] */
    /* JADX WARN: Type inference failed for: r22v0, types: [com.anythink.core.common.m.b.f] */
    /* JADX WARN: Type inference failed for: r4v3, types: [org.json.JSONObject] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.anythink.core.common.m.b.f a(com.anythink.core.common.m.b.d r21, com.anythink.core.common.m.b.f r22) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.m.c.h.a(com.anythink.core.common.m.b.d, com.anythink.core.common.m.b.f):com.anythink.core.common.m.b.f");
    }

    public final void a(com.anythink.core.common.m.b.f fVar, com.anythink.core.common.m.b.d dVar) {
        Object objG = fVar.g();
        try {
            synchronized (this.f5678b) {
                try {
                    a aVar = this.f5681e;
                    if (aVar != null && aVar.f5685c && objG != null) {
                        ad.b(this.f5679c, "anythink_app_pl_cl_retry", e(dVar), objG.toString());
                        ad.a(this.f5679c, "anythink_app_pl_cl_retry", f(dVar), System.currentTimeMillis());
                    }
                    String strA = a(dVar);
                    String strD = d(dVar);
                    this.f5680d.put(strA, 0L);
                    com.anythink.core.common.s.a aVarC = ad.c(this.f5679c, "anythink_app_pl_cl_retry");
                    aVarC.a(strA, (String) 0L);
                    aVarC.a(strD, (String) 0L);
                } finally {
                }
            }
        } catch (Throwable unused) {
        }
    }
}
