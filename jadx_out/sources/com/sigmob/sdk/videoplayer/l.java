package com.sigmob.sdk.videoplayer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.TextureView;

/* loaded from: classes5.dex */
public class l extends TextureView {

    /* renamed from: a, reason: collision with root package name */
    protected static final String f39102a = "ResizeTextureView";

    /* renamed from: b, reason: collision with root package name */
    public int f39103b;

    /* renamed from: c, reason: collision with root package name */
    public int f39104c;

    public l(Context context) {
        super(context);
        this.f39103b = 0;
        this.f39104c = 0;
    }

    public void a(int i2, int i3) {
        if (this.f39103b == i2 && this.f39104c == i3) {
            return;
        }
        this.f39103b = i2;
        this.f39104c = i3;
        requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0092, code lost:
    
        if (r13 > r8) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0094, code lost:
    
        r13 = (r8 * r2) / r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a6, code lost:
    
        if (r13 > r8) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00de  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r13, int r14) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.videoplayer.l.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void setRotation(float f2) {
        if (f2 != getRotation()) {
            super.setRotation(f2);
            requestLayout();
        }
    }

    public l(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f39103b = 0;
        this.f39104c = 0;
    }
}
