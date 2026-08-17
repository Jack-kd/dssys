package com.byazt.sy;

import android.animation.ArgbEvaluator;
import android.animation.IntEvaluator;
import android.animation.Keyframe;
import android.animation.TypeEvaluator;
import android.content.Context;
import com.byazt.mw.w;
import java.util.TreeMap;

@com.byazt.kj.hp(hp = {0, 1, 483, 30})
/* loaded from: classes3.dex */
public class jx extends hp {
    public jx(Context context, com.byazt.xs.jx jxVar, String str, TreeMap<Float, String> treeMap) {
        super(context, jxVar, str, treeMap);
    }

    @Override // com.byazt.sy.hp
    public TypeEvaluator a() {
        return this.f25619j == w.BACKGROUND_COLOR ? new ArgbEvaluator() : new IntEvaluator();
    }

    @Override // com.byazt.sy.hp
    public void hp(float f2, String str) {
        this.f25621w.add(this.f25619j == w.BACKGROUND_COLOR ? Keyframe.ofInt(f2, com.byazt.xa.hp.hp(str)) : Keyframe.ofInt(f2, com.byazt.xa.jx.hp(str, 0)));
    }

    @Override // com.byazt.sy.hp
    public void l() {
        if (this.f25619j == w.BACKGROUND_COLOR) {
            this.f25621w.add(Keyframe.ofInt(0.0f, this.eb.xh()));
        }
    }
}
