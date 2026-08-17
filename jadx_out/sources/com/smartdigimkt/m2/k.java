package com.smartdigimkt.m2;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.QAIncentiveTaskView;

/* loaded from: classes5.dex */
public final class k implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ QAIncentiveTaskView f41765a;

    public k(QAIncentiveTaskView qAIncentiveTaskView) {
        this.f41765a = qAIncentiveTaskView;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        ImageView imageView = this.f41765a.f43999i;
        if (imageView != null) {
            imageView.setImageBitmap(bitmap);
        }
    }
}
