package com.smartdigimkt.n4;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.sdk.core.net.entity.HttpReqEntity;
import com.smartdigimkt.sdk.core.net.entity.HttpRespEntity;

/* loaded from: classes5.dex */
public final class b extends d {

    /* renamed from: d, reason: collision with root package name */
    public volatile boolean f42163d;

    /* renamed from: e, reason: collision with root package name */
    public volatile long f42164e;

    /* renamed from: f, reason: collision with root package name */
    public volatile long f42165f;

    public b(Context context) {
        super(context);
        this.f42163d = false;
        this.f42164e = 0L;
        this.f42165f = 0L;
    }

    public final void a(HttpRespEntity httpRespEntity, HttpReqEntity httpReqEntity) {
        httpRespEntity.getUrlKey();
        httpRespEntity.getReqNextTime();
        httpRespEntity.getHttpCode();
        try {
            com.smartdigimkt.v4.a aVarA = com.smartdigimkt.v4.c.a().a(this.f42167a, "sdm_adx_rp_app_pl_cl_retry");
            String interceptKey = httpReqEntity.getInterceptKey();
            String strA = a(httpReqEntity);
            String str = interceptKey + "_req_count_limit";
            this.f42168b.put(strA, 0L);
            aVarA.a(0L, strA);
            aVarA.a(24L, str);
            aVarA.a(0L, interceptKey + "_req_count");
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public final boolean b(HttpReqEntity httpReqEntity) {
        if (this.f42167a == null || httpReqEntity == null || !"app_strategy".equals(httpReqEntity.getUrlType())) {
            return false;
        }
        String interceptKey = httpReqEntity.getInterceptKey();
        com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
        if (this.f42167a == null || TextUtils.isEmpty(interceptKey)) {
            return false;
        }
        return (aVarA == null || aVarA.f39374g0 != 1) && k.g(this.f42167a);
    }

    @Override // com.smartdigimkt.sdk.core.net.interceptor.IHttpLoaderInterceptor
    public final void handleRespon(HttpRespEntity httpRespEntity, HttpReqEntity httpReqEntity) {
        if (!b(httpReqEntity) || httpRespEntity == null) {
            return;
        }
        synchronized (this.f42169c) {
            a(httpRespEntity, httpReqEntity);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00ae A[Catch: all -> 0x006d, TryCatch #2 {all -> 0x006d, blocks: (B:11:0x0034, B:13:0x005a, B:15:0x0062, B:18:0x0070, B:20:0x0078, B:22:0x0083, B:26:0x00a6, B:28:0x00ae, B:30:0x00b6, B:31:0x00bd, B:35:0x00c7, B:42:0x0132, B:36:0x00d6, B:23:0x008d, B:24:0x0098, B:37:0x00e1, B:39:0x00e5, B:41:0x0107), top: B:54:0x0034, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d6 A[Catch: all -> 0x006d, TryCatch #2 {all -> 0x006d, blocks: (B:11:0x0034, B:13:0x005a, B:15:0x0062, B:18:0x0070, B:20:0x0078, B:22:0x0083, B:26:0x00a6, B:28:0x00ae, B:30:0x00b6, B:31:0x00bd, B:35:0x00c7, B:42:0x0132, B:36:0x00d6, B:23:0x008d, B:24:0x0098, B:37:0x00e1, B:39:0x00e5, B:41:0x0107), top: B:54:0x0034, outer: #0 }] */
    @Override // com.smartdigimkt.n4.d, com.smartdigimkt.sdk.core.net.interceptor.IHttpLoaderInterceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.smartdigimkt.sdk.core.net.entity.HttpRespEntity interceptRequest(com.smartdigimkt.sdk.core.net.entity.HttpReqEntity r21) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.n4.b.interceptRequest(com.smartdigimkt.sdk.core.net.entity.HttpReqEntity):com.smartdigimkt.sdk.core.net.entity.HttpRespEntity");
    }

    @Override // com.smartdigimkt.n4.d
    public final String a(HttpReqEntity httpReqEntity) {
        if (httpReqEntity == null) {
            return "";
        }
        return httpReqEntity.getInterceptKey() + "_req_next_time";
    }
}
