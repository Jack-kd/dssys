package com.byazt.jc;

import com.byazt.jc.jx;

@com.byazt.kj.hp(hp = {0, 1, 692, 28})
/* loaded from: classes.dex */
public abstract class hp implements jx {

    /* renamed from: a, reason: collision with root package name */
    public jx.eb f21277a;
    public jx.InterfaceC0280jx eb;
    public boolean hp = false;

    /* renamed from: j, reason: collision with root package name */
    public jx.hp f21278j;
    public jx.l jx;

    /* renamed from: l, reason: collision with root package name */
    public jx.w f21279l;

    /* renamed from: s, reason: collision with root package name */
    public jx.j f21280s;

    /* renamed from: w, reason: collision with root package name */
    public jx.a f21281w;

    @Override // com.byazt.jc.jx
    public final void hp(jx.w wVar) {
        this.f21279l = wVar;
    }

    public final void j() {
        try {
            jx.a aVar = this.f21281w;
            if (aVar != null) {
                aVar.jx(this);
            }
        } catch (Throwable th) {
            com.byazt.qm.l.hp("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnSeekComplete error: ", th);
        }
    }

    public final void jx() {
        try {
            jx.l lVar = this.jx;
            if (lVar != null) {
                lVar.hp(this);
            }
        } catch (Throwable th) {
            com.byazt.qm.l.hp("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnCompletion error: ", th);
        }
    }

    public final void l() {
        try {
            jx.w wVar = this.f21279l;
            if (wVar != null) {
                wVar.l(this);
            }
        } catch (Throwable th) {
            com.byazt.qm.l.hp("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnPrepared error: ", th);
        }
    }

    @Override // com.byazt.jc.jx
    public final void hp(jx.l lVar) {
        this.jx = lVar;
    }

    @Override // com.byazt.jc.jx
    public final void hp(jx.hp hpVar) {
        this.f21278j = hpVar;
    }

    @Override // com.byazt.jc.jx
    public final void hp(jx.a aVar) {
        this.f21281w = aVar;
    }

    public final boolean l(int i2, int i3) {
        try {
            jx.j jVar = this.f21280s;
            if (jVar != null) {
                if (jVar.l(this, i2, i3)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            com.byazt.qm.l.hp("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnInfo error: ", th);
            return false;
        }
    }

    @Override // com.byazt.jc.jx
    public final void hp(jx.InterfaceC0280jx interfaceC0280jx) {
        this.eb = interfaceC0280jx;
    }

    @Override // com.byazt.jc.jx
    public final void hp(jx.j jVar) {
        this.f21280s = jVar;
    }

    @Override // com.byazt.jc.jx
    public final void hp(jx.eb ebVar) {
        this.f21277a = ebVar;
    }

    public void hp() {
        this.f21279l = null;
        this.f21278j = null;
        this.jx = null;
        this.f21281w = null;
        this.f21277a = null;
        this.eb = null;
        this.f21280s = null;
    }

    public final void hp(int i2) {
        try {
            jx.hp hpVar = this.f21278j;
            if (hpVar != null) {
                hpVar.hp(this, i2);
            }
        } catch (Throwable th) {
            com.byazt.qm.l.hp("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnBufferingUpdate error: ", th);
        }
    }

    public final void hp(int i2, int i3, int i4, int i5) {
        try {
            jx.eb ebVar = this.f21277a;
            if (ebVar != null) {
                ebVar.hp(this, i2, i3, i4, i5);
            }
        } catch (Throwable th) {
            com.byazt.qm.l.hp("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnVideoSizeChanged error: ", th);
        }
    }

    public final boolean hp(int i2, int i3) {
        try {
            jx.InterfaceC0280jx interfaceC0280jx = this.eb;
            if (interfaceC0280jx != null) {
                if (interfaceC0280jx.hp(this, i2, i3)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            com.byazt.qm.l.hp("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnError error: ", th);
            return false;
        }
    }

    @Override // com.byazt.jc.jx
    public void hp(boolean z2) {
        this.hp = z2;
    }
}
