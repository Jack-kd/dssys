package com.byazt.uf;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import com.byazt.xs.jx;
import com.byazt.ymw.v;
import com.byazt.zs.w;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 889, 28})
/* loaded from: classes3.dex */
public class hp extends jx<UgenGif> {
    public ImageView.ScaleType gb;
    public String hp;

    public hp(Context context) {
        super(context);
        this.gb = ImageView.ScaleType.FIT_CENTER;
    }

    private ImageView.ScaleType gu(String str) {
        ImageView.ScaleType scaleType;
        scaleType = ImageView.ScaleType.FIT_XY;
        str.getClass();
        switch (str) {
            case "center":
                return ImageView.ScaleType.CENTER;
            case "fitEnd":
                return ImageView.ScaleType.FIT_END;
            case "fitStart":
                return ImageView.ScaleType.FIT_START;
            case "centerInside":
                return ImageView.ScaleType.CENTER_INSIDE;
            case "fitCenter":
                return ImageView.ScaleType.FIT_CENTER;
            case "centerCrop":
                return ImageView.ScaleType.CENTER_CROP;
            default:
                return scaleType;
        }
    }

    private void s() {
        if (TextUtils.isEmpty(this.hp)) {
            return;
        }
        if (!this.hp.startsWith("local://")) {
            w.hp().l().hp(this.f27782q, this.hp, (ImageView) this.f27788w, null);
            return;
        }
        try {
            v.hp(this.f27777l, this.hp.replace("local://", ""), (ImageView) this.f27788w, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.xs.jx
    /* renamed from: eb, reason: merged with bridge method [inline-methods] */
    public UgenGif hp() {
        UgenGif ugenGif = new UgenGif(this.f27777l);
        this.f27788w = ugenGif;
        ugenGif.hp(this);
        return (UgenGif) this.f27788w;
    }

    @Override // com.byazt.xs.jx
    public void l() throws JSONException {
        super.l();
        s();
        ((UgenGif) this.f27788w).setScaleType(this.gb);
    }

    @Override // com.byazt.xs.jx, com.byazt.zs.j
    public void w() {
        super.w();
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        super.hp(str, str2);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        str.getClass();
        if (str.equals("scaleType")) {
            this.gb = gu(str2);
        } else if (str.equals("src")) {
            this.hp = str2;
        }
    }

    @Override // com.byazt.xs.jx, com.byazt.zs.j
    public void hp(boolean z2) throws JSONException {
        super.hp(z2);
        if (z2) {
            l();
        }
    }
}
