package com.smartdigimkt.t1;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public final class f implements com.smartdigimkt.l4.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f44209a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f44210b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ h f44211c;

    public f(h hVar, Context context, String str) {
        this.f44211c = hVar;
        this.f44209a = context;
        this.f44210b = str;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2) {
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, Object obj) {
        String string = obj != null ? obj.toString() : "";
        if (!TextUtils.isEmpty(string)) {
            this.f44211c.f44216a = string;
            h hVar = this.f44211c;
            hVar.getClass();
            com.smartdigimkt.b4.e.a().c(new g(hVar, string));
            y.a(this.f44209a, "sdm_adx_rp_sdk", "mraid_js", this.f44210b);
        }
        this.f44211c.f44219d = false;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, String str, AdError adError) {
        this.f44211c.f44219d = false;
    }
}
