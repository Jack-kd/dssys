package com.sigmob.sdk.mraid2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ScrollView;

/* loaded from: classes4.dex */
public class r extends ScrollView implements InterfaceC1337o {

    /* renamed from: c, reason: collision with root package name */
    public static final float f38215c = 1000.0f;

    /* renamed from: d, reason: collision with root package name */
    private static final String f38216d = "PageScrollView";

    /* renamed from: e, reason: collision with root package name */
    private static final int f38217e = 1000;

    /* renamed from: a, reason: collision with root package name */
    public final int f38218a;

    /* renamed from: b, reason: collision with root package name */
    public final int f38219b;

    /* renamed from: f, reason: collision with root package name */
    private int f38220f;

    /* renamed from: g, reason: collision with root package name */
    private long f38221g;

    /* renamed from: h, reason: collision with root package name */
    private InterfaceC1342u f38222h;

    /* renamed from: i, reason: collision with root package name */
    private int f38223i;

    public r(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(int i2, int i3) {
        if (i2 > 0) {
            int i4 = this.f38223i;
            if (this.f38218a + i4 < i3) {
                scrollTo(0, i4 + Math.abs(i2));
                return;
            }
            return;
        }
        int i5 = this.f38223i;
        if (i5 > 0) {
            scrollTo(0, i5 - Math.abs(i2));
        }
    }

    @Override // android.widget.ScrollView
    public void fling(int i2) {
        super.fling(0);
    }

    @Override // com.sigmob.sdk.mraid2.InterfaceC1337o
    public ViewGroup getView() {
        return this;
    }

    @Override // com.sigmob.sdk.mraid2.InterfaceC1337o
    public void setPageChangedListener(InterfaceC1342u interfaceC1342u) {
        this.f38222h = interfaceC1342u;
    }

    public r(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // com.sigmob.sdk.mraid2.InterfaceC1337o
    public void a(int i2, int i3) {
        this.f38220f = i3;
        this.f38221g = System.currentTimeMillis();
    }

    @Override // com.sigmob.sdk.mraid2.InterfaceC1337o
    public void b(int i2, int i3) {
        final int i4 = this.f38220f - i3;
        final int height = getChildAt(0).getHeight();
        post(new Runnable() { // from class: com.sigmob.sdk.mraid2.P
            @Override // java.lang.Runnable
            public final void run() {
                this.f38111b.c(i4, height);
            }
        });
    }

    public r(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        int i3 = getResources().getDisplayMetrics().heightPixels;
        this.f38218a = i3;
        this.f38219b = i3 / 2;
        this.f38223i = 0;
    }

    @Override // com.sigmob.sdk.mraid2.InterfaceC1337o
    public void a(final C1325c c1325c, int i2, int i3) {
        final int i4 = this.f38220f - i3;
        final boolean zA = a(i4);
        final int height = getChildAt(0).getHeight();
        post(new Runnable() { // from class: com.sigmob.sdk.mraid2.O
            @Override // java.lang.Runnable
            public final void run() {
                this.f38106b.a(zA, i4, height, c1325c);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z2, int i2, int i3, C1325c c1325c) {
        int i4;
        if (z2) {
            int i5 = this.f38223i;
            if (i2 > 0) {
                int i6 = this.f38218a;
                if (i5 + i6 < i3) {
                    this.f38223i = i5 + i6;
                }
                i4 = 1;
            } else {
                if (i5 > 0) {
                    this.f38223i = i5 - this.f38218a;
                }
                i4 = 2;
            }
            InterfaceC1342u interfaceC1342u = this.f38222h;
            if (interfaceC1342u != null) {
                interfaceC1342u.onPageChanged(c1325c, i4, this.f38223i / this.f38218a);
            }
        }
        smoothScrollTo(0, this.f38223i);
    }

    private boolean a(int i2) {
        int i3 = this.f38218a;
        int i4 = i2 % i3;
        int i5 = i2 / i3;
        float fCurrentTimeMillis = ((i2 * 1000) * 1.0f) / (System.currentTimeMillis() - this.f38221g);
        return fCurrentTimeMillis >= 1000.0f || fCurrentTimeMillis <= -1000.0f || i4 >= this.f38219b;
    }
}
