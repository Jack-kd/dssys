package com.baidu.mobads.sdk.internal;

import android.content.Context;
import com.baidu.mobads.sdk.internal.x;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Observable;

/* loaded from: classes2.dex */
public class am extends Observable implements x, Runnable {

    /* renamed from: i, reason: collision with root package name */
    protected static final int f10989i = 10240;

    /* renamed from: j, reason: collision with root package name */
    protected static final int f10990j = 10240;

    /* renamed from: k, reason: collision with root package name */
    public static final String f10991k = ".tmp";

    /* renamed from: m, reason: collision with root package name */
    private static final String f10992m = "FileDownloader";

    /* renamed from: a, reason: collision with root package name */
    protected Context f10993a;

    /* renamed from: b, reason: collision with root package name */
    protected URL f10994b;

    /* renamed from: c, reason: collision with root package name */
    protected String f10995c;

    /* renamed from: d, reason: collision with root package name */
    protected String f10996d;

    /* renamed from: e, reason: collision with root package name */
    protected int f10997e;

    /* renamed from: f, reason: collision with root package name */
    protected x.a f10998f;

    /* renamed from: g, reason: collision with root package name */
    protected int f10999g;

    /* renamed from: h, reason: collision with root package name */
    protected int f11000h;

    /* renamed from: l, reason: collision with root package name */
    protected byte[] f11001l;

    /* renamed from: n, reason: collision with root package name */
    private boolean f11002n;

    public am(Context context, URL url, String str, String str2, boolean z2) {
        this.f10993a = context;
        this.f10994b = url;
        this.f10995c = str;
        this.f11002n = z2;
        if (str2 == null || str2.trim().length() <= 0) {
            String file = url.getFile();
            this.f10996d = file.substring(file.lastIndexOf(47) + 1);
        } else {
            this.f10996d = str2;
        }
        this.f10997e = -1;
        this.f10998f = x.a.DOWNLOADING;
        this.f10999g = 0;
        this.f11000h = 0;
    }

    private void s() {
        a(x.a.ERROR);
    }

    @Override // com.baidu.mobads.sdk.internal.x
    public void a(boolean z2) {
    }

    @Override // com.baidu.mobads.sdk.internal.x
    @Deprecated
    public void b() {
    }

    @Override // com.baidu.mobads.sdk.internal.x
    @Deprecated
    public void c() {
    }

    @Override // com.baidu.mobads.sdk.internal.x
    @Deprecated
    public void d() {
    }

    @Override // com.baidu.mobads.sdk.internal.x
    public String e() {
        return this.f10994b.toString();
    }

    @Override // com.baidu.mobads.sdk.internal.x
    @Deprecated
    public String f() {
        return null;
    }

    @Override // com.baidu.mobads.sdk.internal.x
    public String g() {
        return this.f10995c + this.f10996d;
    }

    @Override // com.baidu.mobads.sdk.internal.x
    @Deprecated
    public String h() {
        return null;
    }

    @Override // com.baidu.mobads.sdk.internal.x
    @Deprecated
    public String i() {
        return null;
    }

    @Override // com.baidu.mobads.sdk.internal.x
    public int j() {
        return this.f10997e;
    }

    @Override // com.baidu.mobads.sdk.internal.x
    public float k() {
        return Math.abs((this.f10999g / this.f10997e) * 100.0f);
    }

    @Override // com.baidu.mobads.sdk.internal.x
    public x.a l() {
        return this.f10998f;
    }

    @Override // com.baidu.mobads.sdk.internal.x
    public void m() {
    }

    @Override // com.baidu.mobads.sdk.internal.x
    public boolean n() {
        return false;
    }

    public byte[] o() {
        return this.f11001l;
    }

    public void p() {
        be.a().a(this);
    }

    public void q() {
        setChanged();
        notifyObservers();
    }

    public void r() {
        bt.a(this.f10995c + this.f10996d + ".tmp", this.f10995c + this.f10996d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01b1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x01dd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 505
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.mobads.sdk.internal.am.run():void");
    }

    @Override // com.baidu.mobads.sdk.internal.x
    public void a() {
        a(x.a.DOWNLOADING);
        p();
    }

    public void a(x.a aVar) {
        this.f10998f = aVar;
        q();
    }

    public void a(int i2, float f2) {
        this.f10999g += i2;
        q();
    }

    private HttpURLConnection a(HttpURLConnection httpURLConnection) throws IOException {
        while (true) {
            try {
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode != 302 && responseCode != 301) {
                    return httpURLConnection;
                }
                URL url = new URL(httpURLConnection.getHeaderField("Location"));
                this.f10994b = url;
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) url.openConnection();
                try {
                    httpURLConnection2.setConnectTimeout(10000);
                    httpURLConnection2.setInstanceFollowRedirects(false);
                    httpURLConnection2.setRequestProperty(com.sigmob.sdk.downloader.core.c.f37363b, "bytes=0-");
                    httpURLConnection = httpURLConnection2;
                } catch (Exception unused) {
                    return httpURLConnection2;
                }
            } catch (Exception unused2) {
                return httpURLConnection;
            }
        }
    }
}
