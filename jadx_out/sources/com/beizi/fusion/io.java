package com.beizi.fusion;

import android.content.Context;
import android.view.View;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.events.EventCar;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.AppEventId;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class io extends n3 {

    /* renamed from: Z, reason: collision with root package name */
    private int f14502Z;

    /* renamed from: a0, reason: collision with root package name */
    private int f14503a0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            EventCar.getInstance(n3.f15218X).goRoadWithoutThread(new EventBean(q1.f15683u, "", "200.500", "", q1.i().c(), "", "", String.valueOf(System.currentTimeMillis()), ""));
        }
    }

    public io(Context context, String str, View view, j3 j3Var, long j2) {
        super(context, str, j3Var, j2);
        this.f15248f = view;
    }

    @Override // com.beizi.fusion.n3
    public void R() {
        AppEventId.getInstance(n3.f15218X).setAppSplashRequest(this.f15254l);
        EventBean eventBean = this.f15244b;
        if (eventBean != null) {
            eventBean.setAdType("2");
        }
    }

    public int Y() {
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

    public Map Z() {
        e2 e2Var = this.f15250h;
        if (e2Var == null) {
            return null;
        }
        return e2Var.o();
    }

    @Override // com.beizi.fusion.n3
    public e2 a(AdSpacesBean.ForwardBean forwardBean, String str, AdSpacesBean.BuyerBean buyerBean, List list, e2 e2Var) {
        return this.f15239T ? new z2(this.f15243a, this.f15246d, this.f15247e, forwardBean.getSleepTime(), this.f15245c, buyerBean, forwardBean, b0(), a0(), this) : (ro.b().equalsIgnoreCase(str) || "BEIZI".equalsIgnoreCase(str)) ? new j4(this.f15243a, this.f15246d, this.f15247e, this.f15248f, this.f15245c, buyerBean, forwardBean, list, b0(), a0(), this) : e2Var;
    }

    public int a0() {
        return this.f14503a0;
    }

    public int b0() {
        return this.f14502Z;
    }

    public void c(int i2) {
        this.f14503a0 = i2;
    }

    public void c0() {
        w3.b().a().execute(new a());
    }

    public void d(int i2) {
        this.f14502Z = i2;
    }

    public void d0() {
        e2 e2Var;
        if (this.f15233N || (e2Var = this.f15250h) == null || this.f15229J) {
            return;
        }
        e2Var.E0();
        this.f15250h.H0();
        this.f15229J = true;
    }

    public void a(Context context) {
        try {
            e2 e2Var = this.f15250h;
            if (e2Var != null) {
                e2Var.a(context);
            }
        } catch (Exception unused) {
        }
    }
}
