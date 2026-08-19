package com.anythink.core.common.l.d;

import com.anythink.core.api.bridge.IATBaseAdAdapter;
import com.anythink.core.common.k;
import com.anythink.core.common.v.p;
import java.util.Map;

/* loaded from: classes2.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static final int f5461a = -1;

    /* renamed from: b, reason: collision with root package name */
    private Map<String, Object> f5462b;

    /* renamed from: c, reason: collision with root package name */
    private Map<String, Object> f5463c;

    /* renamed from: d, reason: collision with root package name */
    private int f5464d;

    /* renamed from: e, reason: collision with root package name */
    private int f5465e;

    /* renamed from: f, reason: collision with root package name */
    private int f5466f;

    /* renamed from: g, reason: collision with root package name */
    private String f5467g;

    /* renamed from: h, reason: collision with root package name */
    private IATBaseAdAdapter f5468h;

    /* renamed from: i, reason: collision with root package name */
    private int f5469i;

    public b(Map<String, Object> map) {
        this.f5469i = 0;
        this.f5462b = map;
        this.f5464d = p.a(map, "ad_format", -1);
        this.f5465e = p.a(map, "ad_type", -1);
        this.f5466f = p.a(map, k.aI, 1);
        this.f5467g = p.a(map, k.aJ, "");
        this.f5469i = p.a(map, "render_type", 0);
    }

    public final <T> T a(String str, T t2) {
        return (T) p.a(this.f5462b, str, t2);
    }

    public final int b() {
        return this.f5465e;
    }

    public final int c() {
        return this.f5466f;
    }

    public final String d() {
        return this.f5467g;
    }

    public final int e() {
        return this.f5464d;
    }

    public final boolean f() {
        return String.valueOf(this.f5464d).equals("2");
    }

    public final boolean g() {
        return String.valueOf(this.f5464d).equals("4");
    }

    public final boolean h() {
        return String.valueOf(this.f5464d).equals("3");
    }

    public final boolean i() {
        return String.valueOf(this.f5464d).equals("1");
    }

    public final boolean j() {
        return String.valueOf(this.f5464d).equals("0");
    }

    public final boolean k() {
        int i2;
        int i3 = this.f5464d;
        return (i3 == -1 || (i2 = this.f5465e) == -1 || i3 == i2) ? false : true;
    }

    public final boolean l() {
        return k() && this.f5465e == 0;
    }

    public final boolean m() {
        return k() && this.f5465e == 4;
    }

    public final boolean n() {
        return k() && this.f5465e == 2;
    }

    public final boolean o() {
        return k() && this.f5465e == 3;
    }

    public final int p() {
        return this.f5469i;
    }

    public final Map<String, Object> q() {
        return this.f5463c;
    }

    public final IATBaseAdAdapter r() {
        return this.f5468h;
    }

    private void b(int i2) {
        this.f5466f = i2;
    }

    private void c(int i2) {
        this.f5464d = i2;
    }

    public final Map<String, Object> a() {
        return this.f5462b;
    }

    private void a(int i2) {
        this.f5465e = i2;
    }

    private void a(String str) {
        this.f5467g = str;
    }

    public final void a(Map<String, Object> map) {
        this.f5463c = map;
    }

    public final void a(IATBaseAdAdapter iATBaseAdAdapter) {
        this.f5468h = iATBaseAdAdapter;
    }
}
