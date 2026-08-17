package com.smartdigimkt.h3;

import android.content.Context;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public final class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ List f40560a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m f40561b;

    public h(m mVar, ArrayList arrayList) {
        this.f40561b = mVar;
        this.f40560a = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context contextD;
        List list = this.f40560a;
        if (list == null || list.size() <= 0 || (contextD = SDKContext.getInstance().d()) == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < this.f40560a.size(); i2++) {
            a aVar = (a) this.f40560a.get(i2);
            if (aVar != null) {
                arrayList.add(new e(contextD, aVar.f40545a, aVar.f40546b, y.a(contextD, "sdm_adx_rp_sdk", "det_time_" + aVar.f40546b)));
            }
        }
        if (arrayList.size() > 0) {
            m.a(this.f40561b, arrayList, false);
        }
    }
}
