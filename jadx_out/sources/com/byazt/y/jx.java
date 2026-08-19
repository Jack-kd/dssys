package com.byazt.y;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.SoftReference;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_ERROR, 30})
/* loaded from: classes3.dex */
public class jx<P, R> implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public jx<R, ?> f27853a;
    public P hp;

    /* renamed from: j, reason: collision with root package name */
    public SoftReference<hp<P, R>> f27854j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public R f27855l;

    /* renamed from: w, reason: collision with root package name */
    public jx<?, P> f27856w;

    public interface hp<PARAM, RESULT> {
        RESULT hp(PARAM param);
    }

    private jx(int i2, hp<P, R> hpVar, P p2) {
        this.jx = i2;
        this.f27854j = new SoftReference<>(hpVar);
        this.hp = p2;
    }

    public static <P, R> jx<P, R> hp(hp<P, R> hpVar, P p2) {
        return new jx<>(2, hpVar, p2);
    }

    private R l() {
        return this.f27855l;
    }

    @Override // java.lang.Runnable
    public void run() {
        jx<?, P> jxVar;
        if (this.jx == 0 && !zy.l()) {
            com.byazt.l.s.hp().l().post(this);
            return;
        }
        if (this.jx == 1 && zy.l()) {
            com.byazt.l.w.hp().hp(this);
            return;
        }
        if (this.jx == 2 && zy.l()) {
            com.byazt.l.w.hp().l(this);
            return;
        }
        if (this.hp == null && (jxVar = this.f27856w) != null) {
            this.hp = jxVar.l();
        }
        hp<P, R> hpVar = this.f27854j.get();
        if (hpVar == null) {
            return;
        }
        this.f27855l = hpVar.hp(this.hp);
        jx<R, ?> jxVar2 = this.f27853a;
        if (jxVar2 != null) {
            jxVar2.run();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <NR> jx<R, NR> hp(int i2, hp<R, NR> hpVar) {
        jx jxVar = (jx<R, ?>) new jx(i2, hpVar, null);
        this.f27853a = jxVar;
        jxVar.f27856w = this;
        return jxVar;
    }

    public <NR> jx<R, NR> hp(hp<R, NR> hpVar) {
        return hp(0, hpVar);
    }

    public void hp() {
        jx<?, P> jxVar = this.f27856w;
        if (jxVar != null) {
            jxVar.hp();
        } else {
            run();
        }
    }
}
