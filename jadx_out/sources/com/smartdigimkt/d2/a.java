package com.smartdigimkt.d2;

import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import com.smartdigimkt.sdk.basead.ui.ScanningAnimButton;

/* loaded from: classes5.dex */
public abstract class a implements h {

    /* renamed from: a, reason: collision with root package name */
    public ScanningAnimButton f39881a;

    /* renamed from: b, reason: collision with root package name */
    public ScanningAnimButton f39882b;

    public final void a(Drawable drawable) {
        ScanningAnimButton scanningAnimButton = this.f39881a;
        if (scanningAnimButton == null || drawable == null) {
            return;
        }
        try {
            scanningAnimButton.setBackground(drawable);
        } catch (Throwable unused) {
        }
    }

    @Override // com.smartdigimkt.d2.h
    public void c(ViewGroup viewGroup) {
    }
}
