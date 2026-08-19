package com.octopus.ad.internal;

import com.octopus.ad.R;

/* loaded from: classes4.dex */
public class c {

    /* renamed from: d, reason: collision with root package name */
    private final com.octopus.ad.internal.a f34490d;

    /* renamed from: e, reason: collision with root package name */
    private s f34491e;

    /* renamed from: a, reason: collision with root package name */
    private int f34487a = -1;

    /* renamed from: b, reason: collision with root package name */
    private long f34488b = -1;

    /* renamed from: c, reason: collision with root package name */
    private long f34489c = -1;

    /* renamed from: f, reason: collision with root package name */
    private a f34492f = a.STOPPED;

    /* renamed from: g, reason: collision with root package name */
    private boolean f34493g = false;

    /* renamed from: com.octopus.ad.internal.c$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f34494a;

        /* renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f34495b;

        static {
            int[] iArr = new int[p.values().length];
            f34495b = iArr;
            try {
                iArr[p.SPLASH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34495b[p.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34495b[p.FULLSCREEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34495b[p.REWARD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34495b[p.NATIVE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f34495b[p.BANNER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f34495b[p.DRAW.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f34495b[p.PREFETCH.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr2 = new int[a.values().length];
            f34494a = iArr2;
            try {
                iArr2[a.STOPPED.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f34494a[a.SINGLE_REQUEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f34494a[a.AUTO_REFRESH.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public enum a {
        STOPPED,
        SINGLE_REQUEST,
        AUTO_REFRESH
    }

    public c(com.octopus.ad.internal.a aVar) {
        this.f34490d = aVar;
        com.octopus.ad.d.b.f.d("OctopusAd_Time", "AdFetcher 开始");
    }

    public void a(int i2, String str) {
        boolean z2 = this.f34487a != i2;
        this.f34487a = i2;
        if (!z2 || this.f34492f.equals(a.STOPPED)) {
            return;
        }
        com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34565a, "AdFetcher refresh mPeriod changed to " + this.f34487a);
        com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34565a, "Resetting AdFetcher");
        a();
        a(str);
    }

    public void b() {
        this.f34493g = true;
    }

    public void c() {
        this.f34488b = -1L;
        this.f34489c = -1L;
    }

    public void b(String str) {
        com.octopus.ad.internal.a aVar;
        try {
            if (!this.f34493g && (aVar = this.f34490d) != null && aVar.a()) {
                this.f34488b = System.currentTimeMillis();
                switch (AnonymousClass1.f34495b[this.f34490d.getMediaType().ordinal()]) {
                    case 1:
                        this.f34491e = new f((com.octopus.ad.internal.e.g) this.f34490d, str);
                        break;
                    case 2:
                    case 3:
                    case 4:
                        this.f34491e = new f((com.octopus.ad.internal.e.f) this.f34490d, str);
                        break;
                    case 5:
                    case 6:
                    case 7:
                        this.f34491e = new com.octopus.ad.internal.b.d((com.octopus.ad.internal.b.c) this.f34490d, str);
                        break;
                    case 8:
                        this.f34491e = new r(str);
                        break;
                }
                this.f34491e.a();
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    public void a() {
        s sVar = this.f34491e;
        if (sVar != null) {
            sVar.c();
            this.f34491e = null;
        }
        com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34565a, com.octopus.ad.internal.c.f.a(R.string.stop));
        this.f34489c = System.currentTimeMillis();
        this.f34492f = a.STOPPED;
    }

    public void a(String str) {
        com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34565a, com.octopus.ad.internal.c.f.a(R.string.start));
        int i2 = AnonymousClass1.f34494a[this.f34492f.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            com.octopus.ad.internal.c.f.a(com.octopus.ad.internal.c.f.f34565a, com.octopus.ad.internal.c.f.a(R.string.fetcher_start_single));
            b(str);
            return;
        }
        if (this.f34487a <= 0) {
            com.octopus.ad.internal.c.f.a(com.octopus.ad.internal.c.f.f34565a, com.octopus.ad.internal.c.f.a(R.string.fetcher_start_single));
            b(str);
            this.f34492f = a.SINGLE_REQUEST;
        } else {
            b(str);
            this.f34492f = a.AUTO_REFRESH;
        }
    }
}
