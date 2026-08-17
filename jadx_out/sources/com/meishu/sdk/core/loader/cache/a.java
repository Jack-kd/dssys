package com.meishu.sdk.core.loader.cache;

import android.os.SystemClock;
import com.meishu.sdk.core.domain.MeishuAdInfo;
import com.meishu.sdk.core.domain.SdkAdInfo;

/* loaded from: classes4.dex */
public class a implements Comparable<a> {

    /* renamed from: a, reason: collision with root package name */
    public String f31606a;

    /* renamed from: b, reason: collision with root package name */
    public SdkAdInfo f31607b;

    /* renamed from: c, reason: collision with root package name */
    public int f31608c;

    /* renamed from: d, reason: collision with root package name */
    public Object f31609d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f31610e;

    /* renamed from: f, reason: collision with root package name */
    public long f31611f;

    /* renamed from: g, reason: collision with root package name */
    public long f31612g;

    /* renamed from: h, reason: collision with root package name */
    public MeishuAdInfo f31613h;

    public boolean a() {
        long expire_timestamp;
        long j2 = 1740000;
        if (!this.f31610e) {
            expire_timestamp = this.f31607b.getExpire_timestamp();
            String sdk = this.f31607b.getSdk();
            sdk.getClass();
            switch (sdk) {
                case "KS":
                case "CSJ":
                    j2 = 3540000;
                    break;
            }
        } else {
            expire_timestamp = this.f31612g;
        }
        if (expire_timestamp > 0) {
            j2 = 1000 * expire_timestamp;
        }
        return SystemClock.uptimeMillis() - (this.f31610e ? this.f31611f : this.f31607b.getLoadedTime()) < j2;
    }

    @Override // java.lang.Comparable
    public int compareTo(a aVar) {
        return aVar.f31608c - this.f31608c;
    }

    public String toString() {
        StringBuilder sbA = com.meishu.sdk.activity.a.a("CacheEntity{key =");
        sbA.append(this.f31606a);
        sbA.append(",ad =");
        sbA.append(this.f31609d);
        sbA.append(",sdkAdInfo=");
        sbA.append(this.f31607b.getSdk());
        sbA.append(", cacheScore=");
        sbA.append(this.f31608c);
        sbA.append('}');
        return sbA.toString();
    }
}
