package com.byazt.vq;

import android.content.Context;
import android.widget.ScrollView;
import com.byazt.ie.hp;
import com.byazt.xs.hp;

@com.byazt.kj.hp(hp = {0, 1, 1292, 28})
/* loaded from: classes3.dex */
public class hp extends com.byazt.xs.hp<ScrollView> {
    public hp(Context context) {
        super(context);
    }

    @Override // com.byazt.xs.hp
    public hp.C0411hp s() {
        return new hp.C0270hp(this);
    }

    @Override // com.byazt.xs.jx
    /* renamed from: su, reason: merged with bridge method [inline-methods] */
    public ScrollView hp() {
        UGScrollView uGScrollView = new UGScrollView(this.f27777l);
        uGScrollView.hp(this);
        return uGScrollView;
    }
}
