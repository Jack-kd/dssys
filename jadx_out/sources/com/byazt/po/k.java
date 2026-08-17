package com.byazt.po;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;

@com.byazt.kj.hp(hp = {0, 1, 212, 42})
/* loaded from: classes3.dex */
public class k {

    @com.byazt.kj.hp(hp = {0, 1, 212, MediaPlayer.MEDIA_PLAYER_OPTION_DOLBY_PRESENTATION_ID})
    public static class hp {
        public InputStream hp;

        /* renamed from: j, reason: collision with root package name */
        public HttpURLConnection f24464j;
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public Map<String, String> f24465l;

        public hp(InputStream inputStream, Map<String, String> map, int i2, HttpURLConnection httpURLConnection) {
            this.hp = inputStream;
            this.f24465l = map;
            this.jx = i2;
            this.f24464j = httpURLConnection;
        }
    }

    public static HttpURLConnection hp(String str, Map<String, String> map) throws IOException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection.setInstanceFollowRedirects(false);
                httpURLConnection.setRequestProperty("accept", "*/*");
                httpURLConnection.setRequestProperty("connection", "Keep-Alive");
                if (map != null && !map.isEmpty()) {
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                    }
                }
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                return ((responseCode < 200 || responseCode >= 300) && responseCode >= 300 && responseCode < 400) ? hp(httpURLConnection.getHeaderField("Location"), map) : httpURLConnection;
            } catch (Exception unused) {
                return httpURLConnection;
            }
        } catch (Exception unused2) {
            return null;
        }
    }

    public static Map<String, String> hp(HttpURLConnection httpURLConnection) {
        HashMap map = new HashMap();
        int size = httpURLConnection.getHeaderFields().size();
        for (int i2 = 0; i2 < size; i2++) {
            map.put(httpURLConnection.getHeaderFieldKey(i2), httpURLConnection.getHeaderField(i2));
        }
        return map;
    }

    public static hp hp(String str, List<com.byazt.fu.jx> list) throws IOException {
        int responseCode;
        HashMap map = new HashMap();
        if (list != null && !list.isEmpty()) {
            for (com.byazt.fu.jx jxVar : list) {
                map.put(jxVar.hp(), jxVar.l());
            }
        }
        HttpURLConnection httpURLConnectionHp = hp(str, map);
        if (httpURLConnectionHp == null || (responseCode = httpURLConnectionHp.getResponseCode()) < 200 || responseCode >= 300) {
            return null;
        }
        Map<String, String> mapHp = hp(httpURLConnectionHp);
        InputStream inputStream = httpURLConnectionHp.getInputStream();
        String contentEncoding = httpURLConnectionHp.getContentEncoding();
        if (!TextUtils.isEmpty(contentEncoding) && contentEncoding.contains("gzip")) {
            inputStream = new GZIPInputStream(inputStream);
        }
        return new hp(inputStream, mapHp, responseCode, httpURLConnectionHp);
    }
}
