package com.meishu.sdk.meishu_ad.nativ;

import com.meishu.sdk.core.ad.BaseAdSlot;

/* loaded from: classes4.dex */
public class f extends BaseAdSlot {

    /* renamed from: C, reason: collision with root package name */
    public long f32387C;

    /* renamed from: D, reason: collision with root package name */
    public long f32388D;

    /* renamed from: a, reason: collision with root package name */
    public int f32389a;

    /* renamed from: b, reason: collision with root package name */
    public int f32390b;

    /* renamed from: c, reason: collision with root package name */
    public String f32391c;

    /* renamed from: d, reason: collision with root package name */
    public String f32392d;

    /* renamed from: e, reason: collision with root package name */
    public String f32393e;

    /* renamed from: f, reason: collision with root package name */
    public String f32394f;

    /* renamed from: g, reason: collision with root package name */
    public String f32395g;

    /* renamed from: h, reason: collision with root package name */
    public String f32396h;

    /* renamed from: i, reason: collision with root package name */
    public long f32397i;

    /* renamed from: j, reason: collision with root package name */
    public String[] f32398j;

    /* renamed from: k, reason: collision with root package name */
    public String[] f32399k;

    /* renamed from: l, reason: collision with root package name */
    public String[] f32400l;

    /* renamed from: m, reason: collision with root package name */
    public String[] f32401m;

    /* renamed from: n, reason: collision with root package name */
    public String[] f32402n;

    /* renamed from: o, reason: collision with root package name */
    public String[] f32403o;

    /* renamed from: p, reason: collision with root package name */
    public String[] f32404p;

    /* renamed from: q, reason: collision with root package name */
    public String[] f32405q;

    /* renamed from: r, reason: collision with root package name */
    public String[] f32406r;

    /* renamed from: s, reason: collision with root package name */
    public String[] f32407s;

    /* renamed from: t, reason: collision with root package name */
    public String[] f32408t;

    /* renamed from: u, reason: collision with root package name */
    public String[] f32409u;

    /* renamed from: v, reason: collision with root package name */
    public int f32410v;

    /* renamed from: x, reason: collision with root package name */
    public int f32412x;

    /* renamed from: y, reason: collision with root package name */
    public long f32413y;

    /* renamed from: w, reason: collision with root package name */
    public int f32411w = 1;

    /* renamed from: z, reason: collision with root package name */
    public boolean f32414z = true;

    /* renamed from: A, reason: collision with root package name */
    public boolean f32385A = true;

    /* renamed from: B, reason: collision with root package name */
    public boolean f32386B = false;

    public class a extends BaseAdSlot.Builder<a, f> {
        public a() {
            super();
        }

        @Override // com.meishu.sdk.core.ad.BaseAdSlot.Builder
        public BaseAdSlot build() {
            return f.this;
        }

        @Override // com.meishu.sdk.core.ad.BaseAdSlot.Builder
        public BaseAdSlot.Builder returnThis() {
            return this;
        }

        @Override // com.meishu.sdk.core.ad.BaseAdSlot.Builder
        public BaseAdSlot.Builder setAppName(String str) {
            f.this.appName = str;
            return this;
        }

        @Override // com.meishu.sdk.core.ad.BaseAdSlot.Builder
        public BaseAdSlot.Builder setDesc(String str) {
            f.this.desc = str;
            return this;
        }

        @Override // com.meishu.sdk.core.ad.BaseAdSlot.Builder
        public BaseAdSlot.Builder setIconUrl(String str) {
            f.this.iconUrl = str;
            return this;
        }

        @Override // com.meishu.sdk.core.ad.BaseAdSlot.Builder
        public BaseAdSlot.Builder setTitle(String str) {
            f.this.title = str;
            return this;
        }
    }

    @Override // com.meishu.sdk.core.ad.BaseAdSlot
    public String getDesc() {
        return this.desc;
    }

    @Override // com.meishu.sdk.core.ad.BaseAdSlot
    public String getIconUrl() {
        return this.iconUrl;
    }

    @Override // com.meishu.sdk.core.ad.BaseAdSlot
    public String getTitle() {
        return this.title;
    }

    @Override // com.meishu.sdk.core.ad.BaseAdSlot
    public void setAdPatternType(int i2) {
        this.adPatternType = i2;
    }
}
