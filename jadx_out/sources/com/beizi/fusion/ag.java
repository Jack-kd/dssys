package com.beizi.fusion;

import android.content.Context;

/* loaded from: classes2.dex */
public abstract class ag {
    public static zc a(Context context, String str, boolean z2) {
        str.getClass();
        switch (str) {
            case "invoke":
                return new eg(context);
            case "sensor":
                if (z2) {
                    return new t8(context);
                }
                return null;
            case "clickslide":
                return new o8(context, true);
            case "opt":
                return new yk(context);
            case "opts":
                return new fo(context);
            case "optt":
                return new ep(context);
            case "click":
                return new eo(context);
            case "mixed":
                if (z2) {
                    return new bi(context);
                }
                return null;
            case "shake":
                if (z2) {
                    return new c1(context);
                }
                return null;
            case "slide":
                return new o8(context, false);
            default:
                return null;
        }
    }
}
