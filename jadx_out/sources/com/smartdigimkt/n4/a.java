package com.smartdigimkt.n4;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.m.AbstractC1114b;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.core.net.entity.HttpReqEntity;
import com.smartdigimkt.sdk.core.net.entity.HttpRespEntity;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class a extends d {
    public a(Context context) {
        super(context);
    }

    public final boolean b(HttpReqEntity httpReqEntity) {
        if (this.f42167a != null && httpReqEntity != null) {
            String urlType = httpReqEntity.getUrlType();
            String interceptKey = httpReqEntity.getInterceptKey();
            if (("app_strategy".equals(urlType) || "placement_strategy".equals(urlType) || "get_plugin".equals(urlType)) && !TextUtils.isEmpty(interceptKey)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.smartdigimkt.sdk.core.net.interceptor.IHttpLoaderInterceptor
    public final void handleRespon(HttpRespEntity httpRespEntity, HttpReqEntity httpReqEntity) {
        if (!b(httpReqEntity) || httpRespEntity == null) {
            return;
        }
        int httpCode = httpRespEntity.getHttpCode();
        String urlKey = httpRespEntity.getUrlKey();
        long reqNextTime = httpRespEntity.getReqNextTime();
        if (httpCode != 699 || reqNextTime <= 0) {
            return;
        }
        synchronized (this.f42169c) {
            try {
                ConcurrentHashMap concurrentHashMap = this.f42168b;
                if (concurrentHashMap != null) {
                    concurrentHashMap.put(urlKey, Long.valueOf(reqNextTime));
                }
                y.a(this.f42167a, "sdm_adx_rp_app_pl_cl_retry", urlKey, reqNextTime);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.smartdigimkt.n4.d, com.smartdigimkt.sdk.core.net.interceptor.IHttpLoaderInterceptor
    public final HttpRespEntity interceptRequest(HttpReqEntity httpReqEntity) {
        if (!b(httpReqEntity)) {
            return null;
        }
        HttpRespEntity httpRespEntityInterceptRequest = super.interceptRequest(httpReqEntity);
        if (httpRespEntityInterceptRequest != null && httpRespEntityInterceptRequest.isIntercept()) {
            httpRespEntityInterceptRequest.setInterceptStatusCode(AbstractC1114b.f5586d);
        }
        return httpRespEntityInterceptRequest;
    }
}
