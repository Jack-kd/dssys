package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.ea;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class fa {

    /* renamed from: a, reason: collision with root package name */
    protected Context f13852a;

    /* renamed from: b, reason: collision with root package name */
    protected da f13853b;

    /* renamed from: c, reason: collision with root package name */
    private final ea f13854c;

    public fa(Context context, da daVar) {
        this.f13852a = context;
        this.f13853b = daVar;
        this.f13854c = ea.b.a(b(), context, daVar);
    }

    public ea a() {
        return this.f13854c;
    }

    public abstract EnumC1130d b();

    public Map c() {
        ea eaVar = this.f13854c;
        return eaVar != null ? eaVar.d() : Collections.EMPTY_MAP;
    }

    public void a(ga gaVar) {
        this.f13854c.a(gaVar);
        this.f13854c.h();
    }
}
