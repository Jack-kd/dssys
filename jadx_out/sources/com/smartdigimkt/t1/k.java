package com.smartdigimkt.t1;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public final class k implements com.smartdigimkt.l4.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f44224a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m f44225b;

    public k(m mVar, Context context) {
        this.f44225b = mVar;
        this.f44224a = context;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2) {
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, Object obj) {
        String string = obj != null ? obj.toString() : "";
        String str = this.f44225b.f44230a;
        string.getClass();
        if (!TextUtils.isEmpty(string)) {
            m mVar = this.f44225b;
            Context context = this.f44224a;
            String str2 = mVar.f44235f;
            synchronized (mVar) {
                mVar.f44243n = str2;
                y.a(context, "sdm_adx_rp_sdk", "omsdk_webview_injection_content_url", str2);
            }
            this.f44225b.f44236g = string;
            m mVar2 = this.f44225b;
            if (mVar2.f44237h != null) {
                com.smartdigimkt.b4.e.a().c(new l(mVar2, "omsdk_webview_injection_content.txt", string));
            }
        }
        this.f44225b.f44239j = false;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, String str, AdError adError) {
        m mVar = this.f44225b;
        mVar.f44244o = mVar.f44235f;
        m mVar2 = this.f44225b;
        mVar2.f44239j = false;
        String str2 = mVar2.f44235f;
        String errorInfo = adError.getErrorInfo();
        com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c("", "");
        cVar.f42817a = "1004765";
        cVar.f42828l = String.valueOf(2);
        cVar.f42829m = str2;
        cVar.f42830n = errorInfo;
        com.smartdigimkt.y3.h.a(cVar);
    }
}
