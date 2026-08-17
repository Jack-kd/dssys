package com.meishu.sdk.core.loader;

import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.loader.c;
import com.meishu.sdk.core.loader.concurrent.f;
import java.util.Map;

/* loaded from: classes4.dex */
public interface d<Loader extends c> extends IAdLoader {
    Loader getAdLoader();

    com.meishu.sdk.core.loader.cache.c getCacheAdListener();

    f getConCurrentListener();

    SdkAdInfo getSdkAdInfo();

    int getTag();

    void setCacheAdListener(com.meishu.sdk.core.loader.cache.c cVar);

    void setConCurrentLoadListener(f fVar);

    void setGroupIndex(int i2);

    void setLocalParams(Map<String, Object> map);
}
