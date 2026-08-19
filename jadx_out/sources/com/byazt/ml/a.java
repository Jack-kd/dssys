package com.byazt.ml;

import android.text.TextUtils;
import com.byazt.uhg.gu;
import com.byazt.uhg.k;
import com.byazt.uhg.u;
import com.byazt.uhg.xs;
import com.sigmob.sdk.downloader.core.c;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 449, 54})
/* loaded from: classes3.dex */
public class a extends u {
    public HttpURLConnection hp;

    /* renamed from: j, reason: collision with root package name */
    public long f23073j;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public k f23074l;

    /* renamed from: w, reason: collision with root package name */
    public gu f23075w = null;

    public a(HttpURLConnection httpURLConnection, k kVar) {
        this.hp = httpURLConnection;
        this.f23074l = kVar;
    }

    @Override // com.byazt.uhg.u
    public xs a() {
        try {
            return new eb(this.hp);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.byazt.uhg.u, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            a().close();
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.uhg.u
    public com.byazt.uhg.a eb() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<String>> entry : this.hp.getHeaderFields().entrySet()) {
            for (String str : entry.getValue()) {
                if (!c.f37367f.equalsIgnoreCase(entry.getKey()) || jx() != 206) {
                    arrayList.add(entry.getKey());
                    arrayList.add(str);
                }
            }
        }
        return new com.byazt.uhg.a((String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    @Override // com.byazt.uhg.u
    public long hp() {
        return this.jx;
    }

    @Override // com.byazt.uhg.u
    public boolean j() {
        return jx() >= 200 && jx() < 300;
    }

    @Override // com.byazt.uhg.u
    public int jx() {
        try {
            return this.hp.getResponseCode();
        } catch (Exception unused) {
            return -1;
        }
    }

    @Override // com.byazt.uhg.u
    public long l() {
        return this.f23073j;
    }

    @Override // com.byazt.uhg.u
    public gu s() {
        return this.f23075w;
    }

    public String toString() {
        return "";
    }

    @Override // com.byazt.uhg.u
    public String w() throws IOException {
        return this.hp.getResponseMessage();
    }

    @Override // com.byazt.uhg.u
    public String hp(String str) {
        return this.hp.getHeaderField(str);
    }

    @Override // com.byazt.uhg.u
    public String hp(String str, String str2) {
        return !TextUtils.isEmpty(hp(str)) ? hp(str) : str2;
    }
}
