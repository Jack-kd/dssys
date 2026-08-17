package com.smartdigimkt.sdk.api.business.express;

import android.content.Context;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.b;
import com.smartdigimkt.m3.c;

/* loaded from: classes5.dex */
public abstract class IExpressAdManager {
    public abstract IExpressComponent createExpressComponent(Context context, a aVar, c cVar, com.smartdigimkt.n1.a aVar2);

    public abstract void handleExpressAdResourceRequest(b bVar, a aVar, com.smartdigimkt.n1.b bVar2);

    public abstract void initExpressSDK(b bVar);

    public abstract boolean isLocalResourceReady(b bVar, a aVar);
}
