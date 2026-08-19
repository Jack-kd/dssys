package com.byazt.ono;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.anythink.core.common.f.g;
import com.byazt.dy.w;
import com.byazt.gg.a;
import com.byazt.go.l;
import com.byazt.ql.u;
import com.byazt.ql.v;
import com.byazt.ql.vv;
import com.byazt.xci.ec;
import com.byazt.xci.mp;
import com.byazt.xs.jx;
import com.byazt.zn.xh;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 52, 1755})
/* loaded from: classes3.dex */
public class UgenBanner extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public int f24123a;
    public v hp;

    /* renamed from: j, reason: collision with root package name */
    public final AtomicBoolean f24124j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public View f24125l;

    /* renamed from: w, reason: collision with root package name */
    public WeakReference<ObjectAnimator> f24126w;

    public UgenBanner(Context context) {
        super(context);
        this.f24124j = new AtomicBoolean(false);
    }

    public void l() {
        View view = this.f24125l;
        if (view == null || this.jx) {
            return;
        }
        FrameLayout.LayoutParams layoutParamsGenerateDefaultLayoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        if (layoutParamsGenerateDefaultLayoutParams == null) {
            layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        }
        layoutParamsGenerateDefaultLayoutParams.topMargin = this.f24123a;
        addView(this.f24125l, layoutParamsGenerateDefaultLayoutParams);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f24125l, "translationY", -400.0f, 0.0f);
        objectAnimatorOfFloat.setDuration(600L);
        objectAnimatorOfFloat.start();
        this.f24126w = new WeakReference<>(objectAnimatorOfFloat);
    }

    public void setTopMargin(int i2) {
        this.f24123a = i2;
    }

    public void hp(mp mpVar, l lVar) {
        if (mpVar.v() == null || TextUtils.isEmpty(mpVar.v().jx())) {
            return;
        }
        hp(ec.k(mpVar), mpVar, lVar, mpVar.v().jx(), mpVar.v_(), TextUtils.isEmpty(mpVar.ll()) ? "立即下载" : mpVar.ll(), false);
    }

    public void hp(com.byazt.nqo.hp hpVar, final mp mpVar, final l lVar, final String str, final String str2, final String str3, final boolean z2) {
        if (hpVar == null || this.f24124j.getAndSet(true) || mpVar.nq() == null || TextUtils.isEmpty(mpVar.nq().hp())) {
            return;
        }
        w.hp(hpVar, new w.hp() { // from class: com.byazt.ono.UgenBanner.1
            @Override // com.byazt.dy.w.hp
            public void hp(JSONObject jSONObject) throws JSONException {
                if (jSONObject == null) {
                    return;
                }
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("icon", mpVar.nq().hp());
                    jSONObject2.put("app_name", str);
                    jSONObject2.put(g.a.f3271h, str2);
                    jSONObject2.put("button_text", str3);
                } catch (JSONException unused) {
                }
                UgenBanner ugenBanner = UgenBanner.this;
                ugenBanner.f24125l = ugenBanner.hp(jSONObject, jSONObject2, new vv() { // from class: com.byazt.ono.UgenBanner.1.1
                    @Override // com.byazt.ql.vv
                    public void hp(jx jxVar, String str4, a.hp hpVar2) {
                    }

                    @Override // com.byazt.ql.vv
                    public void hp(u uVar, vv.l lVar2, vv.hp hpVar2) {
                        if (uVar.jx() != null && "banner_click".equals(uVar.jx().optString("type"))) {
                            UgenBanner.this.f24125l.setTag(2114387594, Boolean.TRUE);
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            lVar.hp(UgenBanner.this.f24125l, null);
                            AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                            if (z2) {
                                UgenBanner.this.hp();
                            }
                        }
                    }
                });
            }
        });
        postDelayed(new Runnable() { // from class: com.byazt.ono.UgenBanner.2
            @Override // java.lang.Runnable
            public void run() {
                UgenBanner.this.l();
            }
        }, 3000L);
    }

    public void hp() {
        ObjectAnimator objectAnimator;
        this.jx = true;
        View view = this.f24125l;
        if (view != null) {
            view.setVisibility(8);
        }
        WeakReference<ObjectAnimator> weakReference = this.f24126w;
        if (weakReference == null || (objectAnimator = weakReference.get()) == null) {
            return;
        }
        objectAnimator.cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View hp(JSONObject jSONObject, JSONObject jSONObject2, vv vvVar) throws JSONException {
        v vVar = new v(getContext());
        this.hp = vVar;
        jx<View> jxVarHp = vVar.hp(jSONObject);
        this.hp.hp(vvVar);
        this.hp.l(jSONObject2);
        if (jxVarHp == null) {
            return null;
        }
        View viewQ = jxVarHp.q();
        if (viewQ != null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(jxVarHp.lv(), jxVarHp.r());
            layoutParams.leftMargin = xh.jx(getContext(), 16.0f);
            layoutParams.rightMargin = xh.jx(getContext(), 16.0f);
            viewQ.setLayoutParams(layoutParams);
        }
        return viewQ;
    }
}
