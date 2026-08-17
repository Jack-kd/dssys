package com.byazt.tf;

import com.baidu.mobads.sdk.internal.cb;
import com.byazt.nke.a;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 2188, 28})
/* loaded from: classes3.dex */
public class hp implements com.byazt.nke.w<j> {
    private Map<String, String> hp(HttpURLConnection httpURLConnection) {
        HashMap map = new HashMap();
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        for (String str : headerFields.keySet()) {
            List<String> list = headerFields.get(str);
            if (list != null && list.size() > 0) {
                map.put(str, list.get(0));
            }
        }
        return map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v7 */
    @Override // com.byazt.nke.w
    public j<byte[]> call(a aVar) throws Throwable {
        Closeable closeable;
        InputStream inputStream;
        byte[] byteArray;
        ByteArrayOutputStream byteArrayOutputStream;
        String message;
        Closeable closeable2;
        HttpURLConnection httpURLConnection;
        InputStream inputStream2 = null;
        Map<String, String> mapHp = null;
        int i2 = 0;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(aVar.hp()).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setConnectTimeout(5000);
                httpURLConnection.setReadTimeout(5000);
                httpURLConnection.connect();
                inputStream = httpURLConnection.getInputStream();
            } catch (Throwable th) {
                th = th;
            }
            try {
                byte[] bArr = new byte[1024];
                byteArrayOutputStream = new ByteArrayOutputStream();
                while (true) {
                    try {
                        int i3 = inputStream.read(bArr);
                        if (i3 == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, i3);
                    } catch (MalformedURLException e2) {
                        e = e2;
                        byteArray = null;
                    } catch (IOException e3) {
                        e = e3;
                        byteArray = null;
                    }
                }
                i2 = 200;
                byteArray = byteArrayOutputStream.toByteArray();
                try {
                    mapHp = aVar.l() ? hp(httpURLConnection) : null;
                    com.byazt.qkc.l.hp(inputStream);
                    com.byazt.qkc.l.hp(byteArrayOutputStream);
                    message = cb.f11292o;
                } catch (MalformedURLException e4) {
                    e = e4;
                    e.getMessage();
                    message = e.getMessage();
                    closeable2 = byteArrayOutputStream;
                    com.byazt.qkc.l.hp(inputStream);
                    com.byazt.qkc.l.hp(closeable2);
                    return new j<>(i2, byteArray, message, mapHp);
                } catch (IOException e5) {
                    e = e5;
                    e.getMessage();
                    message = e.getMessage();
                    closeable2 = byteArrayOutputStream;
                    com.byazt.qkc.l.hp(inputStream);
                    com.byazt.qkc.l.hp(closeable2);
                    return new j<>(i2, byteArray, message, mapHp);
                }
            } catch (MalformedURLException e6) {
                e = e6;
                byteArray = null;
                byteArrayOutputStream = byteArray;
                e.getMessage();
                message = e.getMessage();
                closeable2 = byteArrayOutputStream;
                com.byazt.qkc.l.hp(inputStream);
                com.byazt.qkc.l.hp(closeable2);
                return new j<>(i2, byteArray, message, mapHp);
            } catch (IOException e7) {
                e = e7;
                byteArray = null;
                byteArrayOutputStream = byteArray;
                e.getMessage();
                message = e.getMessage();
                closeable2 = byteArrayOutputStream;
                com.byazt.qkc.l.hp(inputStream);
                com.byazt.qkc.l.hp(closeable2);
                return new j<>(i2, byteArray, message, mapHp);
            } catch (Throwable th2) {
                th = th2;
                closeable = null;
                inputStream2 = inputStream;
                com.byazt.qkc.l.hp(inputStream2);
                com.byazt.qkc.l.hp(closeable);
                throw th;
            }
        } catch (MalformedURLException e8) {
            e = e8;
            inputStream = null;
            byteArray = null;
        } catch (IOException e9) {
            e = e9;
            inputStream = null;
            byteArray = null;
        } catch (Throwable th3) {
            th = th3;
            closeable = null;
            com.byazt.qkc.l.hp(inputStream2);
            com.byazt.qkc.l.hp(closeable);
            throw th;
        }
        return new j<>(i2, byteArray, message, mapHp);
    }
}
