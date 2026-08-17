package com.kwad.sdk.ip.direct;

/* loaded from: classes4.dex */
public final class c implements Comparable<c> {
    private String ip;
    private boolean success;
    private int weight;
    private float bhp = -1.0f;
    private int bhv = 20;
    private int bhu = 3;
    private StringBuffer bhw = new StringBuffer();

    public c(String str) {
        this.ip = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(c cVar) {
        return (int) (this.bhp - cVar.bhp);
    }

    public final float RA() {
        return this.bhp;
    }

    public final int Rz() {
        return this.bhu;
    }

    public final void cb(boolean z2) {
        this.success = z2;
    }

    public final void fb(int i2) {
        this.weight = i2;
    }

    public final String getIp() {
        return this.ip;
    }

    public final int getWeight() {
        return this.weight;
    }

    public final boolean isSuccess() {
        return this.success;
    }

    public final void r(float f2) {
        this.bhp = f2;
    }

    public final String toString() {
        return "PingNetEntity{ip='" + this.ip + "', pingCount=" + this.bhu + ", pingWaitTime=" + this.bhv + ", pingTime='" + this.bhp + " ms', success=" + this.success + '}';
    }
}
