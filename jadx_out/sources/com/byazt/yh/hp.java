package com.byazt.yh;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.nf.UGTextView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_PACKET_RECV_TIME, 28})
/* loaded from: classes3.dex */
public class hp extends com.byazt.nf.l {

    /* renamed from: h, reason: collision with root package name */
    public String f27946h;
    public String pg;
    public String xv;

    public hp(Context context) {
        super(context);
    }

    public void gu(String str) {
        ((UGTextView) this.f27788w).setText(str);
        try {
            float fMeasureText = ((UGTextView) this.f27788w).getPaint().measureText(str);
            if (fMeasureText >= 0.0f) {
                j((int) fMeasureText);
            }
        } catch (Throwable unused) {
        }
    }

    public void hp(int i2, int i3, int i4) {
        if (i2 <= 0 && !TextUtils.isEmpty(this.xv)) {
            String str = this.xv;
            ((com.byazt.nf.l) this).hp = str;
            gu(str);
            return;
        }
        if (TextUtils.isEmpty(this.f27946h) || TextUtils.equals(this.f27946h, "null")) {
            this.f27946h = "";
        }
        if (TextUtils.isEmpty(this.pg) || TextUtils.equals(this.pg, "null")) {
            this.pg = "";
        }
        String str2 = this.pg + i2 + this.f27946h;
        ((com.byazt.nf.l) this).hp = str2;
        gu(str2);
    }

    @Override // com.byazt.nf.l, com.byazt.xs.jx
    public void l() {
        super.l();
        if (TextUtils.isEmpty(this.f27946h) || TextUtils.equals(this.f27946h, "null")) {
            this.f27946h = "";
        }
        if (TextUtils.isEmpty(this.pg) || TextUtils.equals(this.pg, "null")) {
            this.pg = "";
        }
        String str = this.pg + this.f27946h;
        ((com.byazt.nf.l) this).hp = str;
        gu(str);
        ((UGTextView) this.f27788w).setGravity(17);
    }

    @Override // com.byazt.nf.l, com.byazt.xs.jx
    public void hp(String str, String str2) {
        super.hp(str, str2);
        str.getClass();
        switch (str) {
            case "before":
                this.pg = str2;
                break;
            case "finish":
                this.xv = str2;
                break;
            case "after":
                this.f27946h = str2;
                break;
        }
    }
}
