package com.smartdigimkt.sdk.core.net.interceptor;

import com.smartdigimkt.sdk.core.net.entity.HttpReqEntity;
import com.smartdigimkt.sdk.core.net.entity.HttpRespEntity;

/* loaded from: classes5.dex */
public interface IHttpLoaderInterceptor {
    void handleRespon(HttpRespEntity httpRespEntity, HttpReqEntity httpReqEntity);

    HttpRespEntity interceptRequest(HttpReqEntity httpReqEntity);
}
