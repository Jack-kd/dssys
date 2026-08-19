package com.byazt.fj;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.byazt.dt.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.VIDEO_INFO_CODE, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes2.dex */
public class u implements e, gu, w, zy, hp.InterfaceC0210hp {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f19862a;

    /* renamed from: e, reason: collision with root package name */
    public j f19863e;
    public final com.byazt.dt.hp<Float, Float> eb;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.at.jx f19864j;
    public final com.byazt.na.s jx;

    /* renamed from: q, reason: collision with root package name */
    public final com.byazt.dt.u f19866q;

    /* renamed from: s, reason: collision with root package name */
    public final com.byazt.dt.hp<Float, Float> f19867s;

    /* renamed from: w, reason: collision with root package name */
    public final String f19868w;
    public final Matrix hp = new Matrix();

    /* renamed from: l, reason: collision with root package name */
    public final Path f19865l = new Path();

    public u(com.byazt.na.s sVar, com.byazt.at.jx jxVar, com.byazt.mo.jl jlVar) {
        this.jx = sVar;
        this.f19864j = jxVar;
        this.f19868w = jlVar.hp();
        this.f19862a = jlVar.w();
        com.byazt.dt.hp<Float, Float> hpVarHp = jlVar.l().hp();
        this.eb = hpVarHp;
        jxVar.hp(hpVarHp);
        hpVarHp.hp(this);
        com.byazt.dt.hp<Float, Float> hpVarHp2 = jlVar.jx().hp();
        this.f19867s = hpVarHp2;
        jxVar.hp(hpVarHp2);
        hpVarHp2.hp(this);
        com.byazt.dt.u uVarE = jlVar.j().e();
        this.f19866q = uVarE;
        uVarE.hp(jxVar);
        uVarE.hp(this);
    }

    @Override // com.byazt.fj.e
    public void hp(ListIterator<jx> listIterator) {
        if (this.f19863e != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add(listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.f19863e = new j(this.jx, this.f19864j, "Repeater", this.f19862a, arrayList, null);
    }

    @Override // com.byazt.fj.zy
    public Path j() {
        Path pathJ = this.f19863e.j();
        this.f19865l.reset();
        float fFloatValue = this.eb.eb().floatValue();
        float fFloatValue2 = this.f19867s.eb().floatValue();
        for (int i2 = ((int) fFloatValue) - 1; i2 >= 0; i2--) {
            this.hp.set(this.f19866q.l(i2 + fFloatValue2));
            this.f19865l.addPath(pathJ, this.hp);
        }
        return this.f19865l;
    }

    @Override // com.byazt.fj.jx
    public void hp(List<jx> list, List<jx> list2) {
        this.f19863e.hp(list, list2);
    }

    @Override // com.byazt.fj.w
    public void hp(Canvas canvas, Matrix matrix, int i2) {
        float fFloatValue = this.eb.eb().floatValue();
        float fFloatValue2 = this.f19867s.eb().floatValue();
        float fFloatValue3 = this.f19866q.l().eb().floatValue() / 100.0f;
        float fFloatValue4 = this.f19866q.jx().eb().floatValue() / 100.0f;
        for (int i3 = ((int) fFloatValue) - 1; i3 >= 0; i3--) {
            this.hp.set(matrix);
            float f2 = i3;
            this.hp.preConcat(this.f19866q.l(f2 + fFloatValue2));
            this.f19863e.hp(canvas, this.hp, (int) (i2 * com.byazt.ze.q.hp(fFloatValue3, fFloatValue4, f2 / fFloatValue)));
        }
    }

    @Override // com.byazt.fj.w
    public void hp(RectF rectF, Matrix matrix, boolean z2) {
        this.f19863e.hp(rectF, matrix, z2);
    }

    @Override // com.byazt.dt.hp.InterfaceC0210hp
    public void hp() {
        this.jx.invalidateSelf();
    }
}
