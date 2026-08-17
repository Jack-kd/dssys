package com.baidu.mobads.sdk.internal;

import com.baidu.mobads.sdk.internal.cb;

/* loaded from: classes2.dex */
class ac implements cb.c {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ aa f10962a;

    public ac(aa aaVar) {
        this.f10962a = aaVar;
    }

    @Override // com.baidu.mobads.sdk.internal.cb.c
    public void a(boolean z2) {
        if (z2) {
            try {
                cb cbVar = h.f11533a;
                if (cbVar != null) {
                    this.f10962a.f10950b = cbVar.i();
                    if (this.f10962a.f10950b != null) {
                        this.f10962a.k();
                        return;
                    }
                }
            } catch (Exception unused) {
                this.f10962a.a("加载dex异常");
                return;
            }
        }
        h.f11533a = null;
        this.f10962a.a("加载dex失败");
    }
}
