package com.beizi.fusion;

import com.beizi.fusion.xi;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class sa implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    protected me f16224a;

    /* renamed from: b, reason: collision with root package name */
    protected boolean f16225b;

    /* renamed from: c, reason: collision with root package name */
    protected ua f16226c;

    /* renamed from: d, reason: collision with root package name */
    private final Set f16227d = new HashSet();

    public sa(me meVar, ua uaVar) {
        this.f16224a = meVar;
        this.f16225b = meVar.d();
        this.f16226c = uaVar;
    }

    private void a(int i2, String str) {
    }

    public void a(pc pcVar) {
        this.f16227d.clear();
        ua uaVar = this.f16226c;
        if (uaVar != null) {
            uaVar.a(pcVar);
        }
    }

    public void a(int i2, InputStream inputStream) {
        this.f16227d.clear();
        ua uaVar = this.f16226c;
        if (uaVar != null) {
            uaVar.a(i2, inputStream);
        }
    }

    public void a(String str) {
        this.f16227d.add(str);
    }

    public void a(String str, int i2) {
        if (this.f16225b) {
            if (this.f16227d.contains(str)) {
                a(xi.a.ERROR_REDIRECT_LOOP);
                return;
            } else {
                this.f16224a = new m9(str, this.f16224a);
                run();
                return;
            }
        }
        a(i2, str);
    }
}
