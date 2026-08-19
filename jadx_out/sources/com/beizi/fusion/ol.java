package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/* loaded from: classes2.dex */
public class ol {

    /* renamed from: a, reason: collision with root package name */
    private Properties f15468a;

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static ol f15469a = new ol();
    }

    public void a(Context context, String str) throws IOException {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        InputStream inputStreamOpen = null;
        try {
            inputStreamOpen = context.getAssets().open(str);
            Properties properties = new Properties();
            this.f15468a = properties;
            properties.load(inputStreamOpen);
            if (inputStreamOpen != null) {
                be.a((Closeable) inputStreamOpen);
            }
        } catch (IOException unused) {
            if (inputStreamOpen != null) {
                be.a((Closeable) inputStreamOpen);
            }
        } catch (Throwable th) {
            if (inputStreamOpen != null) {
                be.a((Closeable) inputStreamOpen);
            }
            throw th;
        }
    }

    public int b() {
        Properties properties = this.f15468a;
        if (properties == null || !properties.containsKey("logLevel")) {
            return 0;
        }
        return qo.i(this.f15468a.getProperty("logLevel", "0"));
    }

    private ol() {
        if (b.f15469a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static ol a() {
        return b.f15469a;
    }
}
