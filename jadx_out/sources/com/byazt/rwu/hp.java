package com.byazt.rwu;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import com.byazt.ymw.v;

@com.byazt.kj.hp(hp = {0, 1, 1915, 28})
/* loaded from: classes3.dex */
public class hp extends com.byazt.rd.hp {
    public hp(Context context) {
        super(context);
    }

    @Override // com.byazt.rd.hp
    public String gu(String str) {
        str.getClass();
        switch (str) {
            case "unmuted":
                return "tt_ugen_unmuted";
            case "back":
                return "tt_ugen_back";
            case "logo":
                return "tt_ugen_logo";
            case "close":
                return "tt_ugen_close";
            case "muted":
                return "tt_ugen_muted";
            default:
                return "";
        }
    }

    @Override // com.byazt.qp.l
    public void hp(final ImageView imageView, String str) {
        v.hp(this.f27777l, str, new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.rwu.hp.1
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                imageView.setImageDrawable(com.byazt.qp.hp.hp(bitmap));
            }
        }, 160);
    }
}
