package com.meishu.sdk.core.loader.loadbean;

import com.meishu.sdk.core.domain.SdkAdInfo;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public SdkAdInfo f31638a;

    /* renamed from: b, reason: collision with root package name */
    public Object f31639b;

    /* renamed from: e, reason: collision with root package name */
    public int f31642e;

    /* renamed from: g, reason: collision with root package name */
    public boolean f31644g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f31645h;

    /* renamed from: c, reason: collision with root package name */
    public int f31640c = 1;

    /* renamed from: d, reason: collision with root package name */
    public int f31641d = 0;

    /* renamed from: f, reason: collision with root package name */
    public int f31643f = -1;

    public int a() {
        if (!this.f31644g) {
            if ("bidding".equals(this.f31638a.getOtype())) {
                return this.f31643f;
            }
            if ("order".equals(this.f31638a.getOtype())) {
                return (this.f31642e + 100000) - this.f31638a.getScore();
            }
            if ("price".equals(this.f31638a.getOtype())) {
                return this.f31638a.getCodPrice() + this.f31642e;
            }
        }
        return this.f31643f;
    }

    public String toString() {
        StringBuilder sbA = com.meishu.sdk.activity.a.a("SmallGroupBean{platform =");
        sbA.append(this.f31644g ? "MS" : this.f31638a.getSdk());
        sbA.append(", state=");
        sbA.append(this.f31640c);
        sbA.append(", timeoutState=");
        sbA.append(this.f31641d);
        sbA.append(", firstScore=");
        sbA.append(this.f31642e);
        sbA.append(", secondScore=");
        sbA.append(a());
        sbA.append(", isMs=");
        sbA.append(this.f31644g);
        sbA.append(", isCache=");
        sbA.append(this.f31645h);
        sbA.append(", hashCode=");
        sbA.append(hashCode());
        sbA.append('}');
        return sbA.toString();
    }
}
