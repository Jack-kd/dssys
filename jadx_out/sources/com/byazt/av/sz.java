package com.byazt.av;

import android.graphics.PointF;
import android.util.JsonReader;
import android.util.SparseArray;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.lang.ref.WeakReference;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_RESET_SYSTEM_VOLUME})
/* loaded from: classes2.dex */
public class sz {
    public static final Interpolator hp = new LinearInterpolator();

    /* renamed from: l, reason: collision with root package name */
    public static SparseArray<WeakReference<Interpolator>> f18323l;

    private static SparseArray<WeakReference<Interpolator>> hp() {
        if (f18323l == null) {
            f18323l = new SparseArray<>();
        }
        return f18323l;
    }

    /* JADX WARN: Removed duplicated region for block: B:127:0x0263 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0276  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static <T> com.byazt.ch.hp<T> l(com.byazt.na.a r24, android.util.JsonReader r25, float r26, com.byazt.av.kg<T> r27) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 706
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.av.sz.l(com.byazt.na.a, android.util.JsonReader, float, com.byazt.av.kg):com.byazt.ch.hp");
    }

    private static WeakReference<Interpolator> hp(int i2) {
        WeakReference<Interpolator> weakReference;
        synchronized (sz.class) {
            weakReference = hp().get(i2);
        }
        return weakReference;
    }

    private static void hp(int i2, WeakReference<Interpolator> weakReference) {
        synchronized (sz.class) {
            f18323l.put(i2, weakReference);
        }
    }

    public static <T> com.byazt.ch.hp<T> hp(JsonReader jsonReader, com.byazt.na.a aVar, float f2, kg<T> kgVar, boolean z2, boolean z3) throws IOException {
        if (z2 && z3) {
            return l(aVar, jsonReader, f2, kgVar);
        }
        if (z2) {
            return hp(aVar, jsonReader, f2, kgVar);
        }
        return hp(jsonReader, f2, kgVar);
    }

    private static <T> com.byazt.ch.hp<T> hp(com.byazt.na.a aVar, JsonReader jsonReader, float f2, kg<T> kgVar) throws IOException {
        Interpolator interpolatorHp;
        jsonReader.beginObject();
        PointF pointFL = null;
        T tL = null;
        T tL2 = null;
        PointF pointFL2 = null;
        PointF pointFL3 = null;
        float fNextDouble = 0.0f;
        boolean z2 = false;
        PointF pointFL4 = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "e":
                    tL = kgVar.l(jsonReader, f2);
                    break;
                case "h":
                    if (jsonReader.nextInt() != 1) {
                        z2 = false;
                        break;
                    } else {
                        z2 = true;
                        break;
                    }
                case "i":
                    pointFL4 = ec.l(jsonReader, 1.0f);
                    break;
                case "o":
                    pointFL = ec.l(jsonReader, 1.0f);
                    break;
                case "s":
                    tL2 = kgVar.l(jsonReader, f2);
                    break;
                case "t":
                    fNextDouble = (float) jsonReader.nextDouble();
                    break;
                case "ti":
                    pointFL3 = ec.l(jsonReader, f2);
                    break;
                case "to":
                    pointFL2 = ec.l(jsonReader, f2);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        if (!z2) {
            if (pointFL != null && pointFL4 != null) {
                interpolatorHp = hp(pointFL, pointFL4);
            }
            com.byazt.ch.hp<T> hpVar = new com.byazt.ch.hp<>(aVar, tL2, tL, interpolatorHp, fNextDouble, null);
            hpVar.f18852s = pointFL2;
            hpVar.f18851q = pointFL3;
            return hpVar;
        }
        tL = tL2;
        interpolatorHp = hp;
        com.byazt.ch.hp<T> hpVar2 = new com.byazt.ch.hp<>(aVar, tL2, tL, interpolatorHp, fNextDouble, null);
        hpVar2.f18852s = pointFL2;
        hpVar2.f18851q = pointFL3;
        return hpVar2;
    }

    private static Interpolator hp(PointF pointF, PointF pointF2) {
        Interpolator linearInterpolator;
        pointF.x = com.byazt.ze.q.l(pointF.x, -1.0f, 1.0f);
        pointF.y = com.byazt.ze.q.l(pointF.y, -100.0f, 100.0f);
        pointF2.x = com.byazt.ze.q.l(pointF2.x, -1.0f, 1.0f);
        float fL = com.byazt.ze.q.l(pointF2.y, -100.0f, 100.0f);
        pointF2.y = fL;
        int iHp = com.byazt.ze.e.hp(pointF.x, pointF.y, pointF2.x, fL);
        WeakReference<Interpolator> weakReferenceHp = com.byazt.na.w.hp() ? null : hp(iHp);
        Interpolator interpolator = weakReferenceHp != null ? weakReferenceHp.get() : null;
        if (weakReferenceHp != null && interpolator != null) {
            return interpolator;
        }
        try {
            linearInterpolator = com.byazt.na.xs.hp(pointF.x, pointF.y, pointF2.x, pointF2.y);
        } catch (IllegalArgumentException e2) {
            if ("The Path cannot loop back on itself.".equals(e2.getMessage())) {
                linearInterpolator = com.byazt.na.xs.hp(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, 0.0f), pointF2.y);
            } else {
                linearInterpolator = new LinearInterpolator();
            }
        }
        if (!com.byazt.na.w.hp()) {
            try {
                hp(iHp, (WeakReference<Interpolator>) new WeakReference(linearInterpolator));
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
        }
        return linearInterpolator;
    }

    private static <T> com.byazt.ch.hp<T> hp(JsonReader jsonReader, float f2, kg<T> kgVar) throws IOException {
        return new com.byazt.ch.hp<>(kgVar.l(jsonReader, f2));
    }
}
