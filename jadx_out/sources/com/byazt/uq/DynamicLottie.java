package com.byazt.uq;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.nw.a;
import com.byazt.nw.s;
import com.byazt.wnd.DynamicLottieView;

@com.byazt.kj.hp(hp = {0, 1, 85, 1442})
/* loaded from: classes3.dex */
public class DynamicLottie extends DynamicBaseWidgetImp {
    public String hp;

    /* renamed from: l, reason: collision with root package name */
    public s f26323l;

    public DynamicLottie(Context context, DynamicRootView dynamicRootView, s sVar, String str) {
        super(context, dynamicRootView, sVar);
        this.hp = str;
        this.f26323l = sVar;
        DynamicLottieView lottieView = getLottieView();
        if (lottieView != null) {
            addView(lottieView, getWidgetLayoutParams());
        }
    }

    private DynamicLottieView getLottieView() {
        s sVar = this.zy;
        if (sVar == null || sVar.e() == null || this.gu == null || TextUtils.isEmpty(this.hp)) {
            return null;
        }
        a aVarW = this.zy.e().w();
        String strNr = aVarW != null ? aVarW.nr() : "";
        if (TextUtils.isEmpty(strNr)) {
            return null;
        }
        String str = this.hp + "static/lotties/" + strNr + ".json";
        DynamicLottieView dynamicLottieView = new DynamicLottieView(this.gu);
        dynamicLottieView.setImageLottieTosPath(str);
        dynamicLottieView.s();
        return dynamicLottieView;
    }
}
