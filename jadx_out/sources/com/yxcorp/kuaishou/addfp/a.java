package com.yxcorp.kuaishou.addfp;

import android.content.Context;
import android.os.Build;
import com.yxcorp.kuaishou.addfp.android.a.c;
import com.yxcorp.kuaishou.addfp.android.b.e;

/* loaded from: classes5.dex */
class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ KWEGIDDFP f50635a;

    public a(KWEGIDDFP kwegiddfp) {
        this.f50635a = kwegiddfp;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.f50635a.mParamContext == null) {
                this.f50635a.mCallBack.onFailed(-3, "parameter error");
                return;
            }
            Context unused = this.f50635a.mParamContext;
            int i2 = e.f50655c;
            if (Build.VERSION.SDK_INT >= 28) {
                e.a();
            }
            KWEGIDDFP kwegiddfp = this.f50635a;
            kwegiddfp.mPkgName = kwegiddfp.mParamContext.getPackageName();
            c.c().b(this.f50635a.mPkgName);
            KWEGIDDFP kwegiddfp2 = this.f50635a;
            kwegiddfp2.getEGid(kwegiddfp2.mCallBack);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
