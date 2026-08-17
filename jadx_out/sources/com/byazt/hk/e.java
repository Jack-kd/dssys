package com.byazt.hk;

import android.os.Bundle;
import android.os.RemoteException;
import com.byazt.h.hp;
import com.umeng.analytics.pro.bk;

@com.byazt.kj.hp(hp = {0, 1, 227, 45})
/* loaded from: classes2.dex */
public class e extends hp.AbstractBinderC0263hp {
    public volatile String hp = "";

    @Override // com.byazt.h.hp
    public void hp(int i2, long j2, boolean z2, float f2, double d2, String str) throws RemoteException {
    }

    @Override // com.byazt.h.hp
    public void hp(int i2, Bundle bundle) throws RemoteException {
        if (i2 != 0 || bundle == null) {
            return;
        }
        this.hp = bundle.getString(bk.c.f48849b);
    }

    public String hp() {
        return this.hp;
    }
}
