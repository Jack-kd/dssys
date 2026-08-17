package com.beizi.fusion;

import android.content.Context;
import android.view.ViewGroup;
import com.beizi.fusion.bzunified.BeiZiUnifiedAdListener;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.AppEventId;
import java.util.List;

/* loaded from: classes2.dex */
public class r4 extends n3 {
    public r4(Context context, String str, int i2, BeiZiUnifiedAdListener beiZiUnifiedAdListener) {
        super(context, str, beiZiUnifiedAdListener, i2);
    }

    @Override // com.beizi.fusion.n3
    public void R() {
        AppEventId.getInstance(n3.f15218X).setAppSplashRequest(this.f15254l);
        EventBean eventBean = this.f15244b;
        if (eventBean != null) {
            eventBean.setAdType("5");
        }
    }

    public void Y() {
        c();
    }

    public boolean Z() {
        return this.f15253k;
    }

    @Override // com.beizi.fusion.n3
    public e2 a(AdSpacesBean.ForwardBean forwardBean, String str, AdSpacesBean.BuyerBean buyerBean, List list, e2 e2Var) {
        return (ro.b().equalsIgnoreCase(str) || "BEIZI".equalsIgnoreCase(str)) ? new p4(this.f15243a, this.f15247e, forwardBean.getSleepTime(), buyerBean, forwardBean, this) : e2Var;
    }

    public void a0() throws InterruptedException {
        a((ViewGroup) null);
    }
}
