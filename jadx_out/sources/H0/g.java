package H0;

import com.flutter.task.flutter_curl_task.DownloadService;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class g extends Thread implements h {

    /* renamed from: b, reason: collision with root package name */
    public final b f120b;

    /* renamed from: c, reason: collision with root package name */
    public final H0.a f121c;

    /* renamed from: d, reason: collision with root package name */
    public volatile boolean f122d = false;

    /* renamed from: e, reason: collision with root package name */
    public int f123e;

    public class a implements H0.a {
        @Override // H0.a
        public void a(String str, int i2, long j2) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            if (i2 < 100) {
                arrayList.add(2);
            } else {
                arrayList.add(3);
                DownloadService.f30750b.remove(str);
            }
            arrayList.add(Integer.valueOf(i2));
            arrayList.add(Long.valueOf(j2));
            arrayList.add(0);
            d.d().i(arrayList);
        }

        @Override // H0.a
        public void onError(String str, String str2) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            arrayList.add(4);
            arrayList.add(0);
            arrayList.add(0);
            arrayList.add(0);
            DownloadService.f30750b.remove(str);
            d.d().i(arrayList);
        }
    }

    public g(b bVar, H0.a aVar) {
        this.f120b = bVar;
        this.f121c = aVar;
    }

    public static h a(b bVar) {
        g gVar = new g(bVar, new a());
        gVar.start();
        return gVar;
    }

    @Override // H0.h
    public void cancel() {
        this.f122d = true;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() throws IOException {
        OkHttpClient okHttpClient = new OkHttpClient();
        try {
            Request.Builder builderUrl = new Request.Builder().url(this.f120b.e());
            HashMap map = new HashMap();
            if (this.f120b.b() != null && !this.f120b.b().isEmpty()) {
                try {
                    JSONObject jSONObject = new JSONObject(this.f120b.b());
                    Iterator<String> itKeys = jSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        map.put(next, jSONObject.getString(next));
                    }
                } catch (JSONException e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            if (this.f120b.b() != null) {
                for (Map.Entry entry : map.entrySet()) {
                    builderUrl.addHeader((String) entry.getKey(), (String) entry.getValue());
                }
            }
            Response responseExecute = okHttpClient.newCall(builderUrl.build()).execute();
            if (!responseExecute.isSuccessful()) {
                this.f121c.onError(this.f120b.a(), "Download failed with HTTP code " + responseExecute.code());
                return;
            }
            long jContentLength = responseExecute.body().getContentLength();
            InputStream inputStreamByteStream = responseExecute.body().byteStream();
            File file = new File(this.f120b.c(), this.f120b.a());
            File parentFile = file.getParentFile();
            if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                this.f121c.onError(this.f120b.a(), "无法创建目录: " + parentFile.getAbsolutePath());
                return;
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[8192];
            long j2 = 0;
            while (true) {
                int i2 = inputStreamByteStream.read(bArr);
                if (i2 == -1) {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    inputStreamByteStream.close();
                    return;
                }
                if (this.f122d) {
                    inputStreamByteStream.close();
                    fileOutputStream.close();
                    file.delete();
                    return;
                } else if (Thread.currentThread().isInterrupted()) {
                    inputStreamByteStream.close();
                    fileOutputStream.close();
                    file.delete();
                    return;
                } else {
                    j2 += i2;
                    fileOutputStream.write(bArr, 0, i2);
                    int i3 = (int) ((100 * j2) / jContentLength);
                    if (i3 > 0 && this.f123e != i3) {
                        this.f123e = i3;
                        this.f121c.a(this.f120b.d(), i3, j2);
                    }
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
            this.f121c.onError(this.f120b.a(), "下载失败: " + e3.getMessage());
        }
    }
}
