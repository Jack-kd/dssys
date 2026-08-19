package com.smartdigimkt.d2;

import android.view.View;
import com.smartdigimkt.r2.m;

/* loaded from: classes5.dex */
public final class e implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f39885a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m f39886b;

    public e(boolean z2, m mVar) {
        this.f39885a = z2;
        this.f39886b = mVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f39885a) {
            this.f39886b.a(1, 40);
        } else {
            this.f39886b.a(1, 24);
        }
    }
}
