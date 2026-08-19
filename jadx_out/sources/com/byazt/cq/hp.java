package com.byazt.cq;

import android.content.Context;
import com.byazt.xa.s;
import com.byazt.xs.jx;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 796, 28})
/* loaded from: classes2.dex */
public class hp extends jx<UGProgressBar> {
    public float ad;
    public int gb;

    /* renamed from: h, reason: collision with root package name */
    public float f18955h;
    public int hp;
    public int pg;
    public String xv;

    public hp(Context context) {
        super(context);
    }

    @Override // com.byazt.xs.jx
    /* renamed from: eb, reason: merged with bridge method [inline-methods] */
    public UGProgressBar hp() {
        UGProgressBar uGProgressBar = new UGProgressBar(this.f27777l);
        uGProgressBar.hp(this);
        return uGProgressBar;
    }

    @Override // com.byazt.xs.jx
    public void l() throws JSONException {
        super.l();
        ((UGProgressBar) this.f27788w).setBackgroundColor(this.gb);
        ((UGProgressBar) this.f27788w).setText(this.xv);
        ((UGProgressBar) this.f27788w).setProgressBgColor(this.gb);
        ((UGProgressBar) this.f27788w).setProgressColor(this.hp);
        ((UGProgressBar) this.f27788w).setTextColor(this.pg);
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        super.hp(str, str2);
        str.getClass();
        switch (str) {
            case "progressBgColor":
                this.gb = com.byazt.xa.hp.hp(str2);
                break;
            case "textColor":
                this.pg = com.byazt.xa.hp.hp(str2);
                break;
            case "textSize":
                this.f18955h = s.hp(this.f27777l, str2);
                break;
            case "progress":
                this.ad = com.byazt.xa.jx.hp(str2, 0.0f);
                break;
            case "text":
                this.xv = str2;
                break;
            case "progressColor":
                this.hp = com.byazt.xa.hp.hp(str2);
                break;
        }
    }
}
