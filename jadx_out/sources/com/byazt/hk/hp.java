package com.byazt.hk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.byazt.hk.di;
import com.byazt.yq.j;

@com.byazt.kj.hp(hp = {0, 1, 227, 28})
/* loaded from: classes2.dex */
public final class hp extends jx<com.byazt.yq.j> {
    public hp() {
        super("com.asus.msa.SupplementaryDID");
    }

    @Override // com.byazt.hk.jx
    public di.l<com.byazt.yq.j, String> hp() {
        return new di.l<com.byazt.yq.j, String>() { // from class: com.byazt.hk.hp.1
            @Override // com.byazt.hk.di.l
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public com.byazt.yq.j l(IBinder iBinder) {
                return j.hp.hp(iBinder);
            }

            @Override // com.byazt.hk.di.l
            public String hp(com.byazt.yq.j jVar) throws Exception {
                if (jVar == null) {
                    return null;
                }
                return jVar.jx();
            }
        };
    }

    @Override // com.byazt.hk.jx
    public Intent hp(Context context) {
        Intent intent = new Intent();
        intent.setAction("com.asus.msa.action.ACCESS_DID");
        intent.setComponent(new ComponentName("com.asus.msa.SupplementaryDID", "com.asus.msa.SupplementaryDID.SupplementaryDIDService"));
        return intent;
    }
}
