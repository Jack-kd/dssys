package com.byazt.sy;

import android.animation.FloatEvaluator;
import android.animation.Keyframe;
import android.animation.TypeEvaluator;
import android.content.Context;
import com.byazt.mw.w;
import com.byazt.xa.s;
import java.util.TreeMap;

@com.byazt.kj.hp(hp = {0, 1, 483, 34})
/* loaded from: classes3.dex */
public class l extends hp {

    @com.byazt.kj.hp(hp = {0, 1, 483, 22})
    /* renamed from: com.byazt.sy.l$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[w.values().length];
            hp = iArr;
            try {
                iArr[w.TRANSLATE_X.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[w.TRANSLATE_Y.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                hp[w.SCALE_X.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                hp[w.SCALE_Y.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                hp[w.ROTATE_X.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                hp[w.ROTATE_Y.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                hp[w.ROTATE_Z.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                hp[w.ALPHA.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                hp[w.BORDER_RADIUS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public l(Context context, com.byazt.xs.jx jxVar, String str, TreeMap<Float, String> treeMap) {
        super(context, jxVar, str, treeMap);
    }

    @Override // com.byazt.sy.hp
    public TypeEvaluator a() {
        return new FloatEvaluator();
    }

    @Override // com.byazt.sy.hp
    public void hp(float f2, String str) {
        this.f25621w.add(Keyframe.ofFloat(f2, (this.f25620l.startsWith(w.TRANSLATE.hp()) || this.f25619j == w.BORDER_RADIUS) ? s.hp(this.hp, com.byazt.xa.jx.hp(str, 0.0f)) : com.byazt.xa.jx.hp(str, 0.0f)));
    }

    @Override // com.byazt.sy.hp
    public void l() {
        float fZy;
        switch (AnonymousClass1.hp[this.f25619j.ordinal()]) {
            case 1:
                fZy = this.eb.zy();
                break;
            case 2:
                fZy = this.eb.k();
                break;
            case 3:
                fZy = this.eb.v();
                break;
            case 4:
                fZy = this.eb.u();
                break;
            case 5:
                fZy = this.eb.xs();
                if (this.eb.q() != null) {
                    this.eb.q().setCameraDistance(10000.0f);
                    break;
                }
                break;
            case 6:
                fZy = this.eb.vv();
                if (this.eb.q() != null) {
                    this.eb.q().setCameraDistance(10000.0f);
                    break;
                }
                break;
            case 7:
                fZy = this.eb.ec();
                break;
            case 8:
                fZy = this.eb.sz();
                break;
            case 9:
                fZy = this.eb.n();
                break;
            default:
                fZy = 0.0f;
                break;
        }
        this.f25621w.add(Keyframe.ofFloat(0.0f, fZy));
    }
}
