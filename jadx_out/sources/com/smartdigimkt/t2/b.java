package com.smartdigimkt.t2;

import com.anythink.core.common.m.AbstractC1114b;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Locale;
import java.util.zip.GZIPInputStream;
import org.apache.http.conn.ConnectTimeoutException;

/* loaded from: classes5.dex */
public final class b {

    /* renamed from: b, reason: collision with root package name */
    public com.smartdigimkt.l4.b f44248b;

    /* renamed from: a, reason: collision with root package name */
    public final String f44247a = b.class.getSimpleName();

    /* renamed from: c, reason: collision with root package name */
    public int f44249c = 0;

    public static HashMap a() {
        HashMap map = new HashMap();
        map.put("Content-Encoding", "gzip");
        map.put("User-Agent", com.smartdigimkt.c5.h.p());
        map.put("Accept-Language", Locale.getDefault().toString());
        map.put("Accept", "application/x-www-form-urlencoded,application/json,text/plain,text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8");
        map.put(AbstractC1114b.f5589g, "application/json");
        return map;
    }

    public static InputStream a(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream;
        try {
            inputStream = httpURLConnection.getInputStream();
        } catch (Exception unused) {
            inputStream = null;
        }
        if (!"gzip".equalsIgnoreCase(httpURLConnection.getHeaderField("Content-Encoding"))) {
            return inputStream;
        }
        try {
            byte[] bArr = new byte[2];
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedInputStream.mark(2);
            int i2 = bufferedInputStream.read(bArr);
            bufferedInputStream.reset();
            return (i2 == -1 || (((bArr[1] & 255) << 8) | (bArr[0] & 255)) != 35615) ? bufferedInputStream : new GZIPInputStream(bufferedInputStream);
        } catch (Exception unused2) {
            return inputStream;
        }
    }

    public final void a(String str) {
        com.smartdigimkt.l4.b bVar = this.f44248b;
        if (bVar != null) {
            bVar.a(AVMDLDataLoader.KeyIsEnableEventInfo, str);
        }
    }

    public final void a(String str, com.smartdigimkt.k4.a aVar) {
        com.smartdigimkt.l4.b bVar = this.f44248b;
        if (bVar != null) {
            bVar.a(AVMDLDataLoader.KeyIsEnableEventInfo, str, aVar);
        }
    }

    public final void a(ConnectTimeoutException connectTimeoutException) {
        com.smartdigimkt.k4.a aVarA = com.smartdigimkt.k4.b.a(com.anythink.core.common.inner.b.b.f4592i, connectTimeoutException + "");
        com.smartdigimkt.l4.b bVar = this.f44248b;
        if (bVar != null) {
            bVar.a(AVMDLDataLoader.KeyIsEnableEventInfo, "Connect timeout.", aVarA);
        }
    }
}
