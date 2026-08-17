package com.sigmob.sdk.mraid;

import android.content.Context;
import android.graphics.Rect;
import com.czhj.sdk.common.utils.Dips;

/* loaded from: classes4.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    private final Context f37999a;

    /* renamed from: b, reason: collision with root package name */
    private final Rect f38000b = new Rect();

    /* renamed from: c, reason: collision with root package name */
    private final Rect f38001c = new Rect();

    /* renamed from: d, reason: collision with root package name */
    private final Rect f38002d = new Rect();

    /* renamed from: e, reason: collision with root package name */
    private final Rect f38003e = new Rect();

    /* renamed from: f, reason: collision with root package name */
    private final Rect f38004f = new Rect();

    /* renamed from: g, reason: collision with root package name */
    private final Rect f38005g = new Rect();

    /* renamed from: h, reason: collision with root package name */
    private final Rect f38006h = new Rect();

    /* renamed from: i, reason: collision with root package name */
    private final Rect f38007i = new Rect();

    /* renamed from: j, reason: collision with root package name */
    private final float f38008j;

    public q(Context context, float f2) {
        this.f37999a = context.getApplicationContext();
        this.f38008j = f2;
    }

    public float a() {
        return this.f38008j;
    }

    public Rect b() {
        return this.f38000b;
    }

    public Rect c() {
        return this.f38001c;
    }

    public Rect d() {
        return this.f38002d;
    }

    public Rect e() {
        return this.f38003e;
    }

    public Rect f() {
        return this.f38004f;
    }

    public Rect g() {
        return this.f38005g;
    }

    public Rect h() {
        return this.f38006h;
    }

    public Rect i() {
        return this.f38007i;
    }

    public void a(int i2, int i3) {
        this.f38000b.set(0, 0, i2, i3);
        a(this.f38000b, this.f38001c);
    }

    public void b(int i2, int i3, int i4, int i5) {
        this.f38004f.set(i2, i3, i4 + i2, i5 + i3);
        a(this.f38004f, this.f38005g);
    }

    public void c(int i2, int i3, int i4, int i5) {
        this.f38006h.set(i2, i3, i4 + i2, i5 + i3);
        a(this.f38006h, this.f38007i);
    }

    public void a(int i2, int i3, int i4, int i5) {
        this.f38002d.set(i2, i3, i4 + i2, i5 + i3);
        a(this.f38002d, this.f38003e);
    }

    private void a(Rect rect, Rect rect2) {
        rect2.set(Dips.pixelsToIntDips(rect.left, this.f37999a), Dips.pixelsToIntDips(rect.top, this.f37999a), Dips.pixelsToIntDips(rect.right, this.f37999a), Dips.pixelsToIntDips(rect.bottom, this.f37999a));
    }
}
