package com.smartdigimkt.g0;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public final class b implements com.smartdigimkt.l4.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f40298a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f40299b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e f40300c;

    public b(e eVar, String str, Context context) {
        this.f40300c = eVar;
        this.f40298a = str;
        this.f40299b = context;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2) {
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, Object obj) {
        String string = obj != null ? obj.toString() : "";
        if (!TextUtils.isEmpty(string)) {
            e eVar = this.f40300c;
            String str = eVar.f40305a;
            eVar.f40306b = string;
            e eVar2 = this.f40300c;
            eVar2.getClass();
            com.smartdigimkt.b4.e.a().c(new c(eVar2, string));
            y.a(this.f40299b, "sdm_adx_rp_sdk", "tracker_mapping", this.f40298a);
            e eVar3 = this.f40300c;
            eVar3.a(eVar3.f40306b);
        }
        this.f40300c.f40310f = false;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, String str, AdError adError) {
        this.f40300c.f40310f = false;
    }
}
