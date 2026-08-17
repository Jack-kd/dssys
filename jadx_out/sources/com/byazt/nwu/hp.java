package com.byazt.nwu;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.byazt.dnb.s;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.ql.q;
import com.byazt.uah.hp;
import com.byazt.vt.UpieImageView;
import com.byazt.xci.d;
import com.byazt.xci.df;
import com.byazt.xci.dy;
import com.byazt.xci.mp;
import com.byazt.xci.vv;
import com.byazt.xci.yr;
import com.umeng.analytics.pro.bv;
import io.flutter.plugin.platform.PlatformPlugin;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1606, 28})
/* loaded from: classes3.dex */
public class hp {
    public static boolean a(mp mpVar) {
        return mpVar != null && mpVar.ja() == 18;
    }

    public static com.byazt.vt.hp e(final mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        return new com.byazt.vt.hp() { // from class: com.byazt.nwu.hp.2
            @Override // com.byazt.vt.hp
            public void hp(Map<String, Object> map) {
                k.hp().hp(mpVar, map.get("duration"));
            }

            @Override // com.byazt.vt.hp
            public void hp(int i2, String str) {
                k.hp().l(mpVar, i2, str);
            }
        };
    }

    public static boolean eb(mp mpVar) {
        int[] iArrW;
        if (mpVar == null || (iArrW = df.w(mpVar)) == null || iArrW.length < 2) {
            return true;
        }
        int i2 = iArrW[0];
        int i3 = iArrW[1];
        int iJ = df.j(mpVar);
        int iJx = df.jx(mpVar);
        return (i2 >= i3 && iJ >= iJx) || (i2 <= i3 && iJ <= iJx);
    }

    private static hp.C0382hp gu(mp mpVar) {
        int[] iArrW = df.w(mpVar);
        vv vvVarMp = mpVar.mp();
        String strJx = vvVarMp != null ? vvVarMp.jx() : null;
        hp.C0382hp c0382hp = new hp.C0382hp();
        if (TextUtils.isEmpty(strJx)) {
            strJx = "";
        }
        hp.C0382hp c0382hpL = c0382hp.hp(strJx).hp((iArrW == null || iArrW.length < 2) ? PlatformPlugin.DEFAULT_SYSTEM_UI : iArrW[0]).l((iArrW == null || iArrW.length < 2) ? 720 : iArrW[1]);
        if (l(mpVar)) {
            com.byazt.tw.hp hpVarXs = df.xs(mpVar);
            c0382hpL.jx(jl(mpVar)).l(hpVarXs != null ? hpVarXs.w() : "").hp(((long) df.eb(mpVar)) * 1000);
        }
        if (j(mpVar)) {
            c0382hpL.jx(jl(mpVar));
        }
        return c0382hpL;
    }

    public static boolean hp(mp mpVar) {
        return l(mpVar) || jx(mpVar);
    }

    public static boolean j(mp mpVar) {
        return w(mpVar) || a(mpVar);
    }

    private static String jl(mp mpVar) {
        List<dy> listVi;
        if (mpVar == null || (listVi = mpVar.vi()) == null || listVi.size() <= 0) {
            return null;
        }
        return listVi.get(0).hp();
    }

    public static boolean jx(mp mpVar) {
        return mpVar != null && mpVar.ja() == 16;
    }

    public static com.byazt.uah.hp q(mp mpVar) throws JSONException {
        if (!j(mpVar) && !hp(mpVar)) {
            return new hp.C0382hp().jx(jl(mpVar)).hp();
        }
        hp.C0382hp c0382hpGu = gu(mpVar);
        JSONObject jSONObjectIj = mpVar.ij();
        if (jSONObjectIj != null) {
            try {
                jSONObjectIj.put(bv.f48923x, "android");
            } catch (JSONException unused) {
            }
        }
        c0382hpGu.hp(jSONObjectIj);
        return c0382hpGu.hp();
    }

