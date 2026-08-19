package com.byazt.tf;

import com.byazt.nke.eb;
import com.byazt.nke.s;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 2188, 38})
/* loaded from: classes3.dex */
public class j<T> implements eb {
    public Map<String, String> hp;

    /* renamed from: j, reason: collision with root package name */
    public String f25760j;
    public T jx;

    /* renamed from: l, reason: collision with root package name */
    public int f25761l;

    /* renamed from: w, reason: collision with root package name */
    public s f25762w;

    public j(int i2, T t2, String str) {
        this.f25761l = i2;
        this.jx = t2;
        this.f25760j = str;
    }

    @Override // com.byazt.nke.eb
    public s hp() {
        return this.f25762w;
    }

    @Override // com.byazt.nke.eb
    public String j() {
        return this.f25760j;
    }

    @Override // com.byazt.nke.eb
    public T jx() {
        return this.jx;
    }

    @Override // com.byazt.nke.eb
    public int l() {
        return this.f25761l;
    }

    @Override // com.byazt.nke.eb
    public Map<String, String> w() {
        return this.hp;
    }

    public void hp(s sVar) {
        this.f25762w = sVar;
    }

    public j(int i2, T t2, String str, Map<String, String> map) {
        this(i2, t2, str);
        this.hp = map;
    }
}
