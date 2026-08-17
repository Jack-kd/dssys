package J0;

import android.text.TextUtils;
import com.umeng.analytics.pro.ca;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class b {
    public static File a(File file, String str, I0.a aVar) throws IOException {
        File file2 = new File(file, str);
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file2, false));
        bufferedWriter.write("#EXTM3U\n");
        bufferedWriter.write("#EXT-X-VERSION:3\n");
        bufferedWriter.write("#EXT-X-MEDIA-SEQUENCE:0\n");
        bufferedWriter.write("#EXT-X-TARGETDURATION:" + aVar.g() + "\n");
        if (aVar.f() != null && !aVar.f().trim().isEmpty()) {
            bufferedWriter.write("#EXT-X-PLAYLIST-TYPE:" + aVar.f() + "\n");
        }
        for (I0.b bVar : aVar.i()) {
            bufferedWriter.write("#EXTINF:" + bVar.c() + ",\n");
            if (bVar.e()) {
                bufferedWriter.write("#EXT-X-DISCONTINUITY\n");
            }
            StringBuilder sb = new StringBuilder();
            sb.append(aVar.h() != null ? aVar.h() + ServiceReference.DELIMITER : "");
            sb.append(bVar.f());
            bufferedWriter.write(sb.toString());
            bufferedWriter.newLine();
        }
        bufferedWriter.write("#EXT-X-ENDLIST");
        bufferedWriter.flush();
        bufferedWriter.close();
        return file2;
    }

    public static HttpURLConnection b(URL url, String str) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        e(httpURLConnection, str);
        httpURLConnection.setConnectTimeout(ca.f49002b);
        httpURLConnection.setReadTimeout(ca.f49002b);
        httpURLConnection.setInstanceFollowRedirects(true);
        return httpURLConnection;
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0188, code lost:
    
        throw new java.io.IOException("key下载失败");
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01f4, code lost:
    
        r18 = r2;
        r20 = r5;
        r19 = r6;
        r2 = r13.indexOf("?");
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0203, code lost:
    
        if (r2 <= (-1)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0205, code lost:
    
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x020e, code lost:
    
        if (r13.substring(0, r2).contains(".m3u8") == false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0210, code lost:
    
        r1 = r4 + r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0223, code lost:
    
        if (r13.startsWith("http") == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x022a, code lost:
    
        if (r13.startsWith(org.fourthline.cling.model.ServiceReference.DELIMITER) == false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x022c, code lost:
    
        r13 = r18.getProtocol() + "://" + r18.getHost() + r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x024a, code lost:
    
        r13 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x024f, code lost:
    
        return c(r13, r22);
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0250, code lost:
    
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0255, code lost:
    
        if (r13.contains(".m3u8") == false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0257, code lost:
    
        r1 = r4 + r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x026a, code lost:
    
        if (r13.startsWith("http") == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0271, code lost:
    
        if (r13.startsWith(org.fourthline.cling.model.ServiceReference.DELIMITER) == false) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0273, code lost:
    
        r13 = r18.getProtocol() + "://" + r18.getHost() + r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0291, code lost:
    
        r13 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0296, code lost:
    
        return c(r13, r22);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static I0.a c(java.lang.String r21, java.lang.String r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 698
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: J0.b.c(java.lang.String, java.lang.String):I0.a");
    }

    public static void d(String str, String str2) throws IOException {
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(new File(str2)));
        bufferedWriter.write(str);
        bufferedWriter.flush();
        bufferedWriter.close();
    }

    public static void e(HttpURLConnection httpURLConnection, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                httpURLConnection.setRequestProperty(next, jSONObject.getString(next));
            }
            httpURLConnection.setDoInput(true);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }
}
