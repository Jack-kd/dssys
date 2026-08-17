package com.byazt.uq;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.ek.ThemeStatusBroadcastReceiver;
import com.byazt.fub.gu;
import com.byazt.fub.k;
import com.byazt.fub.zy;
import com.byazt.nw.a;
import com.byazt.nw.s;
import com.bykv.vk.component.ttvideo.TTVideoEngine;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 85, 1515})
/* loaded from: classes3.dex */
public class DynamicRootView extends FrameLayout implements com.byazt.wsc.j, com.byazt.ek.hp {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.thw.hp f26326a;

    /* renamed from: e, reason: collision with root package name */
    public int f26327e;
    public ThemeStatusBroadcastReceiver eb;
    public List<com.byazt.wsc.jx> gu;
    public final k hp;

    /* renamed from: j, reason: collision with root package name */
    public gu f26328j;
    public com.byazt.wsc.w jl;
    public View jx;

    /* renamed from: k, reason: collision with root package name */
    public int f26329k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f26330l;

    /* renamed from: q, reason: collision with root package name */
    public ViewGroup f26331q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.wsc.l f26332s;

    /* renamed from: u, reason: collision with root package name */
    public Context f26333u;

    /* renamed from: v, reason: collision with root package name */
    public zy f26334v;
    public Map<Integer, String> vv;

    /* renamed from: w, reason: collision with root package name */
    public DynamicBaseWidget f26335w;
    public String xs;
    public int zy;

    public DynamicRootView(Context context, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z2, zy zyVar, com.byazt.thw.hp hpVar) {
        super(context);
        this.f26331q = null;
        this.f26327e = 0;
        this.gu = new ArrayList();
        this.zy = 0;
        this.f26329k = 0;
        this.f26333u = context;
        k kVar = new k();
        this.hp = kVar;
        kVar.hp(2);
        this.f26326a = hpVar;
        hpVar.hp(this);
        this.eb = themeStatusBroadcastReceiver;
        themeStatusBroadcastReceiver.hp(this);
        this.f26330l = z2;
        this.f26334v = zyVar;
    }

    @Override // com.byazt.ek.hp
    public void b_(int i2) {
        DynamicBaseWidget dynamicBaseWidget = this.f26335w;
        if (dynamicBaseWidget == null) {
            return;
        }
        dynamicBaseWidget.hp(i2);
    }

    public String getBgColor() {
        return this.xs;
    }

    public Map<Integer, String> getBgMaterialCenterCalcColor() {
        return this.vv;
    }

    public com.byazt.thw.hp getDynamicClickListener() {
        return this.f26326a;
    }

    public int getLogoUnionHeight() {
        return this.zy;
    }

    public gu getRenderListener() {
        return this.f26328j;
    }

    public zy getRenderRequest() {
        return this.f26334v;
    }

    public int getScoreCountWithIcon() {
        return this.f26329k;
    }

    public ViewGroup getTimeOut() {
        return this.f26331q;
    }

    public List<com.byazt.wsc.jx> getTimeOutListener() {
        return this.gu;
    }

    public int getTimedown() {
        return this.f26327e;
    }

    public void hp(s sVar, int i2) {
        this.f26335w = hp(sVar, this, i2);
        this.hp.hp(true);
        this.hp.hp(this.f26335w.f26310w);
        this.hp.l(this.f26335w.f26300a);
        this.hp.hp(this.jx);
        this.f26328j.hp(this.hp);
    }

    public void l() {
        hp(this.f26335w, 4);
    }

    public void setBgColor(String str) {
        this.xs = str;
    }

    public void setBgMaterialCenterCalcColor(Map<Integer, String> map) {
        this.vv = map;
    }

    public void setDislikeView(View view) {
        this.f26326a.l(view);
    }

    public void setLogoUnionHeight(int i2) {
        this.zy = i2;
    }

    public void setMuteListener(com.byazt.wsc.l lVar) {
        this.f26332s = lVar;
    }

    public void setRenderListener(gu guVar) {
        this.f26328j = guVar;
        this.f26326a.hp(guVar);
    }

    public void setScoreCountWithIcon(int i2) {
        this.f26329k = i2;
    }

