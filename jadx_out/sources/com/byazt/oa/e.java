package com.byazt.oa;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import com.anythink.core.common.m.f;
import com.byazt.oa.gu;
import java.util.LinkedHashSet;
import java.util.Set;

@com.byazt.kj.hp(hp = {0, 1, 149, 45})
/* loaded from: classes3.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public boolean f23876a;

    /* renamed from: e, reason: collision with root package name */
    public k f23877e;
    public boolean eb;
    public com.byazt.ikh.j hp;

    /* renamed from: j, reason: collision with root package name */
    public s f23878j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f23879k;

    /* renamed from: l, reason: collision with root package name */
    public hp f23880l;

    /* renamed from: q, reason: collision with root package name */
    public zy f23881q;

    /* renamed from: s, reason: collision with root package name */
    public boolean f23882s;

    /* renamed from: u, reason: collision with root package name */
    public gu.l f23883u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f23884v;

    /* renamed from: w, reason: collision with root package name */
    public Context f23885w;
    public Looper xs;
    public String jx = "IESJSBridge";
    public String gu = f.bU;
    public final Set<String> jl = new LinkedHashSet();
    public final Set<String> zy = new LinkedHashSet();

    public e(com.byazt.ikh.j jVar) {
        this.hp = jVar;
    }

    private void j() {
        if ((this.hp == null && !this.f23879k && this.f23880l == null) || ((TextUtils.isEmpty(this.jx) && this.hp != null) || this.f23878j == null)) {
            throw new IllegalArgumentException("Requested arguments aren't set properly when building JsBridge.");
        }
    }

    public Context getContext() {
        return this.f23885w;
    }

    public e hp(hp hpVar) {
        this.f23880l = hpVar;
        return this;
    }

    public Looper jx() {
        return this.xs;
    }

    public e l(boolean z2) {
        this.eb = z2;
        return this;
    }

    public e hp(String str) {
        this.jx = str;
        return this;
    }

    public xs l() {
        j();
        return new xs(this);
    }

    public e hp(jl jlVar) {
        this.f23878j = s.hp(jlVar);
        return this;
    }

    public e hp(boolean z2) {
        this.f23876a = z2;
        return this;
    }

    public e hp() {
        this.f23884v = true;
        return this;
    }

    public e() {
    }
}
