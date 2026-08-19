package com.anythink.core.bridge.entity;

import com.anythink.core.common.d.s;
import com.anythink.core.common.f.p;
import com.anythink.core.common.h.x;

/* loaded from: classes.dex */
public final class g extends b {

    /* renamed from: a, reason: collision with root package name */
    @DataField("placement_id")
    public String f1832a;

    /* renamed from: b, reason: collision with root package name */
    @DataField("format")
    public int f1833b;

    /* renamed from: c, reason: collision with root package name */
    @DataField("traffic_group_id")
    public int f1834c;

    /* renamed from: d, reason: collision with root package name */
    @DataField("group_id")
    public int f1835d;

    /* renamed from: e, reason: collision with root package name */
    @DataField("adsource_id")
    public String f1836e;

    /* renamed from: f, reason: collision with root package name */
    @DataField("request_id")
    public String f1837f;

    /* renamed from: g, reason: collision with root package name */
    @DataField("origin_request_id")
    public String f1838g;

    /* renamed from: h, reason: collision with root package name */
    @DataField("x_c")
    public String f1839h;

    /* renamed from: i, reason: collision with root package name */
    @DataField(p.a.f3376c)
    public String f1840i;

    /* renamed from: j, reason: collision with root package name */
    @DataField("network_firm_id")
    public int f1841j;

    /* renamed from: k, reason: collision with root package name */
    @DataField("network_name")
    public String f1842k;

    /* renamed from: l, reason: collision with root package name */
    @DataField("tp_bid_id")
    public String f1843l;

    /* renamed from: m, reason: collision with root package name */
    @DataField(com.anythink.core.common.m.f.bB)
    public int f1844m;

    /* renamed from: n, reason: collision with root package name */
    @DataField("mtg_mix_format")
    public int f1845n;

    /* renamed from: o, reason: collision with root package name */
    @DataField("unit_group_content")
    public String f1846o;

    /* renamed from: p, reason: collision with root package name */
    @DataField("bid_result_out_date_time")
    public long f1847p;

    /* renamed from: q, reason: collision with root package name */
    @DataField("request_url")
    public String f1848q;

    /* renamed from: r, reason: collision with root package name */
    @DataField("max_install_id_size")
    public int f1849r;

    /* renamed from: s, reason: collision with root package name */
    @DataField("max_exclude_id_size")
    public int f1850s;

    public g(x xVar) {
        this.f1844m = s.b().F();
        this.f1845n = -1;
        if (xVar != null) {
            this.f1832a = xVar.f4481a;
            this.f1833b = xVar.f4482b;
            this.f1834c = xVar.f4483c;
            this.f1835d = xVar.f4484d;
            this.f1836e = xVar.f4485e;
            this.f1837f = xVar.f4486f;
            this.f1838g = xVar.f4487g;
            this.f1839h = xVar.f4488h;
            this.f1840i = xVar.f4489i;
            this.f1841j = xVar.f4490j;
            this.f1842k = xVar.f4491k;
            this.f1843l = xVar.f4492l;
            this.f1844m = xVar.f4493m;
            this.f1845n = xVar.f4494n;
            this.f1846o = xVar.f4495o;
            this.f1847p = xVar.f4496p;
            this.f1848q = xVar.f4497q;
            this.f1849r = xVar.f4498r;
            this.f1850s = xVar.f4499s;
        }
    }
}
