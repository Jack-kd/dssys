package com.byazt.ar;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.xci.mp;
import com.byazt.xci.wv;
import com.byazt.xci.x;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR, 54})
/* loaded from: classes2.dex */
public class a {
    public final mp hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.jt.l f18116j;
    public final List<com.byazt.ib.hp> jx;

    /* renamed from: l, reason: collision with root package name */
    public final hp f18117l;

    /* renamed from: w, reason: collision with root package name */
    public Context f18118w;

    public a(mp mpVar, hp hpVar) {
        this.hp = mpVar;
        this.f18117l = hpVar;
        this.jx = new ArrayList();
    }

    private void l(ViewGroup viewGroup, View view) {
        hp(viewGroup);
        if (view instanceof ViewGroup) {
            hp((ViewGroup) view);
        }
    }

    public void hp(ViewGroup viewGroup, View view) throws JSONException {
        List<x> listJ;
        l(viewGroup, view);
        if (!wv.l(this.hp) || (listJ = wv.j(this.hp)) == null || listJ.isEmpty()) {
            return;
        }
        for (x xVar : listJ) {
            if (xVar != null) {
                jx.hp(this.hp, xVar);
                com.byazt.ib.j jVar = new com.byazt.ib.j(this.hp, this.f18117l, xVar);
                jVar.hp(this.f18116j);
                jVar.hp(this.f18118w);
                jVar.l(viewGroup, xVar.j() == 0 ? viewGroup : view);
                this.jx.add(jVar);
            }
        }
    }

    public a(mp mpVar, hp hpVar, com.byazt.jt.l lVar, Context context) {
        this(mpVar, hpVar);
        this.f18116j = lVar;
        this.f18118w = context;
    }

    private void hp(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return;
        }
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if ("effects_tag".equals(childAt.getTag())) {
                viewGroup.removeView(childAt);
            }
        }
    }

    public void hp() {
        for (com.byazt.ib.hp hpVar : this.jx) {
            if (hpVar != null) {
                hpVar.hp((com.byazt.jt.l) null);
                hpVar.hp((Context) null);
                hpVar.w();
            }
        }
        this.jx.clear();
    }
}
