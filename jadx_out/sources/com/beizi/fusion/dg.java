package com.beizi.fusion;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import java.util.List;

/* loaded from: classes2.dex */
public class dg extends n3 {

    /* renamed from: Z, reason: collision with root package name */
    private int f13423Z;

    /* renamed from: a0, reason: collision with root package name */
    private int f13424a0;

    public dg(Context context, String str, j3 j3Var, long j2, int i2) {
        super(context, str, j3Var, j2);
        this.f13424a0 = i2;
    }

    @Override // com.beizi.fusion.n3
    public void R() {
        EventBean eventBean = this.f15244b;
        if (eventBean != null) {
            eventBean.setAdType("3");
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
        buyerBean.getAdType();
        long sleepTime = forwardBean.getSleepTime();
        return this.f15239T ? new v2(this.f15243a, this.f15246d, this.f15247e, sleepTime, buyerBean, forwardBean, this) : (ro.b().equalsIgnoreCase(str) || "BEIZI".equalsIgnoreCase(str)) ? new c4(this.f15243a, this.f15246d, this.f15247e, sleepTime, buyerBean, forwardBean, this) : e2Var;
    }

    public boolean a0() {
        return this.f15253k;
    }

    public void b0() throws InterruptedException {
        a((ViewGroup) null);
    }

    public void c(int i2) {
        this.f13423Z = i2;
    }

    public void a(Activity activity) {
        e2 e2Var;
        if (activity == null || (e2Var = this.f15250h) == null) {
            return;
        }
        e2Var.a(activity);
    }
}
