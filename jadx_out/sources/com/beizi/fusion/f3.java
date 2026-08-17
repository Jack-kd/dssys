package com.beizi.fusion;

import android.content.Context;
import android.view.ViewGroup;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.AppEventId;
import com.beizi.fusion.unified.BZUnifiedAdActionData;
import com.beizi.fusion.unified.BZUnifiedAdListener;
import java.util.List;

/* loaded from: classes2.dex */
public class f3 extends n3 {

    /* renamed from: Z, reason: collision with root package name */
    private int f13822Z;

    public f3(Context context, String str, int i2, int i3, BZUnifiedAdListener bZUnifiedAdListener) {
        super(context, str, bZUnifiedAdListener, i2);
        this.f13822Z = i3;
    }

    @Override // com.beizi.fusion.n3
    public void R() {
        AppEventId.getInstance(n3.f15218X).setAppSplashRequest(this.f15254l);
        EventBean eventBean = this.f15244b;
        if (eventBean != null) {
            int i2 = this.f13822Z;
            if (i2 == 1) {
                eventBean.setAdType("1");
                return;
            }
            if (i2 == 2) {
                eventBean.setAdType("2");
            } else if (i2 == 3) {
                eventBean.setAdType("3");
            } else {
                if (i2 != 6) {
                    return;
                }
                eventBean.setAdType("5");
            }
        }
    }

    public void Y() {
        c();
    }

    public void Z() throws InterruptedException {
        a((ViewGroup) null);
    }

    @Override // com.beizi.fusion.n3
    public e2 a(AdSpacesBean.ForwardBean forwardBean, String str, AdSpacesBean.BuyerBean buyerBean, List list, e2 e2Var) {
        return (ro.b().equalsIgnoreCase(str) || "BEIZI".equalsIgnoreCase(str)) ? new e3(this.f15243a, this.f15247e, this.f13822Z, buyerBean, forwardBean, this) : e2Var;
    }

    public void c(int i2) {
        e2 e2Var = this.f15250h;
        if (e2Var == null) {
            return;
        }
        e2Var.b(i2);
    }

    public void a(ViewGroup viewGroup, List list) {
        e2 e2Var = this.f15250h;
        if (e2Var == null) {
            return;
        }
        e2Var.a(viewGroup, list);
    }

    public void a(BZUnifiedAdActionData bZUnifiedAdActionData) {
        e2 e2Var;
        if (bZUnifiedAdActionData == null || (e2Var = this.f15250h) == null) {
            return;
        }
        e2Var.a(bZUnifiedAdActionData);
    }
}
