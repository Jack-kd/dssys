package com.byazt.dt;

import android.view.animation.Interpolator;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1622, 28})
/* loaded from: classes2.dex */
public abstract class hp<K, A> {
    public com.byazt.ch.jx<A> jx;

    /* renamed from: w, reason: collision with root package name */
    public final jx<K> f19269w;
    public final List<InterfaceC0210hp> hp = new ArrayList(1);

    /* renamed from: j, reason: collision with root package name */
    public boolean f19266j = false;

    /* renamed from: l, reason: collision with root package name */
    public float f19267l = 0.0f;

    /* renamed from: a, reason: collision with root package name */
    public A f19265a = null;
    public float eb = -1.0f;

    /* renamed from: s, reason: collision with root package name */
    public float f19268s = -1.0f;

    /* renamed from: com.byazt.dt.hp$hp, reason: collision with other inner class name */
    public interface InterfaceC0210hp {
        void hp();
    }

    @com.byazt.kj.hp(hp = {0, 1, 1622, MediaPlayer.MEDIA_PLAYER_ADAPTIVE_WORK_AROUND_MODE})
    public static final class j<T> implements jx<T> {
        public final List<? extends com.byazt.ch.hp<T>> hp;
        public com.byazt.ch.hp<T> jx = null;

        /* renamed from: j, reason: collision with root package name */
        public float f19270j = -1.0f;

        /* renamed from: l, reason: collision with root package name */
        public com.byazt.ch.hp<T> f19271l = jx(0.0f);

        public j(List<? extends com.byazt.ch.hp<T>> list) {
            this.hp = list;
        }

        private com.byazt.ch.hp<T> jx(float f2) {
            com.byazt.ch.hp<T> hpVar = this.hp.get(r0.size() - 1);
            if (f2 >= hpVar.jx()) {
                return hpVar;
            }
            for (int size = this.hp.size() - 2; size > 0; size--) {
                com.byazt.ch.hp<T> hpVar2 = this.hp.get(size);
                if (this.f19271l != hpVar2 && hpVar2.hp(f2)) {
                    return hpVar2;
                }
            }
            return this.hp.get(0);
        }

        @Override // com.byazt.dt.hp.jx
        public boolean hp() {
            return false;
        }

        @Override // com.byazt.dt.hp.jx
        public float j() {
            return this.hp.get(r0.size() - 1).j();
        }

        @Override // com.byazt.dt.hp.jx
        public com.byazt.ch.hp<T> l() {
            return this.f19271l;
        }

        @Override // com.byazt.dt.hp.jx
        public boolean hp(float f2) {
            if (this.f19271l.hp(f2)) {
                return !this.f19271l.w();
            }
            this.f19271l = jx(f2);
            return true;
        }

        @Override // com.byazt.dt.hp.jx
        public boolean l(float f2) {
            com.byazt.ch.hp<T> hpVar = this.jx;
            com.byazt.ch.hp<T> hpVar2 = this.f19271l;
            if (hpVar == hpVar2 && this.f19270j == f2) {
                return true;
            }
            this.jx = hpVar2;
            this.f19270j = f2;
            return false;
        }

        @Override // com.byazt.dt.hp.jx
        public float jx() {
            return this.hp.get(0).jx();
        }
    }

    public interface jx<T> {
        boolean hp();

        boolean hp(float f2);

        float j();

        float jx();

        com.byazt.ch.hp<T> l();

        boolean l(float f2);
    }

    @com.byazt.kj.hp(hp = {0, 1, 1622, 255})
    public static final class l<T> implements jx<T> {
        private l() {
        }

        @Override // com.byazt.dt.hp.jx
        public boolean hp() {
            return true;
        }

        @Override // com.byazt.dt.hp.jx
        public float j() {
            return 1.0f;
        }

        @Override // com.byazt.dt.hp.jx
        public float jx() {
            return 0.0f;
        }

        @Override // com.byazt.dt.hp.jx
        public com.byazt.ch.hp<T> l() {
            throw new IllegalStateException("not implemented");
        }

        @Override // com.byazt.dt.hp.jx
        public boolean hp(float f2) {
            return false;
        }

