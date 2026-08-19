package com.smartdigimkt.n4;

import android.content.Context;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.sdk.core.net.entity.HttpReqEntity;
import com.smartdigimkt.sdk.core.net.entity.HttpRespEntity;

/* loaded from: classes5.dex */
public final class c extends d {

    /* renamed from: d, reason: collision with root package name */
    public volatile h f42166d;

    public c(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.n4.d
    public final String a(HttpReqEntity httpReqEntity) {
        if (this.f42166d == null) {
            return httpReqEntity.getUrlType();
        }
        this.f42166d.getClass();
        return h.a(httpReqEntity);
    }

    @Override // com.smartdigimkt.sdk.core.net.interceptor.IHttpLoaderInterceptor
    public final void handleRespon(HttpRespEntity httpRespEntity, HttpReqEntity httpReqEntity) {
        Context context = this.f42167a;
        if (context == null || httpReqEntity == null || !k.g(context) || !"get_area".equals(httpReqEntity.getUrlType()) || this.f42166d == null) {
            return;
        }
        this.f42166d.a(httpRespEntity, httpReqEntity);
    }

    @Override // com.smartdigimkt.n4.d, com.smartdigimkt.sdk.core.net.interceptor.IHttpLoaderInterceptor
    public final HttpRespEntity interceptRequest(HttpReqEntity httpReqEntity) {
        Context context = this.f42167a;
        if (context == null || httpReqEntity == null || !k.g(context) || !"get_area".equals(httpReqEntity.getUrlType())) {
            return null;
        }
        if (this.f42166d == null) {
            synchronized (this.f42169c) {
                try {
                    if (this.f42166d == null) {
                        this.f42166d = new h(this.f42167a, this.f42168b, new g());
                    }
                } finally {
                }
            }
        }
        return this.f42166d.b(super.interceptRequest(httpReqEntity), httpReqEntity);
    }
}
