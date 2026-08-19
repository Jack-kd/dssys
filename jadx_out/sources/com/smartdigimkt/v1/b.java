package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.smartdigimkt.sdk.basead.ui.AsseblemCardSplashATView;

/* loaded from: classes5.dex */
public final class b implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AsseblemCardSplashATView f44429a;

    public b(AsseblemCardSplashATView asseblemCardSplashATView) {
        this.f44429a = asseblemCardSplashATView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.f44429a.f43217c.f41814e)) {
            this.f44429a.f43173q0.setImageBitmap(bitmap);
        }
    }
}
