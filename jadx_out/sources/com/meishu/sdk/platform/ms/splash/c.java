package com.meishu.sdk.platform.ms.splash;

import com.meishu.sdk.core.domain.MeishuAdInfo;
import com.meishu.sdk.core.utils.r;
import com.meishu.sdk.core.utils.v0;
import com.meishu.sdk.platform.ms.splash.ShakeUtil;

/* loaded from: classes4.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public int f33137a;

    /* renamed from: b, reason: collision with root package name */
    public ShakeUtil.c f33138b;

    /* renamed from: c, reason: collision with root package name */
    public int f33139c;

    /* renamed from: d, reason: collision with root package name */
    public int f33140d;

    /* renamed from: e, reason: collision with root package name */
    public int f33141e;

    /* renamed from: f, reason: collision with root package name */
    public int f33142f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f33143g;

    /* renamed from: i, reason: collision with root package name */
    public String f33145i;

    /* renamed from: j, reason: collision with root package name */
    public long f33146j;

    /* renamed from: k, reason: collision with root package name */
    public MeishuAdInfo.DClickData f33147k;

    /* renamed from: l, reason: collision with root package name */
    public int f33148l;

    /* renamed from: o, reason: collision with root package name */
    public int f33151o;

    /* renamed from: p, reason: collision with root package name */
    public double f33152p;

    /* renamed from: q, reason: collision with root package name */
    public double f33153q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f33154r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f33155s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f33156t;

    /* renamed from: u, reason: collision with root package name */
    public long f33157u;

    /* renamed from: h, reason: collision with root package name */
    public int f33144h = 1;

    /* renamed from: m, reason: collision with root package name */
    public int f33149m = 1;

    /* renamed from: n, reason: collision with root package name */
    public int f33150n = 1;

    public boolean a() {
        if (this.f33154r) {
            return System.currentTimeMillis() - r.a().a("last_dynamic_time", 0L) > ((long) (this.f33148l * 1000));
        }
        return false;
    }

    public void b() {
        MeishuAdInfo.DClickData dClickData;
        try {
            v0.a aVar = v0.f32032a.get(this.f33145i + this.f33146j);
            if ((aVar == null || !aVar.f32036b) && (dClickData = this.f33147k) != null) {
                int power = dClickData.getPower();
                int ptime = this.f33147k.getPtime();
                if (ptime <= 0 || power >= this.f33140d) {
                    return;
                }
                this.f33148l = ptime;
                this.f33154r = true;
                if (power < 1 || power > 100) {
                    return;
                }
                this.f33151o = power;
                double d2 = (power * 45.0d) / 100.0d;
                this.f33152p = d2;
                if (d2 < 2.0d) {
                    this.f33152p = 2.0d;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void c() {
        this.f33150n++;
    }
}
