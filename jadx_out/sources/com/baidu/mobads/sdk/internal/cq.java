package com.baidu.mobads.sdk.internal;

import android.text.TextUtils;

/* loaded from: classes2.dex */
class cq extends j {

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ cp f11405b;

    public cq(cp cpVar) {
        this.f11405b = cpVar;
    }

    @Override // com.baidu.mobads.sdk.internal.j
    public Object i() {
        try {
            String strA = this.f11405b.a("key_crash_trace");
            String strA2 = this.f11405b.a("key_crash_ad");
            if (TextUtils.isEmpty(strA)) {
                return null;
            }
            cm cmVarA = cm.a();
            cmVarA.a(this.f11405b.f11403n);
            cmVarA.a(this.f11405b.a("key_crash_source"), strA, strA2);
            this.f11405b.g();
            return null;
        } catch (Exception e2) {
            bv.a().a(e2);
            return null;
        }
    }
}
