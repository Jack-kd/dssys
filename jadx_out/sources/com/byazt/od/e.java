package com.byazt.od;

import android.content.Context;
import android.content.Intent;
import com.bykv.vk.component.ttvideo.player.C;

@com.byazt.kj.hp(hp = {0, 1, 1768, 45})
/* loaded from: classes3.dex */
public class e extends hp {
    public e(Context context, com.byazt.jb.hp hpVar, String str) {
        super(context, hpVar, str);
    }

    @Override // com.byazt.od.w
    public Intent l() {
        Intent intent = new Intent("com.android.filemanager.FILE_OPEN");
        intent.putExtra("FilePathToBeOpenAfterScan", this.jx);
        intent.putExtra("com.iqoo.secure", true);
        intent.putExtra("OpenParentAndLocationDestFile", true);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.addFlags(32768);
        intent.addFlags(C.ENCODING_PCM_32BIT);
        return intent;
    }
}
