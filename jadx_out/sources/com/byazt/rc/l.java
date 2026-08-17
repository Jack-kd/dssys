package com.byazt.rc;

import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MEDIA_CODEC_SIDE_DATA, 34})
/* loaded from: classes3.dex */
public class l implements j, jx, w {

    /* renamed from: a, reason: collision with root package name */
    public hp f25151a;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f25152e;
    public hp eb;
    public int gu;
    public final int hp;

    /* renamed from: l, reason: collision with root package name */
    public final int f25154l;

    /* renamed from: q, reason: collision with root package name */
    public hp f25155q;

    /* renamed from: s, reason: collision with root package name */
    public hp f25156s;

    /* renamed from: w, reason: collision with root package name */
    public hp f25157w;
    public final Object jx = new Object();

    /* renamed from: j, reason: collision with root package name */
    public final Object f25153j = new Object();

    public l(int i2, int i3) {
        i2 = i2 < 64 ? 64 : i2;
        i3 = i3 < 8192 ? 8192 : i3;
        this.hp = i2;
        this.f25154l = i3;
    }

    @Override // com.byazt.rc.j
    @NonNull
    public hp hp() throws InterruptedException, u {
        hp hpVar;
        hp hpVar2 = this.f25155q;
        if (hpVar2 != null) {
            this.f25155q = hpVar2.f25147j;
            hpVar2.f25147j = null;
            return hpVar2;
        }
        synchronized (this.f25153j) {
            try {
                hpVar = this.eb;
                while (hpVar == null) {
                    if (this.f25152e) {
                        throw new u("read");
                    }
                    this.f25153j.wait();
                    hpVar = this.eb;
                }
                this.f25155q = hpVar.f25147j;
                this.f25156s = null;
                this.eb = null;
                hpVar.f25147j = null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return hpVar;
    }

    public void jx() {
        this.f25152e = true;
        synchronized (this.jx) {
            this.jx.notifyAll();
        }
        synchronized (this.f25153j) {
            this.f25153j.notifyAll();
        }
    }

    @Override // com.byazt.rc.jx
    @NonNull
    public hp l() throws InterruptedException, u {
        synchronized (this.jx) {
            try {
                if (this.f25152e) {
                    throw new u("obtain");
                }
                hp hpVar = this.f25157w;
                if (hpVar == null) {
                    int i2 = this.gu;
                    if (i2 < this.hp) {
                        this.gu = i2 + 1;
                        return new hp(this.f25154l);
                    }
                    do {
                        this.jx.wait();
                        if (this.f25152e) {
                            throw new u("obtain");
                        }
                        hpVar = this.f25157w;
                    } while (hpVar == null);
                }
                this.f25157w = hpVar.f25147j;
                if (hpVar == this.f25151a) {
                    this.f25151a = null;
                }
                hpVar.f25147j = null;
                return hpVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.byazt.rc.jx
    public void hp(@NonNull hp hpVar) {
        synchronized (this.jx) {
            try {
                hp hpVar2 = this.f25151a;
                if (hpVar2 == null) {
                    this.f25151a = hpVar;
                    this.f25157w = hpVar;
                } else {
                    hpVar2.f25147j = hpVar;
                    this.f25151a = hpVar;
                }
                this.jx.notify();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.byazt.rc.w
    public void l(@NonNull hp hpVar) {
        synchronized (this.f25153j) {
            try {
                hp hpVar2 = this.f25156s;
                if (hpVar2 == null) {
                    this.f25156s = hpVar;
                    this.eb = hpVar;
                    this.f25153j.notify();
                } else {
                    hpVar2.f25147j = hpVar;
                    this.f25156s = hpVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
