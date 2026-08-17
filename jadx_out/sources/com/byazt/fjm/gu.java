package com.byazt.fjm;

import android.view.View;
import com.byazt.fjm.RecyclerView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes2.dex */
public abstract class gu extends RecyclerView.a {

    /* renamed from: s, reason: collision with root package name */
    public boolean f19978s = true;

    public final void e(RecyclerView.cx cxVar) {
        a(cxVar);
    }

    @Override // com.byazt.fjm.RecyclerView.a
    public boolean eb(RecyclerView.cx cxVar) {
        return !this.f19978s || cxVar.k();
    }

    public abstract boolean hp(RecyclerView.cx cxVar);

    public abstract boolean hp(RecyclerView.cx cxVar, int i2, int i3, int i4, int i5);

    @Override // com.byazt.fjm.RecyclerView.a
    public boolean hp(RecyclerView.cx cxVar, RecyclerView.a.l lVar, RecyclerView.a.l lVar2) {
        int i2 = lVar.hp;
        int i3 = lVar.f19918l;
        View view = cxVar.hp;
        int left = lVar2 == null ? view.getLeft() : lVar2.hp;
        int top = lVar2 == null ? view.getTop() : lVar2.f19918l;
        if (cxVar.xs() || (i2 == left && i3 == top)) {
            return hp(cxVar);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return hp(cxVar, i2, i3, left, top);
    }

    public abstract boolean hp(RecyclerView.cx cxVar, RecyclerView.cx cxVar2, int i2, int i3, int i4, int i5);

    @Override // com.byazt.fjm.RecyclerView.a
    public boolean jx(RecyclerView.cx cxVar, RecyclerView.a.l lVar, RecyclerView.a.l lVar2) {
        int i2 = lVar.hp;
        int i3 = lVar2.hp;
        if (i2 != i3 || lVar.f19918l != lVar2.f19918l) {
            return hp(cxVar, i2, lVar.f19918l, i3, lVar2.f19918l);
        }
        q(cxVar);
        return false;
    }

    public abstract boolean l(RecyclerView.cx cxVar);

    @Override // com.byazt.fjm.RecyclerView.a
    public boolean l(RecyclerView.cx cxVar, RecyclerView.a.l lVar, RecyclerView.a.l lVar2) {
        int i2;
        int i3;
        return (lVar == null || ((i2 = lVar.hp) == (i3 = lVar2.hp) && lVar.f19918l == lVar2.f19918l)) ? l(cxVar) : hp(cxVar, i2, lVar.f19918l, i3, lVar2.f19918l);
    }

    public final void q(RecyclerView.cx cxVar) {
        a(cxVar);
    }

    public final void s(RecyclerView.cx cxVar) {
        a(cxVar);
    }

    @Override // com.byazt.fjm.RecyclerView.a
    public boolean hp(RecyclerView.cx cxVar, RecyclerView.cx cxVar2, RecyclerView.a.l lVar, RecyclerView.a.l lVar2) {
        int i2;
        int i3;
        int i4 = lVar.hp;
        int i5 = lVar.f19918l;
        if (cxVar2.R_()) {
            int i6 = lVar.hp;
            i3 = lVar.f19918l;
            i2 = i6;
        } else {
            i2 = lVar2.hp;
            i3 = lVar2.f19918l;
        }
        return hp(cxVar, cxVar2, i4, i5, i2, i3);
    }

    public final void hp(RecyclerView.cx cxVar, boolean z2) {
        a(cxVar);
    }
}
