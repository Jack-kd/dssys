package com.byazt.ar;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes2.dex */
public class gu extends com.byazt.ie.hp {
    public String gb;
    public final float[] xv;

    public gu(Context context) {
        super(context);
        this.xv = new float[]{0.0f, 0.0f, 0.0f, 0.0f};
    }

    private void gu(String str) {
        String[] strArrSplit;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String strTrim = str.trim();
        if (strTrim.length() <= 2 || (strArrSplit = strTrim.substring(1, strTrim.length() - 1).split(",")) == null || strArrSplit.length != 4) {
            return;
        }
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            String str2 = strArrSplit[i2];
            if (!TextUtils.isEmpty(str2)) {
                try {
                    this.xv[i2] = Float.parseFloat(com.byazt.wb.hp.hp(str2.trim(), this.f27775j));
                } catch (NumberFormatException unused) {
                }
            }
        }
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        if (TextUtils.equals(str, "clickableInteract")) {
            this.gb = str2;
        } else {
            super.hp(str, str2);
        }
    }

    @Override // com.byazt.ie.hp, com.byazt.xs.hp, com.byazt.xs.jx
    public void l() throws JSONException {
        gu(this.gb);
        super.l();
    }

    public float[] rv() {
        return this.xv;
    }
}
