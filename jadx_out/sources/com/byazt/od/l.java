package com.byazt.od;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.annotation.RequiresApi;
import com.bykv.vk.component.ttvideo.player.C;

@com.byazt.kj.hp(hp = {0, 1, 1768, 34})
@RequiresApi(api = 26)
/* loaded from: classes3.dex */
public class l extends hp {
    public l(Context context) {
        super(context, null, null);
    }

    @Override // com.byazt.od.w
    public Intent l() {
        Intent intent = new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + this.hp.getPackageName()));
        intent.addFlags(C.ENCODING_PCM_32BIT);
        intent.addFlags(8388608);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        return intent;
    }
}
