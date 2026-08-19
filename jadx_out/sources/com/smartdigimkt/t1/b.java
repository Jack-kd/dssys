package com.smartdigimkt.t1;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public final class b implements com.smartdigimkt.l4.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f44193a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f44194b;

    public b(d dVar, Context context) {
        this.f44194b = dVar;
        this.f44193a = context;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2) {
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, Object obj) {
        String string = obj != null ? obj.toString() : "";
        String str = this.f44194b.f44199a;
        string.getClass();
        if (!TextUtils.isEmpty(string)) {
            d dVar = this.f44194b;
            Context context = this.f44193a;
            String str2 = dVar.f44201c;
            synchronized (dVar) {
                dVar.f44206h = str2;
                y.a(context, "sdm_adx_rp_sdk", "adx_optional_res_url", str2);
            }
            d dVar2 = this.f44194b;
            dVar2.f44205g = dVar2.a(string);
            d dVar3 = this.f44194b;
            if (dVar3.f44202d != null) {
                com.smartdigimkt.b4.e.a().c(new c(dVar3, string));
            }
        }
        this.f44194b.f44203e = false;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, String str, AdError adError) {
        d dVar = this.f44194b;
        String str2 = dVar.f44201c;
        dVar.f44207i = str2;
        dVar.f44203e = false;
        String errorInfo = adError.getErrorInfo();
        com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c("", "");
        cVar.f42817a = "1004765";
        cVar.f42828l = String.valueOf(3);
        cVar.f42829m = str2;
        cVar.f42830n = errorInfo;
        com.smartdigimkt.y3.h.a(cVar);
    }
}
