package com.kwad.sdk.core.adlog.c;

import com.kwad.sdk.core.adlog.a;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.track.AdTrackLog;
import com.kwad.sdk.utils.al;

/* loaded from: classes4.dex */
public final class b {
    private final a aMU = new a();

    public final a Jh() {
        return this.aMU;
    }

    public final b aC(long j2) {
        this.aMU.zV = j2;
        return this;
    }

    public final b b(a.C0601a c0601a) {
        this.aMU.QZ = c0601a;
        return this;
    }

    public final b ec(int i2) {
        this.aMU.nm = i2;
        return this;
    }

    public final b ed(int i2) {
        this.aMU.aMh = i2;
        return this;
    }

    public final b ee(int i2) {
        this.aMU.aMi = i2;
        return this;
    }

    public final b ef(int i2) {
        this.aMU.downloadSource = i2;
        return this;
    }

    public final b eg(int i2) {
        this.aMU.aMA = i2;
        return this;
    }

    public final b eh(int i2) {
        this.aMU.aMD = i2;
        return this;
    }

    public final b ei(int i2) {
        this.aMU.aME = i2;
        return this;
    }

    public final b ej(int i2) {
        this.aMU.aMs = i2;
        return this;
    }

    public final b ek(int i2) {
        this.aMU.aMK = i2;
        return this;
    }

    public final b el(int i2) {
        this.aMU.aMO = i2;
        return this;
    }

    public final b em(int i2) {
        this.aMU.dV(i2);
        return this;
    }

    public final b en(int i2) {
        this.aMU.aMQ = i2;
        return this;
    }

    public final b eo(int i2) {
        this.aMU.Rb = i2;
        return this;
    }

    public final b ep(int i2) {
        this.aMU.aMS = i2;
        return this;
    }

    public final b eq(int i2) {
        this.aMU.Ra = i2;
        return this;
    }

    public final b er(int i2) {
        this.aMU.aMv = i2;
        return this;
    }

    public final b f(al.a aVar) {
        this.aMU.no = aVar;
        return this;
    }

    public final b j(double d2) {
        this.aMU.np = d2;
        return this;
    }

    public final b z(int i2, int i3) {
        this.aMU.aMj = i2 + "," + i3;
        return this;
    }

    public final b b(AdTemplate adTemplate, String str, String str2, com.kwad.sdk.g.a<AdTrackLog> aVar) {
        a aVar2 = this.aMU;
        if (aVar2.QZ == null) {
            aVar2.QZ = new a.C0601a();
        }
        this.aMU.QZ.a(adTemplate, str, str2, aVar);
        return this;
    }

    public final b ec(String str) {
        this.aMU.QY = str;
        return this;
    }

    public final b ed(String str) {
        this.aMU.aMB = str;
        return this;
    }

    public final b ee(String str) {
        this.aMU.aMC = str;
        return this;
    }

    public final b ef(String str) {
        this.aMU.aMM = str;
        return this;
    }
}
