package com.byazt.od;

import android.content.Context;
import android.content.Intent;
import com.bykv.vk.component.ttvideo.player.C;

@com.byazt.kj.hp(hp = {0, 1, 1768, 54})
/* loaded from: classes3.dex */
public class a extends hp {
    public a(Context context) {
        super(context, null, null);
    }

    @Override // com.byazt.od.w
    public Intent l() {
        Intent intent = new Intent("android.settings.SECURITY_SETTINGS");
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.addFlags(C.ENCODING_PCM_32BIT);
        intent.addFlags(8388608);
        return intent;
    }
}
