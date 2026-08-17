package com.smartdigimkt.h2;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.PuzzleV2G2CV2View;

/* loaded from: classes5.dex */
public final class u0 implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PuzzleV2G2CV2View f40534a;

    public u0(PuzzleV2G2CV2View puzzleV2G2CV2View) {
        this.f40534a = puzzleV2G2CV2View;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        ImageView imageView = this.f40534a.f43919j;
        if (imageView != null) {
            imageView.setImageBitmap(bitmap);
        }
    }
}
