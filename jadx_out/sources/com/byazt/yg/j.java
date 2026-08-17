package com.byazt.yg;

import com.byazt.mo.u;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1463, 38})
/* loaded from: classes3.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public final String f27909a;
    public final List<u> hp;

    /* renamed from: j, reason: collision with root package name */
    public final double f27910j;
    public final double jx;

    /* renamed from: l, reason: collision with root package name */
    public final char f27911l;

    /* renamed from: w, reason: collision with root package name */
    public final String f27912w;

    public j(List<u> list, char c2, double d2, double d3, String str, String str2) {
        this.hp = list;
        this.f27911l = c2;
        this.jx = d2;
        this.f27910j = d3;
        this.f27912w = str;
        this.f27909a = str2;
    }

    public static int hp(char c2, String str, String str2) {
        return (((c2 * 31) + str.hashCode()) * 31) + str2.hashCode();
    }

    public int hashCode() {
        return hp(this.f27911l, this.f27909a, this.f27912w);
    }

    public double l() {
        return this.f27910j;
    }

    public List<u> hp() {
        return this.hp;
    }
}
