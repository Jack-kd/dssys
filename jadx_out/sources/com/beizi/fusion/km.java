package com.beizi.fusion;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.AppEventId;
import java.util.List;

/* loaded from: classes2.dex */
public class km extends n3 {

    /* renamed from: Z, reason: collision with root package name */
    private int f14756Z;

    /* renamed from: a0, reason: collision with root package name */
    private String f14757a0;

    /* renamed from: b0, reason: collision with root package name */
    private String f14758b0;

    public km(Context context, String str, j3 j3Var, long j2, int i2) {
        super(context, str, j3Var, j2);
        this.f14756Z = i2;
    }

    @Override // com.beizi.fusion.n3
    public void R() {
        AppEventId.getInstance(n3.f15218X).setAppRewardedVideoRequest(this.f15254l);
        EventBean eventBean = this.f15244b;
        if (eventBean != null) {
            eventBean.setAdType("1");
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
        return this.f15239T ? new y2(this.f15243a, this.f15246d, this.f15247e, sleepTime, buyerBean, forwardBean, b0(), a0(), this) : (ro.b().equalsIgnoreCase(str) || "BEIZI".equalsIgnoreCase(str)) ? new i4(this.f15243a, this.f15246d, this.f15247e, sleepTime, buyerBean, forwardBean, b0(), a0(), this) : e2Var;
    }

    public String a0() {
        return this.f14758b0;
    }

    public String b0() {
        return this.f14757a0;
    }

    public boolean c0() {
        return this.f15253k;
    }

    public void d0() throws InterruptedException {
        a((ViewGroup) null);
    }

    public void n(String str) {
        this.f14758b0 = str;
    }

    public void o(String str) {
        this.f14757a0 = str;
    }

    public void a(Activity activity) {
        e2 e2Var;
        if (activity == null || (e2Var = this.f15250h) == null) {
            return;
        }
        e2Var.a(activity);
    }
}
