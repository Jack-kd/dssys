package com.byazt.bj;

@com.byazt.kj.hp(hp = {0, 1, 1563, 34})
/* loaded from: classes2.dex */
public class l extends com.byazt.za.hp {
    public com.byazt.rt.jx hp;

    public l(com.byazt.rt.jx jxVar) {
        this.hp = jxVar;
    }

    @Override // com.byazt.za.hp
    public String getVideoUrl() {
        com.byazt.rt.jx jxVar = this.hp;
        return jxVar != null ? jxVar.getVideoUrl() : "";
    }

    @Override // com.byazt.za.hp
    public void reportVideoAutoStart() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar == null || jxVar.getGMNativeCustomVideoReporter() == null) {
            return;
        }
        this.hp.getGMNativeCustomVideoReporter().l();
    }

    @Override // com.byazt.za.hp
    public void reportVideoBreak(long j2) {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar == null || jxVar.getGMNativeCustomVideoReporter() == null) {
            return;
        }
        this.hp.getGMNativeCustomVideoReporter().jx(j2);
    }

    @Override // com.byazt.za.hp
    public void reportVideoContinue(long j2) {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar == null || jxVar.getGMNativeCustomVideoReporter() == null) {
            return;
        }
        this.hp.getGMNativeCustomVideoReporter().l(j2);
    }

    @Override // com.byazt.za.hp
    public void reportVideoError(long j2, int i2, int i3) {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar == null || jxVar.getGMNativeCustomVideoReporter() == null) {
            return;
        }
        this.hp.getGMNativeCustomVideoReporter().hp(j2, i2, i3);
    }

    @Override // com.byazt.za.hp
    public void reportVideoFinish() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar == null || jxVar.getGMNativeCustomVideoReporter() == null) {
            return;
        }
        this.hp.getGMNativeCustomVideoReporter().hp();
    }

    @Override // com.byazt.za.hp
    public void reportVideoPause(long j2) {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar == null || jxVar.getGMNativeCustomVideoReporter() == null) {
            return;
        }
        this.hp.getGMNativeCustomVideoReporter().hp(j2);
    }

    @Override // com.byazt.za.hp
    public void reportVideoStart() {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar == null || jxVar.getGMNativeCustomVideoReporter() == null) {
            return;
        }
        this.hp.getGMNativeCustomVideoReporter().l();
    }

    @Override // com.byazt.za.hp
    public void reportVideoStartError(int i2, int i3) {
        com.byazt.rt.jx jxVar = this.hp;
        if (jxVar == null || jxVar.getGMNativeCustomVideoReporter() == null) {
            return;
        }
        this.hp.getGMNativeCustomVideoReporter().hp(i2, i3);
    }
}
