package com.beizi.fusion.asnp.adn.ad.download.service;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.down.DownloadInfoModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;

/* loaded from: classes2.dex */
public interface a {

    public interface b {
        void a(C0150a c0150a);

        void b(C0150a c0150a);

        void c(C0150a c0150a);
    }

    void a(C0150a c0150a);

    /* renamed from: com.beizi.fusion.asnp.adn.ad.download.service.a$a, reason: collision with other inner class name */
    public static class C0150a {

        /* renamed from: a, reason: collision with root package name */
        private final String f12948a;

        /* renamed from: b, reason: collision with root package name */
        private final String f12949b;

        /* renamed from: c, reason: collision with root package name */
        private final AdTraceModel f12950c;

        /* renamed from: d, reason: collision with root package name */
        private final String f12951d;

        /* renamed from: e, reason: collision with root package name */
        private final String f12952e;

        /* renamed from: f, reason: collision with root package name */
        private final String f12953f;

        /* renamed from: g, reason: collision with root package name */
        private b f12954g;

        /* renamed from: h, reason: collision with root package name */
        private long f12955h;

        /* renamed from: i, reason: collision with root package name */
        private int f12956i;

        public C0150a(String str, DownloadInfoModel downloadInfoModel, String str2, AdTraceModel adTraceModel) {
            this.f12948a = str;
            this.f12952e = b(downloadInfoModel);
            this.f12949b = str2;
            this.f12950c = adTraceModel;
            this.f12951d = c(downloadInfoModel);
            this.f12953f = a(downloadInfoModel);
        }

        private String a(DownloadInfoModel downloadInfoModel) {
            return downloadInfoModel != null ? downloadInfoModel.getApkMD5() : "";
        }

        private String b(DownloadInfoModel downloadInfoModel) {
            return downloadInfoModel != null ? downloadInfoModel.getBundle() : "";
        }

        private String c(DownloadInfoModel downloadInfoModel) {
            return downloadInfoModel != null ? downloadInfoModel.getName() : "";
        }

        public AdTraceModel d() {
            return this.f12950c;
        }

        public String e() {
            return this.f12949b;
        }

        public String a() {
            return this.f12953f;
        }

        public String b() {
            return this.f12948a;
        }

        public String c() {
            return this.f12951d;
        }

        public void a(b bVar) {
            this.f12954g = bVar;
        }

        public void a(long j2) {
            this.f12955h = j2;
        }

        public void a(int i2) {
            b bVar;
            b bVar2;
            b bVar3;
            if (this.f12956i == 16 && (bVar3 = this.f12954g) != null) {
                bVar3.b(this);
            }
            if (this.f12956i == 4 && i2 == 2 && (bVar2 = this.f12954g) != null) {
                bVar2.a(this);
            }
            if (this.f12956i == 2 && i2 == 4 && (bVar = this.f12954g) != null) {
                bVar.c(this);
            }
            this.f12956i = i2;
        }
    }
}
