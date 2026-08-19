package com.beizi.fusion;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.AppEventId;
import java.util.List;

/* loaded from: classes2.dex */
public class np extends n3 {

    /* renamed from: Z, reason: collision with root package name */
    private int f15387Z;

    public np(Context context, String str, j3 j3Var, long j2, int i2) {
        super(context, str, j3Var, j2);
        this.f15387Z = i2;
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

    public boolean Z() {
        return this.f15253k;
    }

    @Override // com.beizi.fusion.n3
    public e2 a(AdSpacesBean.ForwardBean forwardBean, String str, AdSpacesBean.BuyerBean buyerBean, List list, e2 e2Var) {
        return (ro.b().equalsIgnoreCase(str) || "BEIZI".equalsIgnoreCase(str)) ? new q4(this.f15243a, forwardBean.getSleepTime(), buyerBean, forwardBean, this, this.f15387Z) : e2Var;
    }

    public void a0() throws InterruptedException {
        a((ViewGroup) null);
    }

    public void b0() {
        a();
    }

    public void a(Activity activity) {
        e2 e2Var;
        if (activity == null || (e2Var = this.f15250h) == null) {
            return;
        }
        e2Var.a(activity);
    }
}
