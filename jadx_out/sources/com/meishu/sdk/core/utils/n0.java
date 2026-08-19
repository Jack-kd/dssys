package com.meishu.sdk.core.utils;

/* loaded from: classes4.dex */
public class n0 extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m0 f31941a;

    public n0(m0 m0Var) {
        this.f31941a = m0Var;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        super.safeRun();
        if (com.meishu.sdk.core.service.d.a()) {
            LogUtil.dev("OpenAppDialogStateChecker", "dialog state 3");
            this.f31941a.f31936f = Boolean.FALSE;
        } else {
            LogUtil.dev("OpenAppDialogStateChecker", "dialog state 5");
            this.f31941a.f31936f = Boolean.TRUE;
        }
        m0 m0Var = this.f31941a;
        m0.a(m0Var, m0Var.f31936f.booleanValue());
    }
}
