package com.byazt.mo;

import android.graphics.PointF;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SPILT_VOICE_WRITE, 42})
/* loaded from: classes3.dex */
public class k {
    public final List<com.byazt.yg.hp> hp;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public PointF f23116l;

    public k(PointF pointF, boolean z2, List<com.byazt.yg.hp> list) {
        this.f23116l = pointF;
        this.jx = z2;
        this.hp = new ArrayList(list);
    }

    public void hp(float f2, float f3) {
        if (this.f23116l == null) {
            this.f23116l = new PointF();
        }
        this.f23116l.set(f2, f3);
    }

    public List<com.byazt.yg.hp> jx() {
        return this.hp;
    }

    public boolean l() {
        return this.jx;
    }

    public String toString() {
        return "ShapeData{numCurves=" + this.hp.size() + "closed=" + this.jx + '}';
    }

    public PointF hp() {
        return this.f23116l;
    }

    public k() {
        this.hp = new ArrayList();
    }

    public void hp(boolean z2) {
        this.jx = z2;
    }

    public void hp(k kVar, k kVar2, float f2) {
        if (this.f23116l == null) {
            this.f23116l = new PointF();
        }
        this.jx = kVar.l() || kVar2.l();
        if (kVar.jx().size() != kVar2.jx().size()) {
            com.byazt.ze.a.l("Curves must have the same number of control points. Shape 1: " + kVar.jx().size() + "\tShape 2: " + kVar2.jx().size());
        }
        int iMin = Math.min(kVar.jx().size(), kVar2.jx().size());
        if (this.hp.size() < iMin) {
            for (int size = this.hp.size(); size < iMin; size++) {
                this.hp.add(new com.byazt.yg.hp());
            }
        } else if (this.hp.size() > iMin) {
            for (int size2 = this.hp.size() - 1; size2 >= iMin; size2--) {
                List<com.byazt.yg.hp> list = this.hp;
                list.remove(list.size() - 1);
            }
        }
        PointF pointFHp = kVar.hp();
        PointF pointFHp2 = kVar2.hp();
        hp(com.byazt.ze.q.hp(pointFHp.x, pointFHp2.x, f2), com.byazt.ze.q.hp(pointFHp.y, pointFHp2.y, f2));
        for (int size3 = this.hp.size() - 1; size3 >= 0; size3--) {
            com.byazt.yg.hp hpVar = kVar.jx().get(size3);
            com.byazt.yg.hp hpVar2 = kVar2.jx().get(size3);
            PointF pointFHp3 = hpVar.hp();
            PointF pointFL = hpVar.l();
            PointF pointFJx = hpVar.jx();
            PointF pointFHp4 = hpVar2.hp();
            PointF pointFL2 = hpVar2.l();
            PointF pointFJx2 = hpVar2.jx();
            this.hp.get(size3).hp(com.byazt.ze.q.hp(pointFHp3.x, pointFHp4.x, f2), com.byazt.ze.q.hp(pointFHp3.y, pointFHp4.y, f2));
            this.hp.get(size3).l(com.byazt.ze.q.hp(pointFL.x, pointFL2.x, f2), com.byazt.ze.q.hp(pointFL.y, pointFL2.y, f2));
            this.hp.get(size3).jx(com.byazt.ze.q.hp(pointFJx.x, pointFJx2.x, f2), com.byazt.ze.q.hp(pointFJx.y, pointFJx2.y, f2));
        }
    }
}
