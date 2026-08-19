package com.byazt.yh;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_PACKET_RECV_TIME, 38})
/* loaded from: classes3.dex */
public class j extends hp {
    public int ad;

    /* renamed from: h, reason: collision with root package name */
    public String f27947h;
    public String pg;

    public j(Context context) {
        super(context);
    }

    @Override // com.byazt.yh.hp
    public void hp(int i2, int i3, int i4) {
        if (i4 <= 0 && !TextUtils.isEmpty(((hp) this).xv)) {
            String str = ((hp) this).xv;
            ((com.byazt.nf.l) this).hp = str;
            gu(str);
            return;
        }
        int i5 = this.ad;
        int i6 = i5 - i3;
        if (i5 <= 0 || i6 <= 0) {
            ((com.byazt.nf.l) this).hp = this.f27947h;
        } else {
            ((com.byazt.nf.l) this).hp = this.pg;
        }
        String strReplace = ((com.byazt.nf.l) this).hp.replace("${_countdownTime_}", String.valueOf(i6)).replace("${_remainTime_}", String.valueOf(i4));
        ((com.byazt.nf.l) this).hp = strReplace;
        gu(strReplace);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x000e  */
    @Override // com.byazt.yh.hp, com.byazt.nf.l, com.byazt.xs.jx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(java.lang.String r3, java.lang.String r4) {
        /*
            r2 = this;
            super.hp(r3, r4)
            r3.getClass()
            int r0 = r3.hashCode()
            r1 = -1
            switch(r0) {
                case 110256292: goto L26;
                case 110256293: goto L1b;
                case 996930575: goto L10;
                default: goto Le;
            }
        Le:
            r3 = r1
            goto L30
        L10:
            java.lang.String r0 = "startCountDown"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L19
            goto Le
        L19:
            r3 = 2
            goto L30
        L1b:
            java.lang.String r0 = "text2"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L24
            goto Le
        L24:
            r3 = 1
            goto L30
        L26:
            java.lang.String r0 = "text1"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L2f
            goto Le
        L2f:
            r3 = 0
        L30:
            switch(r3) {
                case 0: goto L3e;
                case 1: goto L3b;
                case 2: goto L34;
                default: goto L33;
            }
        L33:
            return
        L34:
            int r3 = com.byazt.xa.jx.hp(r4, r1)
            r2.ad = r3
            return
        L3b:
            r2.f27947h = r4
            return
        L3e:
            r2.pg = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.yh.j.hp(java.lang.String, java.lang.String):void");
    }
}
