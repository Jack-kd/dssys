package com.smartdigimkt.m2;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;
import com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask.CountDownSkipIncentiveTaskView;

/* loaded from: classes5.dex */
public final class d implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f41757a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CountDownSkipIncentiveTaskView f41758b;

    public d(CountDownSkipIncentiveTaskView countDownSkipIncentiveTaskView, String str) {
        this.f41758b = countDownSkipIncentiveTaskView;
        this.f41757a = str;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        RoundImageView roundImageView;
        if (!TextUtils.equals(str, this.f41757a) || (roundImageView = this.f41758b.f43987h) == null) {
            return;
        }
        roundImageView.setImageBitmap(bitmap);
    }
}
