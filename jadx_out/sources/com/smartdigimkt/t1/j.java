package com.smartdigimkt.t1;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public final class j implements com.smartdigimkt.l4.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f44222a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m f44223b;

    public j(m mVar, Context context) {
        this.f44223b = mVar;
        this.f44222a = context;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2) {
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, Object obj) {
        String string = obj != null ? obj.toString() : "";
        String str = this.f44223b.f44230a;
        string.getClass();
        if (!TextUtils.isEmpty(string)) {
            m mVar = this.f44223b;
            Context context = this.f44222a;
            String str2 = mVar.f44233d;
            synchronized (mVar) {
                mVar.f44241l = str2;
                y.a(context, "sdm_adx_rp_sdk", "omsdk_sdk_js_url", str2);
            }
            this.f44223b.f44234e = string;
            m mVar2 = this.f44223b;
            if (mVar2.f44237h != null) {
                com.smartdigimkt.b4.e.a().c(new l(mVar2, "omsdk_sdk_js.txt", string));
            }
        }
        this.f44223b.f44238i = false;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, String str, AdError adError) {
        m mVar = this.f44223b;
        mVar.f44242m = mVar.f44233d;
        m mVar2 = this.f44223b;
        mVar2.f44238i = false;
        String str2 = mVar2.f44233d;
        String errorInfo = adError.getErrorInfo();
        com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c("", "");
        cVar.f42817a = "1004765";
        cVar.f42828l = String.valueOf(1);
        cVar.f42829m = str2;
        cVar.f42830n = errorInfo;
        com.smartdigimkt.y3.h.a(cVar);
    }
}
