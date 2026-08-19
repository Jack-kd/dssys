package com.byazt.pe;

import android.view.View;
import android.view.ViewGroup;
import com.byazt.pe.YogaLayout;
import com.byazt.yn.e;
import com.byazt.yn.eb;
import com.byazt.yn.gu;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN, 2426})
/* loaded from: classes3.dex */
public class VirtualYogaLayout extends ViewGroup {
    public final List<View> hp;
    public final e jx;

    /* renamed from: l, reason: collision with root package name */
    public final Map<View, e> f24350l;

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof VirtualYogaLayout) {
            VirtualYogaLayout virtualYogaLayout = (VirtualYogaLayout) view;
            virtualYogaLayout.hp(this);
            e yogaNode = virtualYogaLayout.getYogaNode();
            e eVar = this.jx;
            eVar.hp(yogaNode, eVar.hp());
            return;
        }
        e eVarHp = gu.hp();
        YogaLayout.hp(new YogaLayout.hp(layoutParams), eVarHp, view);
        eVarHp.hp(view);
        eVarHp.hp((eb) new YogaLayout.l());
        e eVar2 = this.jx;
        eVar2.hp(eVarHp, eVar2.hp());
        hp(view, eVarHp);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof YogaLayout.hp;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new YogaLayout.hp(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new YogaLayout.hp(layoutParams);
    }

    public e getYogaNode() {
        return this.jx;
    }

    public void hp(View view, e eVar) {
        this.hp.add(view);
        this.f24350l.put(view, eVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        throw new RuntimeException("Attempting to layout a VirtualYogaLayout");
    }

    public void hp(ViewGroup viewGroup) {
        if (viewGroup instanceof VirtualYogaLayout) {
            for (View view : this.hp) {
                ((VirtualYogaLayout) viewGroup).hp(view, this.f24350l.get(view));
            }
        } else if (viewGroup instanceof YogaLayout) {
            for (View view2 : this.hp) {
                ((YogaLayout) viewGroup).hp(view2, this.f24350l.get(view2));
            }
        } else {
            throw new RuntimeException("VirtualYogaLayout cannot transfer children to ViewGroup of type " + viewGroup.getClass().getCanonicalName() + ".  Must either be a VirtualYogaLayout or a YogaLayout.");
        }
        this.hp.clear();
    }
}
