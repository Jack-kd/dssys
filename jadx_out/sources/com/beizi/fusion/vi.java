package com.beizi.fusion;

import android.content.Context;
import android.view.ViewGroup;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.AppEventId;
import java.util.List;

/* loaded from: classes2.dex */
public class vi extends n3 {

    /* renamed from: Z, reason: collision with root package name */
    private int f16686Z;

    /* renamed from: a0, reason: collision with root package name */
    private boolean f16687a0;

    /* renamed from: b0, reason: collision with root package name */
    private boolean f16688b0;

    public vi(Context context, String str, j3 j3Var, long j2, int i2) {
        super(context, str, j3Var, j2);
        this.f16686Z = i2;
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
        long sleepTime = forwardBean.getSleepTime();
        return this.f15239T ? new w2(this.f15243a, this.f15246d, this.f15247e, sleepTime, buyerBean, forwardBean, this) : (ro.b().equalsIgnoreCase(str) || "BEIZI".equalsIgnoreCase(str)) ? new g4(this.f15243a, this.f15247e, sleepTime, buyerBean, forwardBean, this, this.f16686Z, this.f16687a0, this.f16688b0) : e2Var;
    }

    public boolean a0() {
        return this.f15253k;
    }

    public void b(boolean z2) {
        this.f16687a0 = z2;
    }

    public void b0() throws InterruptedException {
        a((ViewGroup) null);
    }

    public void c(boolean z2) {
        this.f16688b0 = z2;
    }

    public void c0() {
        a();
    }
}
