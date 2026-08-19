package com.byazt.je;

import android.content.Context;
import android.graphics.Color;
import com.byazt.xs.jx;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AE_SRC_LUFS, 28})
/* loaded from: classes.dex */
public class hp extends jx<UGRatingBar> {
    public static final int ad = Color.parseColor("#FFC642");

    /* renamed from: z, reason: collision with root package name */
    public static final int f21473z = Color.parseColor("#e3e3e4");
    public int gb;

    /* renamed from: h, reason: collision with root package name */
    public float f21474h;
    public int hp;
    public float pg;
    public float xv;

    public hp(Context context) {
        super(context);
        this.hp = ad;
        this.gb = f21473z;
        this.xv = 4.0f;
        this.pg = 20.0f;
    }

    @Override // com.byazt.xs.jx
    /* renamed from: eb, reason: merged with bridge method [inline-methods] */
    public UGRatingBar hp() {
        UGRatingBar uGRatingBar = new UGRatingBar(this.f27777l);
        uGRatingBar.hp(this);
        return uGRatingBar;
    }

    @Override // com.byazt.xs.jx
    public void l() throws JSONException {
        super.l();
        if (hq()) {
            ((UGRatingBar) this.f27788w).hp(this.xv, this.hp, this.gb, this.pg, (int) this.f21474h);
        } else {
            ((UGRatingBar) this.f27788w).hp(this.xv, this.hp, this.gb, this.pg, 5);
        }
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        super.hp(str, str2);
        str.getClass();
        switch (str) {
            case "highLightColor":
            case "highlightColor":
                this.hp = com.byazt.xa.hp.hp(str2);
                break;
            case "lowLightColor":
            case "lowlightColor":
                this.gb = com.byazt.xa.hp.hp(str2, f21473z);
                break;
            case "gap":
                this.f21474h = com.byazt.xa.jx.hp(str2, 0.0f);
                break;
            case "size":
                this.pg = com.byazt.xa.jx.hp(str2, 20.0f);
                break;
            case "score":
                this.xv = com.byazt.xa.jx.hp(str2, 4.0f);
                break;
        }
    }
}
