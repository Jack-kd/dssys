package com.umeng.analytics.pro;

import android.text.TextUtils;

/* loaded from: classes5.dex */
public class am {

    /* renamed from: a, reason: collision with root package name */
    private String f48666a;

    /* renamed from: e, reason: collision with root package name */
    private boolean f48670e = false;

    /* renamed from: d, reason: collision with root package name */
    private int f48669d = -1;

    /* renamed from: c, reason: collision with root package name */
    private int f48668c = -1;

    /* renamed from: b, reason: collision with root package name */
    private int f48667b = -1;

    public am(String str) {
        this.f48666a = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a();
    }

    private void a() {
        try {
            if (!this.f48666a.contains("-")) {
                this.f48669d = Integer.valueOf(this.f48666a).intValue();
                this.f48670e = false;
                return;
            }
            String[] strArrSplit = this.f48666a.split("-");
            if (strArrSplit.length == 2) {
                this.f48667b = Integer.valueOf(strArrSplit[0]).intValue();
                int iIntValue = Integer.valueOf(strArrSplit[1]).intValue();
                this.f48668c = iIntValue;
                if (this.f48667b < 1) {
                    this.f48667b = 1;
                }
                if (iIntValue > 24) {
                    this.f48668c = 24;
                }
            }
            this.f48670e = true;
        } catch (Throwable unused) {
        }
    }

    public boolean a(int i2) {
        int i3;
        if (this.f48670e) {
            int i4 = this.f48667b;
            return i4 != -1 && (i3 = this.f48668c) != -1 && i2 >= i4 && i2 <= i3;
        }
        int i5 = this.f48669d;
        return i5 != -1 && i2 == i5;
    }
}
