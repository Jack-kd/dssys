package com.byazt.od;

import android.content.Context;
import android.content.Intent;
import com.bykv.vk.component.ttvideo.player.C;

@com.byazt.kj.hp(hp = {0, 1, 1768, 94})
/* loaded from: classes3.dex */
public class eb extends hp {
    public eb(Context context, com.byazt.jb.hp hpVar, String str) {
        super(context, hpVar, str);
    }

    @Override // com.byazt.od.w
    public Intent l() {
        Intent intent = new Intent(com.byazt.oy.w.jx + ".filemanager.intent.action.BROWSER_FILE");
        intent.putExtra("CurrentDir", this.jx);
        intent.putExtra("CurrentMode", 1);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.addFlags(32768);
        intent.addFlags(C.ENCODING_PCM_32BIT);
        return intent;
    }
}
