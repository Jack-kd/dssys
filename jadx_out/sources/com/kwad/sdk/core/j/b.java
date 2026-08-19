package com.kwad.sdk.core.j;

/* loaded from: classes4.dex */
public abstract class b implements c {
    private boolean bbU = false;
    private boolean aba = false;
    private boolean abb = false;

    public abstract void aP();

    public abstract void aQ();

    @Override // com.kwad.sdk.core.j.c
    public final void bA() {
        if (this.bbU && !this.aba) {
            aQ();
            this.aba = true;
        }
    }

    @Override // com.kwad.sdk.core.j.c
    public final void bz() {
        this.bbU = true;
        if (this.abb) {
            return;
        }
        aP();
        this.abb = true;
    }
}
