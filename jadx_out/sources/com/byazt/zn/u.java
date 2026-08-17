package com.byazt.zn;

import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import com.byazt.pjc.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 442, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes3.dex */
public class u {

    public interface hp {
        void hp();

        void hp(com.byazt.pjc.l lVar, com.byazt.nke.u uVar);
    }

    public static void hp(com.byazt.er.l lVar, int i2, int i3, final hp hpVar, String str, int i4, com.byazt.nke.sz szVar, boolean z2) {
        com.byazt.ymw.u.l("splashLoadAd", " getImageBytes url ".concat(String.valueOf(lVar)));
        com.byazt.cm.w.hp().jx().hp(lVar, new hp.l() { // from class: com.byazt.zn.u.1
            @Override // com.byazt.pjc.hp.l
            public void hp(com.byazt.nke.u uVar, com.byazt.pjc.l lVar2) {
                hp hpVar2;
                if (lVar2.j() && (hpVar2 = hpVar) != null) {
                    hpVar2.hp(lVar2, uVar);
                    return;
                }
                hp hpVar3 = hpVar;
                if (hpVar3 != null) {
                    hpVar3.hp();
                }
            }

            @Override // com.byazt.pjc.hp.l
            public void hp(int i5, String str2, Throwable th) {
                hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.hp();
                }
            }
        }, i2, i3, str, i4, szVar, z2);
    }

    public static Drawable hp(byte[] bArr, int i2) {
        if (bArr != null && bArr.length > 0) {
            try {
                return new BitmapDrawable(BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
            } catch (Throwable unused) {
                return new ColorDrawable(0);
            }
        }
        return new ColorDrawable(0);
    }
}
