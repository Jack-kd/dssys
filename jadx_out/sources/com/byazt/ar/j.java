package com.byazt.ar;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import com.byazt.fjm.RecyclerView;
import com.byazt.jz.sz;
import com.byazt.xci.mp;
import com.byazt.xci.u;
import com.byazt.xci.x;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR, 38})
/* loaded from: classes2.dex */
public final class j {
    public static boolean hp(int i2) {
        return i2 == 3;
    }

    public static void j(View view) {
        if (view == null) {
            return;
        }
        view.setVisibility(4);
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            try {
                ((ViewGroup) parent).removeView(view);
            } catch (Exception unused) {
            }
        }
    }

    public static ViewGroup jx(View view) {
        Window window;
        Activity activityW = w(view);
        if (activityW != null && (window = activityW.getWindow()) != null) {
            View decorView = window.getDecorView();
            if (decorView instanceof ViewGroup) {
                return (ViewGroup) decorView;
            }
        }
        if (view == null) {
            return null;
        }
        View rootView = view.getRootView();
        if (rootView instanceof ViewGroup) {
            return (ViewGroup) rootView;
        }
        return null;
    }

    public static boolean l(View view) {
        return "androidx.viewpager.widget.ViewPager".equals(view.getClass().getName()) || "androidx.viewpager.widget.ViewPager".equals(view.getClass().getName());
    }

    private static Activity w(View view) {
        if (view == null) {
            return null;
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }

    public static boolean hp(mp mpVar, boolean z2) {
        int iJl = ky.jl(mpVar);
        if (iJl == 5 || iJl == 9) {
            return true;
        }
        return (iJl == 3 || iJl == 4) ? z2 : iJl == 7 || iJl == 8;
    }

    public static boolean hp(View view) {
        if (view == null) {
            return true;
        }
        return sz.l().fe() ? ((view instanceof FrameLayout) || (view instanceof RelativeLayout)) ? false : true : (view instanceof RecyclerView) || (view instanceof AbsListView) || (view instanceof ScrollView) || (view instanceof HorizontalScrollView) || l(view);
    }

    public static void hp(final ViewGroup viewGroup, final View view, final int i2, final int i3, final int i4, final int i5) {
        if (viewGroup == null || view == null || i2 <= 0 || i3 <= 0) {
            return;
        }
        viewGroup.addView(view, new ViewGroup.LayoutParams(0, 0));
        final View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: com.byazt.ar.j.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view2, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13) {
                if (view.getParent() != viewGroup) {
                    return;
                }
                j.hp(view, i4, i5, i2, i3);
            }
        };
        viewGroup.addOnLayoutChangeListener(onLayoutChangeListener);
        view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.byazt.ar.j.2
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
                viewGroup.removeOnLayoutChangeListener(onLayoutChangeListener);
            }
        });
        viewGroup.post(new Runnable() { // from class: com.byazt.ar.j.3
            @Override // java.lang.Runnable
            public void run() {
                if (view.getParent() != viewGroup) {
                    return;
                }
                j.hp(view, i4, i5, i2, i3);
            }
        });
    }

    public static void hp(View view, int i2, int i3, int i4, int i5) {
        if (view == null) {
            return;
        }
        try {
            view.measure(View.MeasureSpec.makeMeasureSpec(i4, C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(i5, C.ENCODING_PCM_32BIT));
            view.layout(i2, i3, i4 + i2, i5 + i3);
            view.invalidate();
        } catch (Throwable unused) {
        }
    }

    public static u hp(boolean[] zArr, float[] fArr, com.byazt.db.hp hpVar, float f2, float f3, double d2) {
        u uVar;
        final double d3;
        u uVarHp = hpVar != null ? u.hp(hpVar.l()) : null;
        if (fArr == null) {
            if (uVarHp == null) {
                return new u(0.0d, 0.0d, xh.j(sz.getContext(), f2), xh.j(sz.getContext(), f3));
            }
            return uVarHp;
        }
        final u uVarHp2 = hp(fArr, f2, f3);
        if (uVarHp == null) {
            return uVarHp2;
        }
        double dHp = u.hp(uVarHp, uVarHp2);
        final double d4 = uVarHp2.jx * uVarHp2.f27553j;
        final double d5 = uVarHp.jx * uVarHp.f27553j;
        final u uVarL = u.l(uVarHp, uVarHp2);
        if (uVarL != null) {
            uVar = null;
            d3 = uVarL.jx * uVarL.f27553j;
        } else {
            uVar = null;
            d3 = 0.0d;
        }
        if (hpVar != null) {
            hpVar.hp(new com.byazt.db.l() { // from class: com.byazt.ar.j.4
                @Override // com.byazt.db.l
                public JSONObject getActualRectJson() {
                    return u.hp(uVarHp2);
                }

                @Override // com.byazt.db.l
                public double getExceedAreaRate() {
                    double d6 = d5;
                    if (d6 <= 0.0d) {
                        return 1.0d;
                    }
                    if (d4 <= 0.0d) {
                        return -1.0d;
                    }
                    return (d3 - d6) / d6;
                }

                @Override // com.byazt.db.l
                public JSONObject getMaxRectJson() {
                    return u.hp(uVarL);
                }
            });
        }
        if (d5 <= 0.0d) {
            zArr[0] = false;
            return uVar;
        }
        if (d4 <= 0.0d) {
            zArr[0] = false;
            return uVar;
        }
        if (dHp / d4 >= d2) {
            return uVarL;
        }
        zArr[0] = false;
        return uVar;
    }

    private static u hp(float[] fArr, float f2, float f3) {
        int iJ = xh.j(sz.getContext(), f2);
        int iJ2 = xh.j(sz.getContext(), f3);
        float f4 = fArr[1];
        float f5 = fArr[0];
        float f6 = (iJ - f4) - fArr[3];
        if (f6 < 0.0f) {
            f6 = 0.0f;
        }
        return new u(f4, f5, f6, (iJ2 - f5) - fArr[2] >= 0.0f ? r14 : 0.0f);
    }

    public static x hp(String str, String str2, String str3, int i2, int i3, int i4) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ugen_md5", str2);
            jSONObject.put("ugen_id", str);
            jSONObject.put("ugen_url", str3);
            jSONObject.put("displayAreaAndroid", i2);
            jSONObject.put("render_sequence", i3);
        } catch (JSONException unused) {
        }
        return new x(jSONObject, i4);
    }

    public static void hp(View view, String str) {
        for (ViewParent parent = view.getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if (str.equals(viewGroup.getTag())) {
                j(viewGroup);
            }
        }
    }
}
