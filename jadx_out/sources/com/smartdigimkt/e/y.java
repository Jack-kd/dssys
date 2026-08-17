package com.smartdigimkt.e;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.smartdigimkt.china.formatbusiness.ui.LeftSkipAsseblemSplashATView;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;

/* loaded from: classes5.dex */
public final class y implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f39973a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RoundImageView f39974b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f39975c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ LeftSkipAsseblemSplashATView f39976d;

    public y(int i2, LeftSkipAsseblemSplashATView leftSkipAsseblemSplashATView, RoundImageView roundImageView, String str) {
        this.f39976d = leftSkipAsseblemSplashATView;
        this.f39973a = str;
        this.f39974b = roundImageView;
        this.f39975c = i2;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (!TextUtils.equals(str, this.f39973a) || this.f39974b == null) {
            return;
        }
        if (bitmap == null || bitmap.isRecycled()) {
            LeftSkipAsseblemSplashATView.a(this.f39975c, this.f39976d, this.f39974b, this.f39973a);
        } else {
            this.f39974b.setImageBitmap(bitmap);
            LeftSkipAsseblemSplashATView.a(this.f39974b);
        }
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
        LeftSkipAsseblemSplashATView.a(this.f39975c, this.f39976d, this.f39974b, this.f39973a);
    }
}
