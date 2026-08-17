package com.byazt.ar;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.byazt.jz.sz;
import com.byazt.xci.mp;
import com.byazt.xci.u;
import com.byazt.xci.x;
import com.byazt.xci.zy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR, 34})
/* loaded from: classes2.dex */
public abstract class l {
    public mp hp;

    /* renamed from: j, reason: collision with root package name */
    public EasyPlayableContainer f18136j;
    public com.byazt.db.hp jx;

    /* renamed from: l, reason: collision with root package name */
    public hp f18137l;

    public l(mp mpVar, hp hpVar) {
        this.hp = mpVar;
        this.f18137l = hpVar;
    }

    public abstract eb hp();

    public abstract zy l();

    public void hp(com.byazt.pt.l lVar) {
        com.byazt.db.hp hpVar = this.jx;
        if (hpVar != null) {
            hpVar.hp(lVar);
        }
    }

    public void hp(final ViewGroup viewGroup, final View view, final View view2, final float[] fArr) throws JSONException {
        final HashMap map = new HashMap();
        final zy zyVarL = l();
        if (viewGroup == null || view == null) {
            com.byazt.rk.a.jx(com.byazt.gy.eb.hp(this.hp), 2);
            jx.l(this.hp, zyVarL, false, 101, null);
        } else if (view2 == null) {
            com.byazt.rk.a.jx(com.byazt.gy.eb.hp(this.hp), 2);
            jx.l(this.hp, zyVarL, false, 102, null);
        } else {
            view.post(new Runnable() { // from class: com.byazt.ar.l.1
                @Override // java.lang.Runnable
                public void run() throws JSONException {
                    u uVarHp;
                    zy zyVar = zyVarL;
                    if (zyVar == null) {
                        return;
                    }
                    if (zyVar.l()) {
                        boolean[] zArr = {true};
                        uVarHp = j.hp(zArr, fArr, l.this.jx, view.getWidth(), view.getHeight(), 0.8d);
                        if (!zArr[0]) {
                            com.byazt.rk.a.jx(com.byazt.gy.eb.hp(l.this.hp), 2);
                            l lVar = l.this;
                            lVar.hp(lVar.jx);
                            return;
                        }
                    } else {
                        uVarHp = null;
                    }
                    u uVar = uVarHp;
                    if (view2.getParent() != null) {
                        ((ViewGroup) view2.getParent()).removeView(view2);
                    }
                    l.this.f18136j = new EasyPlayableContainer(sz.getContext(), l.this.hp(), uVar, l.this.hp, zyVarL);
                    zy zyVar2 = zyVarL;
                    if (zyVar2 instanceof x) {
                        l.this.f18136j.setIfStayTop(((x) zyVar2).a());
                    }
                    int iHp = zyVarL.hp();
                    if (iHp == 1 || iHp == 2) {
                        l.this.f18136j.setTag("easy_play_tag");
                    } else if (iHp == 3) {
                        l.this.f18136j.setTag("overlay_tag");
                    } else if (iHp == 4) {
                        l.this.f18136j.setTag("effects_tag");
                    } else if (iHp == 5) {
                        l.this.f18136j.setTag("fullscreen_tag");
                    }
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(view.getWidth(), view.getHeight());
                    layoutParams.gravity = 17;
                    l.this.f18136j.addView(view2, layoutParams);
                    map.put("container_name", viewGroup.getClass().getName());
                    map.put("enable_layout_restrict", Boolean.valueOf(sz.l().fe()));
                    l lVar2 = l.this;
                    if (!lVar2.hp(viewGroup, view, lVar2.f18136j)) {
                        com.byazt.rk.a.jx(com.byazt.gy.eb.hp(l.this.hp), 2);
                        jx.l(l.this.hp, zyVarL, false, 202, new JSONObject(map));
                        return;
                    }
                    EasyPlayableContainer.hp(viewGroup);
                    if (zyVarL.hp() == 1) {
                        l lVar3 = l.this;
                        lVar3.hp(lVar3.jx, uVar);
                    }
                    com.byazt.rk.a.jx(com.byazt.gy.eb.hp(l.this.hp), 1);
                    jx.hp(l.this.hp, zyVarL, true, new JSONObject(map));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hp(ViewGroup viewGroup, View view, View view2) {
        if (!j.hp(viewGroup) && viewGroup != null && view != null && view2 != null) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            view.getLocationInWindow(iArr);
            viewGroup.getLocationInWindow(iArr2);
            int i2 = iArr[0] - iArr2[0];
            int i3 = iArr[1] - iArr2[1];
            int width = view.getWidth();
            int height = view.getHeight();
            if (width > 0 && height > 0) {
                if (viewGroup instanceof RelativeLayout) {
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(width, height);
                    layoutParams.setMargins(i2, i3, 0, 0);
                    viewGroup.addView(view2, layoutParams);
                } else if (viewGroup instanceof FrameLayout) {
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(width, height);
                    layoutParams2.setMargins(i2, i3, 0, 0);
                    viewGroup.addView(view2, layoutParams2);
                } else {
                    j.hp(viewGroup, view2, width, height, i2, i3);
                }
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.db.hp hpVar, u uVar) throws JSONException {
        if (hpVar != null) {
            hpVar.hp(true, u.hp(uVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.db.hp hpVar) throws JSONException {
        if (hpVar != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("error_code", 1);
            } catch (JSONException e2) {
                e2.getMessage();
            }
            hpVar.hp(false, jSONObject);
        }
    }
}
