package com.meishu.sdk.core.utils;

/* loaded from: classes4.dex */
public class n1 extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o1 f31942a;

    public n1(o1 o1Var) {
        this.f31942a = o1Var;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        while (true) {
            try {
                if (this.f31942a.f31944a.isEmpty()) {
                    return;
                } else {
                    this.f31942a.a();
                }
            } catch (Throwable th) {
                try {
                    th.printStackTrace();
                    return;
                } finally {
                    this.f31942a.f31947d = false;
                }
            }
        }
    }
}
