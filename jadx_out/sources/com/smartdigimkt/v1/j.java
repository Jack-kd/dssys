package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.smartdigimkt.sdk.basead.ui.AsseblemSplashATView;

/* loaded from: classes5.dex */
public final class j implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AsseblemSplashATView f44505a;

    public j(AsseblemSplashATView asseblemSplashATView) {
        this.f44505a = asseblemSplashATView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.f44505a.f43217c.f41814e)) {
            this.f44505a.f43178n0.setImageBitmap(bitmap);
        }
    }
}