    @Override // com.byazt.wsc.j
    public void setSoundMute(boolean z2) {
        com.byazt.wsc.l lVar = this.f26332s;
        if (lVar != null) {
            lVar.setSoundMute(z2);
        }
    }

    public void setTimeOut(ViewGroup viewGroup) {
        this.f26331q = viewGroup;
    }

    public void setTimeOutListener(com.byazt.wsc.jx jxVar) {
        this.gu.add(jxVar);
    }

    public void setTimeUpdate(int i2) {
        this.jl.setTimeUpdate(i2);
    }

    public void setTimedown(int i2) {
        this.f26327e = i2;
    }

    public void setVideoListener(com.byazt.wsc.w wVar) {
        this.jl = wVar;
    }

    public DynamicBaseWidget hp(s sVar, ViewGroup viewGroup, int i2) {
        if (sVar == null) {
            return null;
        }
        List<s> listGu = sVar.gu();
        DynamicBaseWidget dynamicBaseWidgetHp = com.byazt.bn.l.hp(this.f26333u, this, sVar);
        if (dynamicBaseWidgetHp instanceof DynamicUnKnowView) {
            hp(i2 == 3 ? 128 : TTVideoEngine.PLAYER_BUFFERING_DATA_OF_MILLISECONDS, "unknow widget");
            return null;
        }
        hp(sVar);
        dynamicBaseWidgetHp.hp();
        if (viewGroup != null) {
            viewGroup.addView(dynamicBaseWidgetHp);
            hp(viewGroup, sVar);
        }
        if (listGu == null || listGu.size() <= 0) {
            return null;
        }
        Iterator<s> it = listGu.iterator();
        while (it.hasNext()) {
            hp(it.next(), dynamicBaseWidgetHp, i2);
        }
        return dynamicBaseWidgetHp;
    }

    private void hp(s sVar) {
        a aVarW;
        com.byazt.nw.w wVarE = sVar.e();
        if (wVarE == null || (aVarW = wVarE.w()) == null) {
            return;
        }
        this.hp.l(aVarW.ld());
    }

    private void hp(ViewGroup viewGroup, s sVar) {
        ViewGroup viewGroup2;
        if (viewGroup == null || (viewGroup2 = (ViewGroup) viewGroup.getParent()) == null || !sVar.b()) {
            return;
        }
        viewGroup2.setClipChildren(false);
        viewGroup2.setClipToPadding(false);
        ViewGroup viewGroup3 = (ViewGroup) viewGroup2.getParent();
        if (viewGroup3 != null) {
            viewGroup3.setClipChildren(false);
            viewGroup3.setClipToPadding(false);
        }
    }

    public void hp(double d2, double d3, double d4, double d5, float f2) {
        this.hp.jx(d2);
        this.hp.j(d3);
        this.hp.w(d4);
        this.hp.a(d5);
        this.hp.hp(f2);
        this.hp.l(f2);
        this.hp.jx(f2);
        this.hp.j(f2);
    }

    public void hp(int i2, String str) {
        this.hp.hp(false);
        this.hp.l(i2);
        this.hp.hp(str);
        this.f26328j.hp(this.hp);
    }

    public void hp() {
        hp(this.f26335w, 0);
    }

    public void hp(DynamicBaseWidget dynamicBaseWidget, int i2) {
        if (dynamicBaseWidget == null) {
            return;
        }
        if (dynamicBaseWidget.getBeginInvisibleAndShow()) {
            dynamicBaseWidget.setVisibility(i2);
            View view = dynamicBaseWidget.f26309v;
            if (view != null) {
                view.setVisibility(i2);
            }
        }
        int childCount = dynamicBaseWidget.getChildCount();
        if (childCount <= 0) {
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            if (dynamicBaseWidget.getChildAt(i3) instanceof DynamicBaseWidget) {
                hp((DynamicBaseWidget) dynamicBaseWidget.getChildAt(i3), i2);
            }
        }
    }

    @Override // com.byazt.wsc.j
    public void hp(CharSequence charSequence, int i2, int i3, boolean z2) {
        for (int i4 = 0; i4 < this.gu.size(); i4++) {
            if (this.gu.get(i4) != null) {
                this.gu.get(i4).hp(charSequence, i2 == 1, i3, z2);
            }
        }
    }
}
