package com.smartdigimkt.e;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.smartdigimkt.china.formatbusiness.ui.LeftSkipAsseblemSplashATView;

/* loaded from: classes5.dex */
public final class w implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LeftSkipAsseblemSplashATView f39971a;

    public w(LeftSkipAsseblemSplashATView leftSkipAsseblemSplashATView) {
        this.f39971a = leftSkipAsseblemSplashATView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        LeftSkipAsseblemSplashATView leftSkipAsseblemSplashATView = this.f39971a;
        int i2 = LeftSkipAsseblemSplashATView.f39855s0;
        if (TextUtils.equals(str, leftSkipAsseblemSplashATView.f43217c.f41814e)) {
            this.f39971a.f43178n0.setImageBitmap(bitmap);
        }
    }
}
