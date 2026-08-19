package com.byazt.fjm;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.fjm.RecyclerView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public abstract class s {
    public final RecyclerView.q hp;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public final Rect f20033l;

    public abstract int a();

    public abstract int a(View view);

    public abstract int eb();

    public abstract int hp(View view);

    public void hp() {
        this.jx = a();
    }

    public abstract void hp(int i2);

    public abstract int j();

    public abstract int j(View view);

    public abstract int jx();

    public abstract int jx(View view);

    public int l() {
        if (Integer.MIN_VALUE == this.jx) {
            return 0;
        }
        return a() - this.jx;
    }

    public abstract int l(View view);

    public abstract int s();

    public abstract int w();

    public abstract int w(View view);

    private s(RecyclerView.q qVar) {
        this.jx = Integer.MIN_VALUE;
        this.f20033l = new Rect();
        this.hp = qVar;
    }

    public static s hp(RecyclerView.q qVar, int i2) {
        if (i2 == 0) {
            return hp(qVar);
        }
        if (i2 == 1) {
            return l(qVar);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public static s l(RecyclerView.q qVar) {
        return new s(qVar) { // from class: com.byazt.fjm.s.2
            @Override // com.byazt.fjm.s
            public int a(View view) {
                RecyclerView.e eVar = (RecyclerView.e) view.getLayoutParams();
                return this.hp.w(view) + ((ViewGroup.MarginLayoutParams) eVar).leftMargin + ((ViewGroup.MarginLayoutParams) eVar).rightMargin;
            }

            @Override // com.byazt.fjm.s
            public int eb() {
                return this.hp.d();
            }

            @Override // com.byazt.fjm.s
            public void hp(int i2) {
                this.hp.e(i2);
            }

            @Override // com.byazt.fjm.s
            public int j() {
                return this.hp.cx() - this.hp.d();
            }

            @Override // com.byazt.fjm.s
            public int jx() {
                return this.hp.di();
            }

            @Override // com.byazt.fjm.s
            public int l(View view) {
                return this.hp.e(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.e) view.getLayoutParams())).bottomMargin;
            }

            @Override // com.byazt.fjm.s
            public int s() {
                return this.hp.n();
            }

            @Override // com.byazt.fjm.s
            public int w() {
                return this.hp.cx();
            }

            @Override // com.byazt.fjm.s
            public int hp(View view) {
                return this.hp.s(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.e) view.getLayoutParams())).topMargin;
            }

            @Override // com.byazt.fjm.s
            public int j(View view) {
                this.hp.hp(view, true, this.f20033l);
                return this.f20033l.top;
            }

            @Override // com.byazt.fjm.s
            public int jx(View view) {
                this.hp.hp(view, true, this.f20033l);
                return this.f20033l.bottom;
            }

            @Override // com.byazt.fjm.s
            public int w(View view) {
                RecyclerView.e eVar = (RecyclerView.e) view.getLayoutParams();
                return this.hp.a(view) + ((ViewGroup.MarginLayoutParams) eVar).topMargin + ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
            }

            @Override // com.byazt.fjm.s
            public int a() {
                return (this.hp.cx() - this.hp.di()) - this.hp.d();
            }
        };
    }

    public static s hp(RecyclerView.q qVar) {
        return new s(qVar) { // from class: com.byazt.fjm.s.1
            @Override // com.byazt.fjm.s
            public int a(View view) {
                RecyclerView.e eVar = (RecyclerView.e) view.getLayoutParams();
                return this.hp.a(view) + ((ViewGroup.MarginLayoutParams) eVar).topMargin + ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
            }

            @Override // com.byazt.fjm.s
            public int eb() {
                return this.hp.o();
            }

            @Override // com.byazt.fjm.s
            public void hp(int i2) {
                this.hp.q(i2);
            }

            @Override // com.byazt.fjm.s
            public int j() {
                return this.hp.ns() - this.hp.o();
            }

            @Override // com.byazt.fjm.s
            public int jx() {
                return this.hp.b();
            }

            @Override // com.byazt.fjm.s
            public int l(View view) {
                return this.hp.q(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.e) view.getLayoutParams())).rightMargin;
            }

            @Override // com.byazt.fjm.s
            public int s() {
                return this.hp.sz();
            }

            @Override // com.byazt.fjm.s
            public int w() {
                return this.hp.ns();
            }

            @Override // com.byazt.fjm.s
            public int hp(View view) {
                return this.hp.eb(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.e) view.getLayoutParams())).leftMargin;
            }

            @Override // com.byazt.fjm.s
            public int j(View view) {
                this.hp.hp(view, true, this.f20033l);
                return this.f20033l.left;
            }

            @Override // com.byazt.fjm.s
            public int jx(View view) {
                this.hp.hp(view, true, this.f20033l);
                return this.f20033l.right;
            }

            @Override // com.byazt.fjm.s
            public int w(View view) {
                RecyclerView.e eVar = (RecyclerView.e) view.getLayoutParams();
                return this.hp.w(view) + ((ViewGroup.MarginLayoutParams) eVar).leftMargin + ((ViewGroup.MarginLayoutParams) eVar).rightMargin;
            }

            @Override // com.byazt.fjm.s
            public int a() {
                return (this.hp.ns() - this.hp.b()) - this.hp.o();
            }
        };
    }
}