        @Override // com.byazt.dt.hp.jx
        public boolean l(float f2) {
            throw new IllegalStateException("not implemented");
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 1622, MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE})
    public static final class w<T> implements jx<T> {
        public final com.byazt.ch.hp<T> hp;

        /* renamed from: l, reason: collision with root package name */
        public float f19272l = -1.0f;

        public w(List<? extends com.byazt.ch.hp<T>> list) {
            this.hp = list.get(0);
        }

        @Override // com.byazt.dt.hp.jx
        public boolean hp() {
            return false;
        }

        @Override // com.byazt.dt.hp.jx
        public float j() {
            return this.hp.j();
        }

        @Override // com.byazt.dt.hp.jx
        public float jx() {
            return this.hp.jx();
        }

        @Override // com.byazt.dt.hp.jx
        public com.byazt.ch.hp<T> l() {
            return this.hp;
        }

        @Override // com.byazt.dt.hp.jx
        public boolean hp(float f2) {
            return !this.hp.w();
        }

        @Override // com.byazt.dt.hp.jx
        public boolean l(float f2) {
            if (this.f19272l == f2) {
                return true;
            }
            this.f19272l = f2;
            return false;
        }
    }

    public hp(List<? extends com.byazt.ch.hp<K>> list) {
        this.f19269w = hp(list);
    }

    private float q() {
        if (this.eb == -1.0f) {
            this.eb = this.f19269w.jx();
        }
        return this.eb;
    }

    public float a() {
        if (this.f19268s == -1.0f) {
            this.f19268s = this.f19269w.j();
        }
        return this.f19268s;
    }

    public A eb() {
        float fJ = j();
        if (this.jx == null && this.f19269w.l(fJ)) {
            return this.f19265a;
        }
        com.byazt.ch.hp<K> hpVarJx = jx();
        Interpolator interpolator = hpVarJx.f18848j;
        A aHp = (interpolator == null || hpVarJx.f18855w == null) ? hp(hpVarJx, w()) : hp(hpVarJx, fJ, interpolator.getInterpolation(fJ), hpVarJx.f18855w.getInterpolation(fJ));
        this.f19265a = aHp;
        return aHp;
    }

    public abstract A hp(com.byazt.ch.hp<K> hpVar, float f2);

    public void hp() {
        this.f19266j = true;
    }

    public float j() {
        if (this.f19266j) {
            return 0.0f;
        }
        com.byazt.ch.hp<K> hpVarJx = jx();
        if (hpVarJx.w()) {
            return 0.0f;
        }
        return (this.f19267l - hpVarJx.jx()) / (hpVarJx.j() - hpVarJx.jx());
    }

    public com.byazt.ch.hp<K> jx() {
        com.byazt.na.w.hp("BaseKeyframeAnimation#getCurrentKeyframe");
        com.byazt.ch.hp<K> hpVarL = this.f19269w.l();
        com.byazt.na.w.l("BaseKeyframeAnimation#getCurrentKeyframe");
        return hpVarL;
    }

    public void l() {
        for (int i2 = 0; i2 < this.hp.size(); i2++) {
            this.hp.get(i2).hp();
        }
    }

    public float s() {
        return this.f19267l;
    }

    public float w() {
        com.byazt.ch.hp<K> hpVarJx = jx();
        if (hpVarJx == null || hpVarJx.w()) {
            return 0.0f;
        }
        return hpVarJx.jx.getInterpolation(j());
    }

    public void hp(InterfaceC0210hp interfaceC0210hp) {
        this.hp.add(interfaceC0210hp);
    }

    public void hp(float f2) {
        if (this.f19269w.hp()) {
            return;
        }
        if (f2 < q()) {
            f2 = q();
        } else if (f2 > a()) {
            f2 = a();
        }
        if (f2 == this.f19267l) {
            return;
        }
        this.f19267l = f2;
        if (this.f19269w.hp(f2)) {
            l();
        }
    }

    public A hp(com.byazt.ch.hp<K> hpVar, float f2, float f3, float f4) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }

    private static <T> jx<T> hp(List<? extends com.byazt.ch.hp<T>> list) {
        if (list.isEmpty()) {
            return new l();
        }
        if (list.size() == 1) {
            return new w(list);
        }
        return new j(list);
    }
}
