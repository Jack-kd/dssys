package com.smartdigimkt.n4;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.sdk.core.net.entity.HttpReqEntity;
import com.smartdigimkt.sdk.core.net.entity.HttpRespEntity;
import com.smartdigimkt.sdk.core.net.interceptor.IHttpLoaderInterceptor;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class f implements IHttpLoaderInterceptor {

    /* renamed from: a, reason: collision with root package name */
    public final Context f42171a;

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f42172b;

    /* renamed from: c, reason: collision with root package name */
    public final a f42173c;

    public f(Context context) {
        context = context instanceof Activity ? context.getApplicationContext() : context;
        this.f42171a = context;
        this.f42172b = new ConcurrentHashMap();
        this.f42173c = new a(context);
    }

    public final IHttpLoaderInterceptor a(Context context, HttpReqEntity httpReqEntity) {
        IHttpLoaderInterceptor bVar = null;
        if (httpReqEntity == null || this.f42172b == null) {
            return null;
        }
        String urlType = httpReqEntity.getUrlType();
        IHttpLoaderInterceptor iHttpLoaderInterceptor = (IHttpLoaderInterceptor) this.f42172b.get(urlType);
        if (iHttpLoaderInterceptor != null) {
            return iHttpLoaderInterceptor;
        }
        synchronized (this) {
            try {
                if (!TextUtils.isEmpty(urlType)) {
                    urlType.getClass();
                    switch (urlType) {
                        case "app_strategy":
                            bVar = new b(context);
                            break;
                        case "eu_traffic":
                            bVar = new e(context);
                            break;
                        case "get_area":
                            bVar = new c(context);
                            break;
                    }
                    if (bVar != null) {
                        this.f42172b.put(urlType, bVar);
                    }
                }
            } finally {
            }
        }
        return bVar;
    }

    @Override // com.smartdigimkt.sdk.core.net.interceptor.IHttpLoaderInterceptor
    public final void handleRespon(HttpRespEntity httpRespEntity, HttpReqEntity httpReqEntity) {
        if (this.f42171a == null || httpRespEntity == null || httpReqEntity == null) {
            return;
        }
        try {
            a aVar = this.f42173c;
            if (aVar != null) {
                aVar.handleRespon(httpRespEntity, httpReqEntity);
            }
            IHttpLoaderInterceptor iHttpLoaderInterceptorA = a(this.f42171a, httpReqEntity);
            if (iHttpLoaderInterceptorA != null) {
                iHttpLoaderInterceptorA.handleRespon(httpRespEntity, httpReqEntity);
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.smartdigimkt.sdk.core.net.interceptor.IHttpLoaderInterceptor
    public final HttpRespEntity interceptRequest(HttpReqEntity httpReqEntity) {
        IHttpLoaderInterceptor iHttpLoaderInterceptorA;
        if (this.f42171a != null && httpReqEntity != null) {
            try {
                a aVar = this.f42173c;
                httpRespEntityInterceptRequest = aVar != null ? aVar.interceptRequest(httpReqEntity) : null;
                return ((httpRespEntityInterceptRequest == null || !httpRespEntityInterceptRequest.isIntercept()) && (iHttpLoaderInterceptorA = a(this.f42171a, httpReqEntity)) != null) ? iHttpLoaderInterceptorA.interceptRequest(httpReqEntity) : httpRespEntityInterceptRequest;
            } catch (Throwable th) {
                th.getMessage();
            }
        }
        return httpRespEntityInterceptRequest;
    }
}