    public static boolean s(mp mpVar) {
        if (mpVar != null && !mp.jx(mpVar)) {
            if (j(mpVar)) {
                return true;
            }
            if (!sz.l().rw() && (d.l(mpVar) || d.jx(mpVar) || yr.l(mpVar))) {
                return true;
            }
        }
        return false;
    }

    public static boolean w(mp mpVar) {
        return mpVar != null && mpVar.ja() == 17;
    }

    public static com.byazt.uah.hp hp(mp mpVar, JSONObject jSONObject) throws JSONException {
        hp.C0382hp c0382hpGu = gu(mpVar);
        if (jSONObject != null) {
            try {
                jSONObject.put(bv.f48923x, "android");
            } catch (JSONException unused) {
            }
        }
        c0382hpGu.hp(jSONObject);
        return c0382hpGu.hp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void jx(ImageView imageView, UpieImageView upieImageView) {
        ViewGroup.LayoutParams layoutParams;
        ViewParent parent = imageView.getParent();
        if (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            int i2 = 0;
            while (true) {
                if (i2 >= viewGroup.getChildCount()) {
                    i2 = -1;
                    break;
                } else if (imageView == viewGroup.getChildAt(i2)) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 != -1) {
                if (viewGroup instanceof FrameLayout) {
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(imageView.getWidth(), imageView.getHeight());
                    layoutParams2.gravity = 17;
                    layoutParams = layoutParams2;
                } else if (viewGroup instanceof RelativeLayout) {
                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(imageView.getWidth(), imageView.getHeight());
                    layoutParams3.addRule(13);
                    layoutParams = layoutParams3;
                } else if (viewGroup instanceof LinearLayout) {
                    LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(imageView.getWidth(), imageView.getHeight());
                    layoutParams4.gravity = 17;
                    layoutParams = layoutParams4;
                } else {
                    layoutParams = new ViewGroup.LayoutParams(imageView.getWidth(), imageView.getHeight());
                }
                viewGroup.addView(upieImageView, i2, layoutParams);
                viewGroup.removeView(imageView);
            }
        }
    }

    public static boolean l(mp mpVar) {
        return mpVar != null && mpVar.ja() == 15;
    }

    public static void hp(JSONObject jSONObject, mp mpVar) {
        if (jSONObject != null) {
            if (hp(mpVar) || j(mpVar)) {
                try {
                    jSONObject.put("dynamic_join_type", mpVar.ja());
                } catch (JSONException unused) {
                }
            }
        }
    }

    public static void hp(boolean z2, q.hp hpVar) throws JSONException {
        JSONObject jSONObjectW;
        if (hpVar == null || (jSONObjectW = hpVar.w()) == null || !TextUtils.equals("${image[0].url}", jSONObjectW.optString("src"))) {
            return;
        }
        try {
            if (z2) {
                jSONObjectW.put("type", "UpieImage");
            } else {
                jSONObjectW.put("name", "UpieImage");
            }
        } catch (JSONException unused) {
        }
        hpVar.hp("UpieImage");
    }

    public static void hp(final ImageView imageView, final UpieImageView upieImageView) {
        if (imageView == null || upieImageView == null) {
            return;
        }
        s.hp(new Runnable() { // from class: com.byazt.nwu.hp.1
            @Override // java.lang.Runnable
            public void run() {
                final ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.byazt.nwu.hp.1.1
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public void onGlobalLayout() {
                        int width = imageView.getWidth();
                        int height = imageView.getHeight();
                        if (width <= 90 || height <= 90) {
                            return;
                        }
                        imageView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        hp.jx(imageView, upieImageView);
                    }
                };
                imageView.getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListener);
                imageView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.byazt.nwu.hp.1.2
                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewAttachedToWindow(View view) {
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewDetachedFromWindow(View view) {
                        ImageView imageView2 = imageView;
                        if (imageView2 == view) {
                            imageView2.getViewTreeObserver().removeOnGlobalLayoutListener(onGlobalLayoutListener);
                        }
                    }
                });
            }
        });
    }
}
