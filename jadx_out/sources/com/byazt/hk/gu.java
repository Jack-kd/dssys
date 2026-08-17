package com.byazt.hk;

import android.os.Bundle;
import android.os.RemoteException;
import com.byazt.h.hp;
import com.umeng.commonsdk.statistics.UMErrorCode;

@com.byazt.kj.hp(hp = {0, 1, 227, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes2.dex */
public class gu extends hp.AbstractBinderC0263hp {
    public volatile boolean hp = false;

    @Override // com.byazt.h.hp
    public void hp(int i2, long j2, boolean z2, float f2, double d2, String str) throws RemoteException {
    }

    @Override // com.byazt.h.hp
    public void hp(int i2, Bundle bundle) throws RemoteException {
        if (i2 != 0 || bundle == null) {
            return;
        }
        this.hp = bundle.getBoolean("oa_id_limit_state");
    }

    public boolean hp() {
        return this.hp;
    }
}
