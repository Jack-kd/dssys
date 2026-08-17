package com.smartdigimkt.r2;

import android.view.ViewGroup;
import android.widget.ImageView;
import com.smartdigimkt.v1.b3;

/* loaded from: classes5.dex */
public abstract class n {
    public static void a(ImageView imageView, boolean z2) {
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        layoutParams.width = 0;
        if (z2) {
            layoutParams.height = 0;
        }
        imageView.setLayoutParams(layoutParams);
    }

    public static float a(b3 b3Var, boolean z2, com.smartdigimkt.l3.a aVar, boolean z3) {
        int i2;
        com.smartdigimkt.m3.e eVar;
        com.smartdigimkt.m3.e eVar2;
        if (aVar == null || (eVar2 = aVar.f41644r) == null) {
            i2 = 1;
        } else if (z2) {
            i2 = eVar2.f41990z;
        } else {
            i2 = eVar2.f41886Q;
        }
        float f2 = 1.0f;
        if (b3Var != null) {
            if (i2 == 2) {
                f2 = 1.5f;
            } else if (i2 == 3) {
                f2 = 0.75f;
            } else if (i2 == 4) {
                f2 = 0.5f;
            }
            double d2 = (z2 && z3) ? 1.0d : (aVar == null || (eVar = aVar.f41644r) == null) ? 1.0d : eVar.f41965q1;
            b3Var.setClickAreaScaleFactor(f2);
            b3Var.setClickViewAlpha(d2);
        }
        return f2;
    }

    public static boolean a(long j2, com.smartdigimkt.l3.a aVar) {
        long j3;
        com.smartdigimkt.m3.e eVar;
        if (aVar == null || (eVar = aVar.f41644r) == null) {
            j3 = 0;
        } else {
            j3 = eVar.f41968r1;
            if (j3 < 0) {
                return true;
            }
        }
        if (j2 <= 0) {
            return false;
        }
        boolean z2 = System.currentTimeMillis() - j2 > j3;
        System.currentTimeMillis();
        return z2;
    }
}
