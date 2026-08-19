package com.sigmob.sdk.nativead;

import android.content.Context;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.windad.natives.WindNativeAdData;

/* renamed from: com.sigmob.sdk.nativead.s, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1362s extends C1357m {

    /* renamed from: g, reason: collision with root package name */
    ac f38476g;

    public C1362s(Context context) {
        super(context);
    }

    public void a(ac acVar) {
        this.f38476g = acVar;
    }

    @Override // com.sigmob.sdk.nativead.C1357m
    public void c() {
        super.c();
        this.f38476g = null;
    }

    public void e() {
    }

    public C1349e getAdConfig() {
        ac acVar = this.f38476g;
        if (acVar == null) {
            return null;
        }
        return acVar.y();
    }

    public BaseAdUnit getAdUnit() {
        ac acVar = this.f38476g;
        if (acVar == null) {
            return null;
        }
        return acVar.k();
    }

    public C1358n getAppInfoView() {
        ac acVar = this.f38476g;
        if (acVar == null) {
            return null;
        }
        return acVar.m();
    }

    public WindNativeAdData getNativeAdUnit() {
        ac acVar = this.f38476g;
        if (acVar == null) {
            return null;
        }
        return acVar.l();
    }

    public double getVideoDuration() {
        return 0.0d;
    }

    public double getVideoProgress() {
        return 0.0d;
    }

    public void i() {
    }

    public void j() {
    }

    public void setUIStyle(EnumC1354j enumC1354j) {
        this.f38417d = enumC1354j;
    }
}
