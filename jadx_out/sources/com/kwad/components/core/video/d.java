package com.kwad.components.core.video;

/* loaded from: classes4.dex */
public final class d {
    private boolean anq = false;
    private boolean anr = false;
    private boolean ans = false;
    private boolean ant = false;
    private boolean anu = false;
    private int anv = -1;

    public final void bh(boolean z2) {
        this.ans = z2;
    }

    public final void cb(int i2) {
        this.anv = i2;
    }

    public final void setAd(boolean z2) {
        this.anr = z2;
    }

    public final void setFillXY(boolean z2) {
        this.anu = z2;
    }

    public final void setForce(boolean z2) {
        this.anq = z2;
    }

    public final void setHorizontalVideo(boolean z2) {
        this.ant = z2;
    }

    public final boolean xA() {
        return this.ans;
    }

    public final boolean xB() {
        return this.ant;
    }

    public final boolean xC() {
        return this.anu;
    }

    public final boolean xw() {
        return this.anv > 0;
    }

    public final int xx() {
        return this.anv;
    }

    public final boolean xy() {
        return this.anq;
    }

    public final boolean xz() {
        return this.anr;
    }
}
