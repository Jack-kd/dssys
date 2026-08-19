package com.baidu.mobads.sdk.internal;

import android.util.Log;
import androidx.annotation.NonNull;
import com.baidu.mobads.sdk.internal.az;

/* loaded from: classes2.dex */
public class aw extends az.a {

    /* renamed from: a, reason: collision with root package name */
    public static final String f11060a = "debug";

    @Override // com.baidu.mobads.sdk.internal.az.a
    @NonNull
    public String a() {
        return f11060a;
    }

    @Override // com.baidu.mobads.sdk.internal.az.a
    public boolean a(String str, int i2) {
        return az.f11077a.equals(str);
    }

    @Override // com.baidu.mobads.sdk.internal.az.a
    public void a(int i2, String str, String str2, Throwable th) {
        a(i2, str, str2);
    }

    private static void a(int i2, String str, String str2) {
        try {
            if (i2 == 7) {
                Log.wtf(str, str2);
            } else {
                Log.println(i2, str, str2);
            }
        } catch (Throwable unused) {
        }
    }
}
