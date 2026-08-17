package com.byazt.fjh;

import android.graphics.Bitmap;
import com.byazt.nke.sz;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_SUB_RETRY_TIMES, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w extends hp {
    public byte[] hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.nke.eb f19890l;

    public w(byte[] bArr, com.byazt.nke.eb ebVar) {
        this.hp = bArr;
        this.f19890l = ebVar;
    }

    @Override // com.byazt.fjh.q
    public void hp(com.byazt.kz.jx jxVar) {
        com.byazt.kz.a aVarZy = jxVar.zy();
        com.byazt.uxh.hp hpVarHp = aVarZy.hp(jxVar);
        try {
            sz szVarU = jxVar.u();
            if (szVarU != null) {
                szVarU.onStep(10, null);
            }
            Bitmap bitmapHp = hpVarHp.hp(this.hp);
            if (bitmapHp != null) {
                jxVar.hp(new k(bitmapHp, this.hp, this.f19890l, false));
                String memoryCacheKey = jxVar.getMemoryCacheKey();
                if (!jxVar.q() || jxVar.k().isMemoryCache()) {
                    aVarZy.hp(jxVar.k()).hp(memoryCacheKey, bitmapHp);
                }
            } else {
                hp(1002, "decode failed bitmap null", null, jxVar);
            }
            if (szVarU != null) {
                szVarU.onStep(11, bitmapHp);
            }
        } catch (Throwable th) {
            hp(1002, "decode failed:" + th.getMessage(), th, jxVar);
        }
    }

    private void hp(int i2, String str, Throwable th, com.byazt.kz.jx jxVar) {
        if (this.f19890l == null) {
            jxVar.hp(new gu());
        } else {
            jxVar.hp(new s(i2, str, th));
        }
    }

    @Override // com.byazt.fjh.q
    public String hp() {
        return "decode";
    }
}
