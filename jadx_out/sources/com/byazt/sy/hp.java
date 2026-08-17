package com.byazt.sy;

import android.animation.Keyframe;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.content.Context;
import com.byazt.mw.w;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

@com.byazt.kj.hp(hp = {0, 1, 483, 28})
/* loaded from: classes3.dex */
public abstract class hp {
    public com.byazt.xs.jx eb;
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public w f25619j;
    public Map<Float, String> jx;

    /* renamed from: l, reason: collision with root package name */
    public String f25620l;

    /* renamed from: a, reason: collision with root package name */
    public List<PropertyValuesHolder> f25618a = new ArrayList();

    /* renamed from: w, reason: collision with root package name */
    public List<Keyframe> f25621w = new ArrayList();

    public hp(Context context, com.byazt.xs.jx jxVar, String str, Map<Float, String> map) {
        this.hp = context;
        this.f25620l = str;
        this.jx = map;
        this.f25619j = w.hp(this.f25620l);
        this.eb = jxVar;
    }

    public abstract TypeEvaluator a();

    public String getType() {
        return this.f25619j.jx();
    }

    public abstract void hp(float f2, String str);

    public boolean hp() {
        Map<Float, String> map = this.jx;
        if (map == null || map.size() <= 0) {
            return false;
        }
        return this.jx.containsKey(Float.valueOf(0.0f));
    }

    public void j() {
        Map<Float, String> map = this.jx;
        if (map == null || map.size() <= 0) {
            return;
        }
        if (!hp()) {
            l();
        }
        for (Map.Entry<Float, String> entry : this.jx.entrySet()) {
            if (entry != null) {
                hp(entry.getKey().floatValue() / 100.0f, entry.getValue());
            }
        }
        jx();
    }

    public void jx() {
        Map<Float, String> map = this.jx;
        if (map == null || map.size() <= 0) {
            return;
        }
        Map<Float, String> map2 = this.jx;
        if (map2 instanceof TreeMap) {
            Float f2 = (Float) ((TreeMap) map2).lastKey();
            if (f2.floatValue() != 100.0f) {
                hp(100.0f, this.jx.get(f2));
            }
        }
    }

    public abstract void l();

    public List<PropertyValuesHolder> w() {
        String strL = this.f25619j.l();
        j();
        PropertyValuesHolder propertyValuesHolderOfKeyframe = PropertyValuesHolder.ofKeyframe(strL, (Keyframe[]) this.f25621w.toArray(new Keyframe[0]));
        TypeEvaluator typeEvaluatorA = a();
        if (typeEvaluatorA != null) {
            propertyValuesHolderOfKeyframe.setEvaluator(typeEvaluatorA);
        }
        this.f25618a.add(propertyValuesHolderOfKeyframe);
        return this.f25618a;
    }
}
