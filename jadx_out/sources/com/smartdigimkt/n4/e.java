package com.smartdigimkt.n4;

import android.content.Context;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.sdk.core.net.entity.HttpReqEntity;
import com.smartdigimkt.sdk.core.net.entity.HttpRespEntity;

/* loaded from: classes5.dex */
public final class e extends d {

    /* renamed from: d, reason: collision with root package name */
    public volatile h f42170d;

    public e(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.n4.d
    public final String a(HttpReqEntity httpReqEntity) {
        if (this.f42170d == null) {
            return httpReqEntity.getUrlType();
        }
        this.f42170d.getClass();
        return h.a(httpReqEntity);
    }

    @Override // com.smartdigimkt.sdk.core.net.interceptor.IHttpLoaderInterceptor
    public final void handleRespon(HttpRespEntity httpRespEntity, HttpReqEntity httpReqEntity) {
        Context context = this.f42167a;
        if (context == null || httpReqEntity == null || !k.g(context) || !"eu_traffic".equals(httpReqEntity.getUrlType()) || this.f42170d == null) {
            return;
        }
        this.f42170d.a(httpRespEntity, httpReqEntity);
    }

    @Override // com.smartdigimkt.n4.d, com.smartdigimkt.sdk.core.net.interceptor.IHttpLoaderInterceptor
    public final HttpRespEntity interceptRequest(HttpReqEntity httpReqEntity) {
        Context context = this.f42167a;
        if (context == null || httpReqEntity == null || !k.g(context) || !"eu_traffic".equals(httpReqEntity.getUrlType())) {
            return null;
        }
        if (this.f42170d == null) {
            synchronized (this.f42169c) {
                try {
                    if (this.f42170d == null) {
                        this.f42170d = new h(this.f42167a, this.f42168b, new g());
                    }
                } finally {
                }
            }
        }
        return this.f42170d.b(super.interceptRequest(httpReqEntity), httpReqEntity);
    }
}
