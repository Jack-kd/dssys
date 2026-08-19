package com.smartdigimkt.n4;

import android.content.Context;
import android.text.TextUtils;
import com.kuaishou.weapon.p0.bg;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.core.net.entity.HttpReqEntity;
import com.smartdigimkt.sdk.core.net.entity.HttpRespEntity;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public final Object f42174a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final Context f42175b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f42176c;

    /* renamed from: d, reason: collision with root package name */
    public final g f42177d;

    /* renamed from: e, reason: collision with root package name */
    public long f42178e;

    public h(Context context, ConcurrentHashMap concurrentHashMap, g gVar) {
        this.f42175b = context;
        this.f42176c = concurrentHashMap;
        this.f42177d = gVar;
    }

    public final void a(HttpRespEntity httpRespEntity, HttpReqEntity httpReqEntity) {
        String str;
        String str2;
        String str3;
        Object interceptResult = httpRespEntity.getInterceptResult();
        try {
            synchronized (this.f42174a) {
                try {
                    if (this.f42177d != null && interceptResult != null) {
                        Context context = this.f42175b;
                        if (httpReqEntity != null) {
                            str2 = httpReqEntity.getUrlType() + "_data";
                        } else {
                            str2 = "";
                        }
                        y.a(context, "sdm_adx_rp_app_pl_cl_retry", str2, interceptResult.toString());
                        Context context2 = this.f42175b;
                        if (httpReqEntity != null) {
                            str3 = httpReqEntity.getUrlType() + "_data_timestamp";
                        } else {
                            str3 = "";
                        }
                        y.a(context2, "sdm_adx_rp_app_pl_cl_retry", str3, System.currentTimeMillis());
                    }
                    String strA = a(httpReqEntity);
                    if (httpReqEntity != null) {
                        str = httpReqEntity.getUrlType() + "_req_count";
                    } else {
                        str = "";
                    }
                    this.f42176c.put(strA, 0L);
                    com.smartdigimkt.v4.a aVarA = com.smartdigimkt.v4.c.a().a(this.f42175b, "sdm_adx_rp_app_pl_cl_retry");
                    aVarA.a(0L, strA);
                    aVarA.a(0L, str);
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00b1 A[Catch: all -> 0x0078, TryCatch #0 {all -> 0x0078, blocks: (B:17:0x0052, B:19:0x0067, B:21:0x006d, B:24:0x007a, B:26:0x0083, B:28:0x0089, B:32:0x00a9, B:34:0x00b1, B:36:0x00b7, B:37:0x00b9, B:39:0x00c0, B:40:0x00c7, B:41:0x00cf, B:30:0x0094, B:31:0x009f, B:42:0x00d9), top: B:48:0x0052, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00cf A[Catch: all -> 0x0078, TryCatch #0 {all -> 0x0078, blocks: (B:17:0x0052, B:19:0x0067, B:21:0x006d, B:24:0x007a, B:26:0x0083, B:28:0x0089, B:32:0x00a9, B:34:0x00b1, B:36:0x00b7, B:37:0x00b9, B:39:0x00c0, B:40:0x00c7, B:41:0x00cf, B:30:0x0094, B:31:0x009f, B:42:0x00d9), top: B:48:0x0052, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.smartdigimkt.sdk.core.net.entity.HttpRespEntity b(com.smartdigimkt.sdk.core.net.entity.HttpRespEntity r20, com.smartdigimkt.sdk.core.net.entity.HttpReqEntity r21) {
        /*
            r19 = this;
            r1 = r19
            r2 = r20
            r0 = r21
            r3 = 0
            java.lang.Long r5 = java.lang.Long.valueOf(r3)
            if (r2 != 0) goto L10
            r0 = 0
            return r0
        L10:
            java.lang.String r6 = a(r0)     // Catch: java.lang.Throwable -> L2c
            if (r0 == 0) goto L2f
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2c
            r7.<init>()     // Catch: java.lang.Throwable -> L2c
            java.lang.String r8 = r0.getUrlType()     // Catch: java.lang.Throwable -> L2c
            r7.append(r8)     // Catch: java.lang.Throwable -> L2c
            java.lang.String r8 = "_req_frist_timestamp"
            r7.append(r8)     // Catch: java.lang.Throwable -> L2c
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L2c
            goto L31
        L2c:
            r0 = move-exception
            goto Ldd
        L2f:
            java.lang.String r7 = ""
        L31:
            if (r0 == 0) goto L49
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2c
            r8.<init>()     // Catch: java.lang.Throwable -> L2c
            java.lang.String r9 = r0.getUrlType()     // Catch: java.lang.Throwable -> L2c
            r8.append(r9)     // Catch: java.lang.Throwable -> L2c
            java.lang.String r9 = "_req_count"
            r8.append(r9)     // Catch: java.lang.Throwable -> L2c
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L2c
            goto L4b
        L49:
            java.lang.String r8 = ""
        L4b:
            long r9 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L2c
            java.lang.Object r11 = r1.f42174a     // Catch: java.lang.Throwable -> L2c
            monitor-enter(r11)     // Catch: java.lang.Throwable -> L2c
            android.content.Context r12 = r1.f42175b     // Catch: java.lang.Throwable -> L78
            java.lang.String r13 = "sdm_adx_rp_app_pl_cl_retry"
            com.smartdigimkt.v4.c r14 = com.smartdigimkt.v4.c.a()     // Catch: java.lang.Throwable -> L78
            com.smartdigimkt.v4.a r12 = r14.a(r12, r13)     // Catch: java.lang.Throwable -> L78
            r1.a(r2, r0, r12)     // Catch: java.lang.Throwable -> L78
            boolean r0 = r2.isIntercept()     // Catch: java.lang.Throwable -> L78
            if (r0 != 0) goto Ld9
            long r13 = r1.f42178e     // Catch: java.lang.Throwable -> L78
            int r0 = (r13 > r3 ? 1 : (r13 == r3 ? 0 : -1))
            if (r0 > 0) goto L7a
            java.lang.Object r0 = r12.b(r5, r7)     // Catch: java.lang.Throwable -> L78
            java.lang.Long r0 = (java.lang.Long) r0     // Catch: java.lang.Throwable -> L78
            long r13 = r0.longValue()     // Catch: java.lang.Throwable -> L78
            goto L7a
        L78:
            r0 = move-exception
            goto Ldb
        L7a:
            r1.f42178e = r13     // Catch: java.lang.Throwable -> L78
            int r0 = (r13 > r3 ? 1 : (r13 == r3 ? 0 : -1))
            r15 = 3600000(0x36ee80, double:1.7786363E-317)
            if (r0 <= 0) goto L9f
            long r13 = r9 - r13
            int r0 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r0 < 0) goto L94
            r1.f42178e = r9     // Catch: java.lang.Throwable -> L78
            java.lang.Long r0 = java.lang.Long.valueOf(r9)     // Catch: java.lang.Throwable -> L78
            r12.a(r0, r7)     // Catch: java.lang.Throwable -> L78
        L92:
            r13 = r3
            goto La9
        L94:
            java.lang.Object r0 = r12.b(r5, r8)     // Catch: java.lang.Throwable -> L78
            java.lang.Long r0 = (java.lang.Long) r0     // Catch: java.lang.Throwable -> L78
            long r13 = r0.longValue()     // Catch: java.lang.Throwable -> L78
            goto La9
        L9f:
            r1.f42178e = r9     // Catch: java.lang.Throwable -> L78
            java.lang.Long r0 = java.lang.Long.valueOf(r9)     // Catch: java.lang.Throwable -> L78
            r12.a(r0, r7)     // Catch: java.lang.Throwable -> L78
            goto L92
        La9:
            r0 = 4
            r17 = r3
            long r3 = (long) r0     // Catch: java.lang.Throwable -> L78
            int r0 = (r13 > r3 ? 1 : (r13 == r3 ? 0 : -1))
            if (r0 != 0) goto Lcf
            long r3 = r1.f42178e     // Catch: java.lang.Throwable -> L78
            int r0 = (r3 > r17 ? 1 : (r3 == r17 ? 0 : -1))
            if (r0 != 0) goto Lb9
            r1.f42178e = r9     // Catch: java.lang.Throwable -> L78
        Lb9:
            long r3 = r1.f42178e     // Catch: java.lang.Throwable -> L78
            long r3 = r3 + r15
            java.util.Map r0 = r1.f42176c     // Catch: java.lang.Throwable -> L78
            if (r0 == 0) goto Lc7
            java.lang.Long r5 = java.lang.Long.valueOf(r3)     // Catch: java.lang.Throwable -> L78
            r0.put(r6, r5)     // Catch: java.lang.Throwable -> L78
        Lc7:
            java.lang.Long r0 = java.lang.Long.valueOf(r3)     // Catch: java.lang.Throwable -> L78
            r12.a(r0, r6)     // Catch: java.lang.Throwable -> L78
            goto Ld9
        Lcf:
            r3 = 1
            long r13 = r13 + r3
            java.lang.Long r0 = java.lang.Long.valueOf(r13)     // Catch: java.lang.Throwable -> L78
            r12.a(r0, r8)     // Catch: java.lang.Throwable -> L78
        Ld9:
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L78
            return r2
        Ldb:
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L78
            throw r0     // Catch: java.lang.Throwable -> L2c
        Ldd:
            r0.getMessage()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.n4.h.b(com.smartdigimkt.sdk.core.net.entity.HttpRespEntity, com.smartdigimkt.sdk.core.net.entity.HttpReqEntity):com.smartdigimkt.sdk.core.net.entity.HttpRespEntity");
    }

    public static String a(HttpReqEntity httpReqEntity) {
        if (httpReqEntity == null) {
            return "";
        }
        return httpReqEntity.getUrlType() + "_req_next_timestamp";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.smartdigimkt.sdk.core.net.entity.HttpRespEntity] */
    /* JADX WARN: Type inference failed for: r9v4, types: [org.json.JSONObject] */
    public final void a(HttpRespEntity httpRespEntity, HttpReqEntity httpReqEntity, com.smartdigimkt.v4.a aVar) {
        String str;
        String str2;
        if (httpReqEntity != null) {
            str = httpReqEntity.getUrlType() + "_data_timestamp";
        } else {
            str = "";
        }
        long jLongValue = ((Long) aVar.b(0L, str)).longValue();
        if (httpReqEntity != null) {
            str2 = httpReqEntity.getUrlType() + "_data";
        } else {
            str2 = "";
        }
        String jSONObject = (String) aVar.b("", str2);
        boolean z2 = jLongValue > 0 && System.currentTimeMillis() - jLongValue <= bg.f30873s;
        if (TextUtils.isEmpty(jSONObject) || !z2) {
            return;
        }
        try {
            jSONObject = new JSONObject(jSONObject);
        } catch (Throwable unused) {
        }
        try {
            httpRespEntity.setInterceptResult(jSONObject);
            httpRespEntity.setInterceptStatusCode(200);
            httpRespEntity.setIntercept(true);
        } catch (Throwable unused2) {
        }
    }
}
