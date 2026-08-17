package com.beizi.fusion;

import android.content.Context;
import android.view.ViewGroup;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.AppEventId;
import java.util.List;

/* loaded from: classes2.dex */
public class rp extends n3 {
    public rp(Context context, String str, j3 j3Var, long j2) {
        super(context, str, j3Var, j2);
    }

    @Override // com.beizi.fusion.n3
    public void R() {
        AppEventId.getInstance(n3.f15218X).setAppNativeRequest(this.f15254l);
        EventBean eventBean = this.f15244b;
        if (eventBean != null) {
            eventBean.setAdType("5");
        }
    }

    public void Y() {
        c();
    }

    public int Z() {
        String strS;
        e2 e2Var = this.f15250h;
        if (e2Var == null || (strS = e2Var.s()) == null) {
            return -1;
        }
        try {
            return Integer.parseInt(strS);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    @Override // com.beizi.fusion.n3
    public e2 a(AdSpacesBean.ForwardBean forwardBean, String str, AdSpacesBean.BuyerBean buyerBean, List list, e2 e2Var) {
        return (ro.b().equalsIgnoreCase(str) || "BEIZI".equalsIgnoreCase(str)) ? new s4(this.f15243a, this.f15247e, buyerBean, forwardBean, this) : e2Var;
    }

    public void a0() throws InterruptedException {
        a((ViewGroup) null);
    }

    public void c(ViewGroup viewGroup) {
        e2 e2Var;
        if (viewGroup == null || (e2Var = this.f15250h) == null) {
            return;
        }
        e2Var.a(viewGroup);
    }

    public void a(UnifiedSplashActionData unifiedSplashActionData) {
        e2 e2Var;
        if (unifiedSplashActionData == null || (e2Var = this.f15250h) == null) {
            return;
        }
        e2Var.a(unifiedSplashActionData);
    }
}
