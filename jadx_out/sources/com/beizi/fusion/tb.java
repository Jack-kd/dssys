package com.beizi.fusion;

import android.content.Context;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class tb extends fa implements ob {

    /* renamed from: d, reason: collision with root package name */
    protected final d6 f16362d;

    public tb(Context context, da daVar) {
        super(context, daVar);
        this.f16362d = (d6) super.a();
    }

    public void a(Context context) {
        if (context == null || !this.f16362d.f()) {
            return;
        }
        this.f16362d.a(true);
        this.f16362d.b(context);
    }

    @Override // com.beizi.fusion.ob
    public void b(Map map) {
        d6 d6Var = this.f16362d;
        if (d6Var != null) {
            d6Var.a(map);
        }
    }

    public void d() {
        d6 d6Var = this.f16362d;
        if (d6Var != null) {
            d6Var.k();
        }
    }

    public Map e() {
        d6 d6Var = this.f16362d;
        return d6Var != null ? d6Var.l() : Collections.EMPTY_MAP;
    }

    public boolean f() {
        d6 d6Var = this.f16362d;
        return d6Var != null && d6Var.n();
    }

    @Override // com.beizi.fusion.ob
    public int getECPM() {
        d6 d6Var = this.f16362d;
        if (d6Var != null) {
            return d6Var.m();
        }
        return 0;
    }

    @Override // com.beizi.fusion.ob
    public void a(Map map) {
        d6 d6Var = this.f16362d;
        if (d6Var != null) {
            d6Var.b(map);
        }
    }
}
