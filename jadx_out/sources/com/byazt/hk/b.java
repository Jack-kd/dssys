package com.byazt.hk;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.byazt.hk.di;
import com.byazt.yq.l;

@com.byazt.kj.hp(hp = {0, 1, 227, 157})
/* loaded from: classes2.dex */
public final class b extends jx<com.byazt.yq.l> {
    public b() {
        super("com.samsung.android.deviceidservice");
    }

    @Override // com.byazt.hk.jx
    public di.l<com.byazt.yq.l, String> hp() {
        return new di.l<com.byazt.yq.l, String>() { // from class: com.byazt.hk.b.1
            @Override // com.byazt.hk.di.l
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public com.byazt.yq.l l(IBinder iBinder) {
                return l.hp.hp(iBinder);
            }

            @Override // com.byazt.hk.di.l
            public String hp(com.byazt.yq.l lVar) throws Exception {
                return lVar.hp();
            }
        };
    }

    @Override // com.byazt.hk.jx
    public Intent hp(Context context) {
        Intent intent = new Intent();
        intent.setClassName("com.samsung.android.deviceidservice", "com.samsung.android.deviceidservice.DeviceIdService");
        return intent;
    }
}
