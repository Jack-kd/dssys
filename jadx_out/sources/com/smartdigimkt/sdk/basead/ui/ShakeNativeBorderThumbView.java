package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import com.smartdigimkt.a4.f;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.e1.a;
import com.smartdigimkt.i1.b;
import com.smartdigimkt.i1.c;
import com.smartdigimkt.i1.g;
import com.smartdigimkt.k2.s;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.v1.d5;
import com.smartdigimkt.v1.e5;
import com.smartdigimkt.v1.f5;
import com.smartdigimkt.v1.v1;
import java.util.List;

/* loaded from: classes5.dex */
public class ShakeNativeBorderThumbView extends ShakeBorderThumbView {

    /* renamed from: n, reason: collision with root package name */
    public final String f43580n;

    /* renamed from: o, reason: collision with root package name */
    public b f43581o;

    /* renamed from: p, reason: collision with root package name */
    public f f43582p;

    /* renamed from: q, reason: collision with root package name */
    public final d5 f43583q;

    /* renamed from: r, reason: collision with root package name */
    public final e5 f43584r;

    public ShakeNativeBorderThumbView(Context context) {
        super(context);
        this.f43580n = "ShakeNativeBorderThumbView";
        this.f43583q = new d5(this);
        this.f43584r = new e5(this);
        this.f43582p = new f(1);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.ShakeBorderThumbView, com.smartdigimkt.sdk.basead.ui.BaseShakeView
    public final void a() {
        super.a();
        setBackgroundResource(k.a(SDKContext.getInstance().d(), "myoffer_bg_shake_native_border_thumb", "drawable"));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseShakeView
    public final void b() {
        s sVarA = s.a();
        e5 e5Var = this.f43584r;
        synchronized (sVarA.f41341b) {
            try {
                if (sVarA.f41342c.contains(e5Var)) {
                    return;
                }
                sVarA.f41342c.add(e5Var);
                e5Var.getClass();
                sVarA.f41342c.size();
                if (sVarA.f41342c.size() == 1) {
                    sVarA.f41343d = true;
                    a.a().a(sVarA.f41351l);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseShakeView
    public final void c() {
        s sVarA = s.a();
        e5 e5Var = this.f43584r;
        synchronized (sVarA.f41341b) {
            try {
                sVarA.f41342c.remove(e5Var);
                e5Var.getClass();
                sVarA.f41342c.size();
                if (sVarA.f41342c.size() == 0) {
                    a.a().b(sVarA.f41351l);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void changeBackground() {
        int iA = k.a(getContext(), 10.0f);
        int iA2 = k.a(getContext(), 10.0f);
        int iA3 = k.a(getContext(), 6.0f);
        setPadding(iA, iA3, iA2, iA3);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1725553114);
        gradientDrawable.setCornerRadius(k.a(getContext(), 20.0f));
        setBackground(gradientDrawable);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.ShakeBorderThumbView
    public int getLayoutId() {
        return k.a(getContext(), "myoffer_shake_native_border_thumb", "layout");
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseShakeView
    public void setOnShakeListener(v1 v1Var, e eVar) {
        List list;
        if (eVar != null) {
            this.f43582p = new f(eVar.a());
        }
        com.smartdigimkt.i1.f fVar = new com.smartdigimkt.i1.f(eVar);
        if (fVar.f40711a != 1 || (list = fVar.f40713c) == null || list.size() <= 0) {
            this.f43581o = new g();
        } else {
            this.f43581o = new c();
        }
        fVar.toString();
        this.f43581o.getClass();
        this.f43581o.a(new com.smartdigimkt.i1.f(eVar));
        this.f43581o.a(new f5(this, v1Var));
        this.f43326k = v1Var;
    }
}
