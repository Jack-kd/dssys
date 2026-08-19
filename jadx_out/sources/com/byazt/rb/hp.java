package com.byazt.rb;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import com.byazt.vt.UpieImageView;
import com.byazt.xci.mp;
import com.byazt.xs.jx;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 1975, 28})
/* loaded from: classes3.dex */
public class hp extends jx<UpieImageView> {
    public boolean gb;
    public ImageView.ScaleType hp;

    public hp(Context context) {
        super(context);
        this.hp = ImageView.ScaleType.FIT_XY;
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
            case "fit":
            case "fitCenter":
                return ImageView.ScaleType.FIT_CENTER;
            case "crop":
            case "centerCrop":
                return ImageView.ScaleType.CENTER_CROP;
            default:
                return scaleType;
        }
    }

    @Override // com.byazt.xs.jx
    /* renamed from: eb, reason: merged with bridge method [inline-methods] */
    public UpieImageView hp() {
        return new UpieImageView(this.f27777l, null, null, null);
    }

    @Override // com.byazt.xs.jx
    public void l() throws JSONException {
        super.l();
        mp mpVarHp = com.byazt.jz.hp.hp(this.f27775j);
        if (mpVarHp != null) {
            ((UpieImageView) this.f27788w).hp(com.byazt.nwu.hp.hp(mpVarHp, this.f27775j), com.byazt.fbd.hp.hp(mpVarHp), com.byazt.nwu.hp.e(mpVarHp));
            ((UpieImageView) this.f27788w).setScaleType(this.hp);
        }
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.hp(str, str2);
        str.getClass();
        switch (str) {
            case "scaleMode":
            case "scaleType":
                this.hp = gu(str2);
                break;
            case "isBgGaussianBlur":
                this.gb = com.byazt.xa.jx.hp(str2, false);
                break;
        }
    }
}
