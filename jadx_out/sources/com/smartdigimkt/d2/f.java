package com.smartdigimkt.d2;

import android.view.View;
import com.smartdigimkt.r2.m;

/* loaded from: classes5.dex */
public final class f implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f39887a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m f39888b;

    public f(boolean z2, m mVar) {
        this.f39887a = z2;
        this.f39888b = mVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f39887a) {
            this.f39888b.a(1, 41);
        } else {
            this.f39888b.a(1, 25);
        }
    }
}
