package h;

import android.content.SharedPreferences;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;

/* renamed from: h.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1424b {

    /* renamed from: h.b$a */
    public class a implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f50720b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ SharedPreferences f50721c;

        public a(String str, SharedPreferences sharedPreferences) {
            this.f50720b = str;
            this.f50721c = sharedPreferences;
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f50720b).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.connect();
                if (httpURLConnection.getResponseCode() == 200) {
                    JSONObject jSONObject = new JSONObject(AbstractC1424b.b(httpURLConnection.getInputStream()));
                    SharedPreferences.Editor editorEdit = this.f50721c.edit();
                    editorEdit.putInt(AbstractC1425c.f50724c, jSONObject.getInt("gap"));
                    editorEdit.putLong(AbstractC1425c.f50725d, System.currentTimeMillis() + (jSONObject.getInt("expire") * 1000));
                    editorEdit.commit();
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void a(String str, SharedPreferences sharedPreferences) {
        new Thread(new a(str, sharedPreferences)).start();
    }

    public static String b(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                byte[] bArr = new byte[10240];
                while (true) {
                    int i2 = inputStream.read(bArr);
                    if (i2 == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i2);
                }
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            inputStream.close();
            byteArrayOutputStream.close();
        }
        return byteArrayOutputStream.toString();
    }
}
