package com.sigmob.sdk.mraid2;

import android.view.View;

/* renamed from: com.sigmob.sdk.mraid2.w, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1344w {

    /* renamed from: a, reason: collision with root package name */
    private final View f38254a;

    public C1344w(View view) {
        this.f38254a = view;
    }

    public int a() {
        return this.f38254a.getLayoutParams().height;
    }

    public int b() {
        return this.f38254a.getLayoutParams().width;
    }

    public void a(int i2) {
        this.f38254a.getLayoutParams().height = i2;
        this.f38254a.requestLayout();
    }

    public void b(int i2) {
        this.f38254a.getLayoutParams().width = i2;
        this.f38254a.requestLayout();
    }
}
