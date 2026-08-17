package com.byazt.hk;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.byazt.hk.di;
import com.byazt.yq.jx;

@com.byazt.kj.hp(hp = {0, 1, 227, 302})
/* loaded from: classes2.dex */
public final class zy extends jx<com.byazt.yq.jx> {
    public zy() {
        super("com.zui.deviceidservice");
    }

    @Override // com.byazt.hk.jx
    public di.l<com.byazt.yq.jx, String> hp() {
        return new di.l<com.byazt.yq.jx, String>() { // from class: com.byazt.hk.zy.1
            @Override // com.byazt.hk.di.l
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public com.byazt.yq.jx l(IBinder iBinder) {
                return jx.hp.hp(iBinder);
            }

            @Override // com.byazt.hk.di.l
            public String hp(com.byazt.yq.jx jxVar) throws Exception {
                if (jxVar == null) {
                    return null;
                }
                return jxVar.hp();
            }
        };
    }

    @Override // com.byazt.hk.jx
    public Intent hp(Context context) {
        Intent intent = new Intent();
        intent.setClassName("com.zui.deviceidservice", "com.zui.deviceidservice.DeviceidService");
        return intent;
    }
}
