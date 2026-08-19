package com.smartdigimkt.k;

import android.text.TextUtils;

/* loaded from: classes5.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f41139a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o f41140b;

    public e(o oVar, r rVar) {
        this.f41140b = oVar;
        this.f41139a = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.k3.g gVar;
        com.smartdigimkt.m3.f fVarA;
        String str = this.f41139a.f41176F;
        if (TextUtils.isEmpty(str) && (gVar = this.f41140b.f41162b) != null && (fVarA = gVar.a(this.f41139a.f41192o)) != null) {
            str = fVarA.f41999G;
        }
        String str2 = this.f41139a.f41192o;
        if (TextUtils.isEmpty(str)) {
            this.f41140b.a(this.f41139a, "at_offer_action_1");
            this.f41140b.a(this.f41139a, "at_offer_action_2");
        } else if (str.equals("at_offer_action_1")) {
            this.f41140b.a(this.f41139a, "at_offer_action_2");
        }
    }
}
