package com.octopus.ad.internal.c;

import com.octopus.ad.utils.ThreadUtils;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;

/* loaded from: classes4.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    private final boolean f34556a;

    public interface a {
        void a(int i2, boolean z2, String str);
    }

    public d(boolean z2) {
        this.f34556a = z2;
    }

    public abstract String a();

    public abstract void a(e eVar);

    public void b() {
        ThreadUtils.runOnThreadPool(new Runnable() { // from class: com.octopus.ad.internal.c.d.1
            /* JADX WARN: Removed duplicated region for block: B:53:0x011e A[Catch: Exception -> 0x0122, TryCatch #15 {Exception -> 0x0122, blocks: (B:51:0x0114, B:53:0x011e, B:57:0x0126, B:59:0x012b), top: B:102:0x0114 }] */
            /* JADX WARN: Removed duplicated region for block: B:57:0x0126 A[Catch: Exception -> 0x0122, TryCatch #15 {Exception -> 0x0122, blocks: (B:51:0x0114, B:53:0x011e, B:57:0x0126, B:59:0x012b), top: B:102:0x0114 }] */
            /* JADX WARN: Removed duplicated region for block: B:59:0x012b A[Catch: Exception -> 0x0122, TRY_LEAVE, TryCatch #15 {Exception -> 0x0122, blocks: (B:51:0x0114, B:53:0x011e, B:57:0x0126, B:59:0x012b), top: B:102:0x0114 }] */
            /* JADX WARN: Removed duplicated region for block: B:67:0x0149 A[Catch: Exception -> 0x014d, TryCatch #2 {Exception -> 0x014d, blocks: (B:65:0x013f, B:67:0x0149, B:71:0x0151, B:73:0x0156), top: B:93:0x013f }] */
            /* JADX WARN: Removed duplicated region for block: B:71:0x0151 A[Catch: Exception -> 0x014d, TryCatch #2 {Exception -> 0x014d, blocks: (B:65:0x013f, B:67:0x0149, B:71:0x0151, B:73:0x0156), top: B:93:0x013f }] */
            /* JADX WARN: Removed duplicated region for block: B:73:0x0156 A[Catch: Exception -> 0x014d, TRY_LEAVE, TryCatch #2 {Exception -> 0x014d, blocks: (B:65:0x013f, B:67:0x0149, B:71:0x0151, B:73:0x0156), top: B:93:0x013f }] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() throws java.io.IOException {
                /*
                    Method dump skipped, instructions count: 403
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.octopus.ad.internal.c.d.AnonymousClass1.run():void");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HttpURLConnection a(URL url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setDoOutput(false);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestMethod("GET");
        return httpURLConnection;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(HttpURLConnection httpURLConnection) throws ProtocolException {
        httpURLConnection.setRequestProperty("User-Agent", com.octopus.ad.internal.q.a().m());
    }
}
