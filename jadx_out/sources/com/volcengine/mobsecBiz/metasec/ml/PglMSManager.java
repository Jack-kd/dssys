package com.volcengine.mobsecBiz.metasec.ml;

import java.util.Map;
import ms.bz.bd.c.Pgl.p0;
import ms.bz.bd.c.Pgl.q0;

/* loaded from: classes5.dex */
public final class PglMSManager implements q0.pgla {

    /* renamed from: a, reason: collision with root package name */
    private final q0.pgla f50634a;

    public PglMSManager(p0 p0Var) {
        this.f50634a = p0Var;
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public Map<String, String> getFeatureHash(String str, byte[] bArr) {
        return this.f50634a.getFeatureHash(str, bArr);
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public String getToken() {
        return this.f50634a.getToken();
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public void report(String str) {
        this.f50634a.report(str);
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public void setBDDeviceID(String str) {
        this.f50634a.setBDDeviceID(str);
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public void setCollectMode(int i2) {
        this.f50634a.setCollectMode(i2);
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public void setDeviceID(String str) {
        this.f50634a.setDeviceID(str);
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public void setInstallID(String str) {
        this.f50634a.setInstallID(str);
    }
}
