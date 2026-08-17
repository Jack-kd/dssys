package com.smartdigimkt.n4;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.core.net.entity.HttpReqEntity;
import com.smartdigimkt.sdk.core.net.entity.HttpRespEntity;
import com.smartdigimkt.sdk.core.net.interceptor.IHttpLoaderInterceptor;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public abstract class d implements IHttpLoaderInterceptor {

    /* renamed from: a, reason: collision with root package name */
    public final Context f42167a;

    /* renamed from: c, reason: collision with root package name */
    public final Object f42169c = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f42168b = new ConcurrentHashMap(1);

    public d(Context context) {
        this.f42167a = context;
    }

    public String a(HttpReqEntity httpReqEntity) {
        return httpReqEntity != null ? httpReqEntity.getInterceptKey() : "";
    }

    @Override // com.smartdigimkt.sdk.core.net.interceptor.IHttpLoaderInterceptor
    public HttpRespEntity interceptRequest(HttpReqEntity httpReqEntity) {
        String strA = a(httpReqEntity);
        if (this.f42168b == null || TextUtils.isEmpty(strA)) {
            return null;
        }
        HttpRespEntity httpRespEntityCreate = HttpRespEntity.create();
        synchronized (this.f42169c) {
            try {
                Long lValueOf = (Long) this.f42168b.get(strA);
                if (lValueOf == null) {
                    lValueOf = Long.valueOf(y.a(this.f42167a, "sdm_adx_rp_app_pl_cl_retry", strA));
                    this.f42168b.put(strA, lValueOf);
                }
                if (lValueOf.longValue() == 0) {
                    httpRespEntityCreate.setIntercept(false);
                } else if (lValueOf.longValue() == -1) {
                    httpRespEntityCreate.setIntercept(true);
                    httpRespEntityCreate.setInterceptStatusCode(700);
                } else {
                    boolean z2 = System.currentTimeMillis() - lValueOf.longValue() < 0;
                    if (z2) {
                        httpRespEntityCreate.setInterceptStatusCode(700);
                    }
                    httpRespEntityCreate.setIntercept(z2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return httpRespEntityCreate;
    }
}
