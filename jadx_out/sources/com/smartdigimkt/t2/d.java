package com.smartdigimkt.t2;

import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public final class d implements com.smartdigimkt.l4.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f44251a;

    public d(f fVar) {
        this.f44251a = fVar;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2) {
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, Object obj) {
        if (obj == null || !(obj instanceof String)) {
            this.f44251a.f44253b.a(-1, "Invalid ad response: onLoadFinish but empty result");
        } else {
            this.f44251a.a(obj.toString());
        }
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, String str, AdError adError) {
        f fVar = this.f44251a;
        String str2 = str + "," + adError.toString();
        fVar.f44253b.a(-1, "Invalid ad response: " + str2);
    }
}
