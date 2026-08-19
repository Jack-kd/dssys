package com.sigmob.sdk.mraid2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;

/* renamed from: com.sigmob.sdk.mraid2.l, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1334l extends HorizontalScrollView implements InterfaceC1337o {

    /* renamed from: c, reason: collision with root package name */
    public static final float f38194c = 1000.0f;

    /* renamed from: d, reason: collision with root package name */
    private static final String f38195d = "PageScrollView";

    /* renamed from: e, reason: collision with root package name */
    private static final int f38196e = 1000;

    /* renamed from: a, reason: collision with root package name */
    public final int f38197a;

    /* renamed from: b, reason: collision with root package name */
    public final int f38198b;

    /* renamed from: f, reason: collision with root package name */
    private int f38199f;

    /* renamed from: g, reason: collision with root package name */
    private long f38200g;

    /* renamed from: h, reason: collision with root package name */
    private InterfaceC1342u f38201h;

    /* renamed from: i, reason: collision with root package name */
    private int f38202i;

    public C1334l(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(int i2, int i3) {
        if (i2 > 0) {
            int i4 = this.f38202i;
            if (this.f38197a + i4 < i3) {
                scrollTo(i4 + Math.abs(i2), 0);
                return;
            }
            return;
        }
        int i5 = this.f38202i;
        if (i5 > 0) {
            scrollTo(i5 - Math.abs(i2), 0);
        }
    }

    @Override // android.widget.HorizontalScrollView
    public void fling(int i2) {
        super.fling(0);
    }

    @Override // com.sigmob.sdk.mraid2.InterfaceC1337o
    public ViewGroup getView() {
        return this;
    }

    @Override // com.sigmob.sdk.mraid2.InterfaceC1337o
    public void setPageChangedListener(InterfaceC1342u interfaceC1342u) {
        this.f38201h = interfaceC1342u;
    }

    public C1334l(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // com.sigmob.sdk.mraid2.InterfaceC1337o
    public void a(int i2, int i3) {
        this.f38199f = i2;
        this.f38200g = System.currentTimeMillis();
    }

    @Override // com.sigmob.sdk.mraid2.InterfaceC1337o
    public void b(int i2, int i3) {
        final int i4 = this.f38199f - i2;
        final int width = getChildAt(0).getWidth();
        post(new Runnable() { // from class: com.sigmob.sdk.mraid2.M
            @Override // java.lang.Runnable
            public final void run() {
                this.f38102b.c(i4, width);
            }
        });
    }

    public C1334l(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        int i3 = getResources().getDisplayMetrics().widthPixels;
        this.f38197a = i3;
        this.f38198b = i3 / 2;
        this.f38202i = 0;
    }

    @Override // com.sigmob.sdk.mraid2.InterfaceC1337o
    public void a(final C1325c c1325c, int i2, int i3) {
        final int i4 = this.f38199f - i2;
        final boolean zA = a(i4);
        final int width = getChildAt(0).getWidth();
        post(new Runnable() { // from class: com.sigmob.sdk.mraid2.L
            @Override // java.lang.Runnable
            public final void run() {
                this.f38097b.a(zA, i4, width, c1325c);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z2, int i2, int i3, C1325c c1325c) {
        int i4;
        if (z2) {
            int i5 = this.f38202i;
            if (i2 > 0) {
                int i6 = this.f38197a;
                if (i5 + i6 < i3) {
                    this.f38202i = i5 + i6;
                }
                i4 = 1;
            } else {
                if (i5 > 0) {
                    this.f38202i = i5 - this.f38197a;
                }
                i4 = 2;
            }
            InterfaceC1342u interfaceC1342u = this.f38201h;
            if (interfaceC1342u != null) {
                interfaceC1342u.onPageChanged(c1325c, i4, this.f38202i / this.f38197a);
            }
        }
        smoothScrollTo(this.f38202i, 0);
    }

    private boolean a(int i2) {
        int i3 = this.f38197a;
        int i4 = i2 % i3;
        int i5 = i2 / i3;
        float fCurrentTimeMillis = (i2 * 1000) / (System.currentTimeMillis() - this.f38200g);
        return fCurrentTimeMillis >= 1000.0f || fCurrentTimeMillis <= -1000.0f || i4 >= this.f38198b;
    }
}
