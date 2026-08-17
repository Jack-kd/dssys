package com.smartdigimkt.h2;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.PicVerifyG2CV2View;

/* loaded from: classes5.dex */
public final class q0 implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f40525a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PicVerifyG2CV2View f40526b;

    public q0(PicVerifyG2CV2View picVerifyG2CV2View, int i2) {
        this.f40526b = picVerifyG2CV2View;
        this.f40525a = i2;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.f40526b.f43911j)) {
            DisplayMetrics displayMetrics = this.f40526b.getContext().getResources().getDisplayMetrics();
            int[] iArrA = com.smartdigimkt.z3.d.a(displayMetrics.widthPixels, displayMetrics.heightPixels, bitmap.getWidth() / bitmap.getHeight());
            int i2 = this.f40525a * 2;
            if (bitmap.getWidth() < i2 || bitmap.getHeight() < i2) {
                b bVar = this.f40526b.f43837b;
                if (bVar != null) {
                    ((n) bVar).f40508a.c();
                    return;
                }
                return;
            }
            int iA = com.smartdigimkt.c5.k.a(this.f40526b.getContext(), 180.0f);
            if (iArrA[0] < iA || iArrA[1] < iA) {
                b bVar2 = this.f40526b.f43837b;
                if (bVar2 != null) {
                    ((n) bVar2).f40508a.c();
                    return;
                }
                return;
            }
            ViewGroup.LayoutParams layoutParams = this.f40526b.f43909h.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.width = iArrA[0];
                layoutParams.height = iArrA[1];
                this.f40526b.f43909h.setLayoutParams(layoutParams);
            }
            this.f40526b.f43909h.setImageBitmap(bitmap);
            this.f40526b.post(new p0(this));
        }
    }
}
