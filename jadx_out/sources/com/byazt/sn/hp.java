package com.byazt.sn;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.xa.s;
import com.byazt.xs.jx;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 1211, 28})
/* loaded from: classes3.dex */
public class hp extends jx<DislikeView> {
    public int gb;
    public int hp;
    public int xv;

    public hp(Context context) {
        super(context);
        this.hp = 0;
        this.xv = 0;
    }

    @Override // com.byazt.xs.jx
    /* renamed from: eb, reason: merged with bridge method [inline-methods] */
    public DislikeView hp() {
        DislikeView dislikeView = new DislikeView(this.f27777l);
        dislikeView.hp(this);
        return dislikeView;
    }

    @Override // com.byazt.xs.jx
    public void l() throws JSONException {
        super.l();
        ((DislikeView) this.f27788w).setRadius(this.f27778m);
        ((DislikeView) this.f27788w).setStrokeWidth((int) this.ea);
        ((DislikeView) this.f27788w).setDislikeColor(this.hp);
        ((DislikeView) this.f27788w).setStrokeColor(this.su);
        ((DislikeView) this.f27788w).setDislikeWidth(this.gb);
        ((DislikeView) this.f27788w).setBgColor(this.xv);
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.hp(str, str2);
        str.getClass();
        switch (str) {
            case "dislikeColor":
                this.hp = com.byazt.xa.hp.hp(str2);
                break;
            case "dislikeWidth":
                this.gb = (int) s.hp(this.f27777l, Integer.parseInt(str2));
                break;
            case "dislikeFillColor":
                this.xv = com.byazt.xa.hp.hp(str2);
                break;
        }
    }
}
