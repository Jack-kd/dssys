package com.byazt.mw;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import com.byazt.mw.jx;
import com.byazt.ps.hp;
import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 512, 28})
/* loaded from: classes3.dex */
public class hp extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public int f23294a = 1;
    public com.byazt.ps.hp eb;
    public com.byazt.xs.jx hp;

    /* renamed from: j, reason: collision with root package name */
    public Context f23295j;
    public ValueAnimator jx;

    /* renamed from: l, reason: collision with root package name */
    public jx f23296l;

    /* renamed from: q, reason: collision with root package name */
    public l f23297q;

    /* renamed from: s, reason: collision with root package name */
    public String f23298s;

    /* renamed from: w, reason: collision with root package name */
    public int f23299w;

    public hp(Context context, com.byazt.xs.jx jxVar, jx jxVar2) {
        this.hp = jxVar;
        this.f23296l = jxVar2;
        this.f23295j = context;
    }

    public void hp() {
        ValueAnimator valueAnimator = this.jx;
        if (valueAnimator == null || this.f23294a == 0 || this.f23299w == Integer.MIN_VALUE) {
            return;
        }
        valueAnimator.start();
    }

    public ValueAnimator j() {
        String key;
        com.byazt.sy.hp jxVar;
        jx jxVar2 = this.f23296l;
        if (jxVar2 == null || this.hp == null) {
            return null;
        }
        Map<String, TreeMap<Float, String>> mapL = jxVar2.l();
        ArrayList arrayList = new ArrayList();
        if (mapL != null && !mapL.isEmpty()) {
            for (Map.Entry<String, TreeMap<Float, String>> entry : mapL.entrySet()) {
                if (entry != null) {
                    key = entry.getKey();
                    String strJx = w.hp(key).jx();
                    strJx.getClass();
                    switch (strJx) {
                        case "int":
                            jxVar = new com.byazt.sy.jx(this.f23295j, this.hp, key, entry.getValue());
                            break;
                        case "float":
                            jxVar = new com.byazt.sy.l(this.f23295j, this.hp, key, entry.getValue());
                            break;
                        case "point":
                            jxVar = new com.byazt.sy.j(this.f23295j, this.hp, key, entry.getValue());
                            break;
                        default:
                            jxVar = null;
                            break;
                    }
                    if (jxVar != null) {
                        arrayList.addAll(jxVar.w());
                    }
                }
            }
        }
        JSONObject jSONObjectHp = this.f23296l.hp();
        if (jSONObjectHp != null) {
            com.byazt.ps.hp hpVarHp = hp.C0343hp.hp(this.hp, jSONObjectHp);
            this.eb = hpVarHp;
            if (hpVarHp != null) {
                arrayList.addAll(hpVarHp.jx());
            }
        }
        final View viewQ = this.hp.q();
        if (viewQ == null) {
            return null;
        }
        final jx.hp hpVarEb = this.f23296l.eb();
        if (hpVarEb != null) {
            viewQ.post(new Runnable() { // from class: com.byazt.mw.hp.1
                @Override // java.lang.Runnable
                public void run() {
                    int width = viewQ.getWidth();
                    int height = viewQ.getHeight();
                    viewQ.setPivotX(j.hp(hpVarEb.hp, width));
                    viewQ.setPivotY(j.hp(hpVarEb.f23308l, height));
                }
            });
        }
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(viewQ, (PropertyValuesHolder[]) arrayList.toArray(new PropertyValuesHolder[0]));
        this.f23299w = j.hp(this.f23296l.j());
        objectAnimatorOfPropertyValuesHolder.setDuration(this.f23296l.jx());
        int i2 = this.f23299w;
        if (i2 != Integer.MIN_VALUE) {
            objectAnimatorOfPropertyValuesHolder.setRepeatCount(i2);
        }
        this.f23294a = this.f23296l.e();
        this.f23298s = this.f23296l.q();
        objectAnimatorOfPropertyValuesHolder.setStartDelay(this.f23296l.a());
        objectAnimatorOfPropertyValuesHolder.setRepeatMode(j.hp(this.f23296l.w()));
        objectAnimatorOfPropertyValuesHolder.setInterpolator(j.l(this.f23296l.s()));
        objectAnimatorOfPropertyValuesHolder.addListener(this);
        this.jx = objectAnimatorOfPropertyValuesHolder;
        return objectAnimatorOfPropertyValuesHolder;
    }

    public void jx() {
        ValueAnimator valueAnimator = this.jx;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    public void l() {
        ValueAnimator valueAnimator = this.jx;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        l lVar = this.f23297q;
        if (lVar != null) {
            lVar.l();
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        super.onAnimationStart(animator);
        l lVar = this.f23297q;
        if (lVar != null) {
            lVar.hp();
        }
    }

    public String w() {
        return this.f23298s;
    }

    public void l(Canvas canvas) {
        com.byazt.ps.hp hpVar = this.eb;
        if (hpVar != null) {
            hpVar.l(canvas);
        }
    }

    public void hp(l lVar) {
        this.f23297q = lVar;
    }

    public void hp(Canvas canvas) {
        com.byazt.ps.hp hpVar = this.eb;
        if (hpVar != null) {
            hpVar.hp(canvas);
        }
    }

    public void hp(int i2, int i3) {
        com.byazt.ps.hp hpVar = this.eb;
        if (hpVar != null) {
            hpVar.hp(i2, i3);
        }
    }
}
