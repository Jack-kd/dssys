package com.qq.e.comm.managers.plugin;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.io.File;

/* loaded from: classes4.dex */
class g {

    /* renamed from: a, reason: collision with root package name */
    private final File f35362a;

    /* renamed from: b, reason: collision with root package name */
    private final File f35363b;

    /* renamed from: c, reason: collision with root package name */
    private String f35364c;

    /* renamed from: d, reason: collision with root package name */
    private int f35365d;

    /* renamed from: e, reason: collision with root package name */
    private String f35366e;

    public g(File file, File file2) {
        this.f35362a = file;
        this.f35363b = file2;
    }

    public boolean a(Context context, boolean z2) {
        try {
            if (this.f35363b.exists() && this.f35362a.exists()) {
                String strA = h.a(this.f35363b);
                this.f35366e = strA;
                if (TextUtils.isEmpty(strA)) {
                    return false;
                }
                String[] strArrSplit = this.f35366e.split("#####");
                if (strArrSplit.length == 2) {
                    String str = strArrSplit[1];
                    int iA = a(strArrSplit[0], 0);
                    if (c.a().a(str, this.f35362a)) {
                        this.f35364c = str;
                        this.f35365d = iA;
                        if (Build.VERSION.SDK_INT < 34 || context == null || context.getApplicationInfo() == null || context.getApplicationInfo().targetSdkVersion < 34 || !z2) {
                            return true;
                        }
                        if (!this.f35362a.canWrite() && !this.f35362a.canExecute()) {
                            return this.f35362a.canRead();
                        }
                        return this.f35362a.setReadOnly();
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public int b() {
        return this.f35365d;
    }

    public String c() {
        return this.f35366e;
    }

    public String a() {
        return this.f35364c;
    }

    public boolean a(File file, File file2, Context context) {
        if (file == null || file2 == null) {
            return false;
        }
        return (file.equals(this.f35362a) || h.a(this.f35362a, file, context, true)) && (file2.equals(this.f35363b) || h.a(this.f35363b, file2, context, false));
    }

    private int a(String str, int i2) {
        try {
            return Integer.parseInt(str);
        } catch (Throwable unused) {
            return i2;
        }
    }
}
