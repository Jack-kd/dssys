package com.beizi.fusion;

import android.content.Context;
import java.io.File;

/* loaded from: classes2.dex */
public abstract class k4 {
    public static File a(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getCacheDir();
        } catch (Exception unused) {
            return context.getCacheDir();
        }
    }

    public static File b(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getFilesDir();
        } catch (Exception unused) {
            return context.getFilesDir();
        }
    }
}
