package com.beizi.fusion;

import android.content.Context;
import android.view.ViewGroup;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.AppEventId;
import java.util.List;

/* loaded from: classes2.dex */
public class oi extends n3 {

    /* renamed from: Z, reason: collision with root package name */
    private float f15435Z;

    /* renamed from: a0, reason: collision with root package name */
    private float f15436a0;

    /* renamed from: b0, reason: collision with root package name */
    private int f15437b0;

    public oi(Context context, String str, j3 j3Var, long j2, int i2) {
        super(context, str, j3Var, j2);
        this.f15437b0 = i2;
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
        if (this.f15239T) {
            return new x2(this.f15243a, this.f15246d, this.f15247e, sleepTime, buyerBean, forwardBean, this.f15435Z, this.f15436a0, this);
        }
        if (!ro.b().equalsIgnoreCase(str) && !"BEIZI".equalsIgnoreCase(str)) {
            return e2Var;
        }
        int i2 = this.f15437b0;
        return i2 == 4 ? new e4(this.f15243a, this.f15246d, this.f15247e, sleepTime, buyerBean, forwardBean, this, this.f15435Z, this.f15436a0) : i2 == 5 ? new f4(this.f15243a, this.f15246d, this.f15247e, sleepTime, buyerBean, forwardBean, this, this.f15435Z, this.f15436a0) : new h4(this.f15243a, this.f15246d, this.f15247e, sleepTime, buyerBean, forwardBean, this, this.f15435Z, this.f15436a0);
    }

    public void a0() {
        e2 e2Var = this.f15250h;
        if (e2Var != null) {
            e2Var.V();
        }
    }

    public void b0() {
        a();
    }

    public void a(float f2, float f3) throws InterruptedException {
        this.f15435Z = f2;
        this.f15436a0 = f3;
        a((ViewGroup) null);
    }
}
