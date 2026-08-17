package com.byazt.sy;

import android.animation.FloatEvaluator;
import android.animation.Keyframe;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.text.TextUtils;
import com.byazt.mw.w;
import com.byazt.xa.s;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 483, 38})
/* loaded from: classes3.dex */
public class j extends hp {

    /* renamed from: s, reason: collision with root package name */
    public List<Keyframe> f25622s;

    @com.byazt.kj.hp(hp = {0, 1, 483, 234})
    /* renamed from: com.byazt.sy.j$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[w.values().length];
            hp = iArr;
            try {
                iArr[w.TRANSLATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[w.SCALE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public j(Context context, com.byazt.xs.jx jxVar, String str, Map<Float, String> map) {
        super(context, jxVar, str, map);
        this.f25622s = new ArrayList();
    }

    @Override // com.byazt.sy.hp
    public TypeEvaluator a() {
        return new FloatEvaluator();
    }

    @Override // com.byazt.sy.hp
    public void hp(float f2, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() != 2) {
                return;
            }
            float fOptDouble = (float) jSONArray.optDouble(0);
            float fOptDouble2 = (float) jSONArray.optDouble(1);
            if (this.f25619j == w.TRANSLATE) {
                fOptDouble = s.hp(this.hp, fOptDouble);
                fOptDouble2 = s.hp(this.hp, fOptDouble2);
            }
            this.f25621w.add(Keyframe.ofFloat(f2, fOptDouble));
            this.f25622s.add(Keyframe.ofFloat(f2, fOptDouble2));
        } catch (JSONException unused) {
        }
    }

    @Override // com.byazt.sy.hp
    public void l() {
        Keyframe keyframeOfFloat;
        Keyframe keyframeOfFloat2;
        int i2 = AnonymousClass1.hp[this.f25619j.ordinal()];
        if (i2 == 1) {
            keyframeOfFloat = Keyframe.ofFloat(0.0f, this.eb.zy());
            keyframeOfFloat2 = Keyframe.ofFloat(0.0f, this.eb.k());
        } else if (i2 != 2) {
            keyframeOfFloat = null;
            keyframeOfFloat2 = null;
        } else {
            keyframeOfFloat = Keyframe.ofFloat(0.0f, this.eb.v());
            keyframeOfFloat2 = Keyframe.ofFloat(0.0f, this.eb.u());
        }
        if (keyframeOfFloat != null) {
            this.f25621w.add(keyframeOfFloat);
        }
        if (keyframeOfFloat2 != null) {
            this.f25622s.add(keyframeOfFloat2);
        }
    }

    @Override // com.byazt.sy.hp
    public List<PropertyValuesHolder> w() {
        String strL = this.f25619j.l();
        j();
        PropertyValuesHolder propertyValuesHolderOfKeyframe = PropertyValuesHolder.ofKeyframe(strL + "X", (Keyframe[]) this.f25621w.toArray(new Keyframe[0]));
        this.f25618a.add(propertyValuesHolderOfKeyframe);
        PropertyValuesHolder propertyValuesHolderOfKeyframe2 = PropertyValuesHolder.ofKeyframe(strL + "Y", (Keyframe[]) this.f25622s.toArray(new Keyframe[0]));
        this.f25618a.add(propertyValuesHolderOfKeyframe2);
        TypeEvaluator typeEvaluatorA = a();
        if (typeEvaluatorA != null) {
            propertyValuesHolderOfKeyframe.setEvaluator(typeEvaluatorA);
            propertyValuesHolderOfKeyframe2.setEvaluator(typeEvaluatorA);
        }
        return this.f25618a;
    }
}
