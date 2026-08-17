package com.byazt.ml;

import com.byazt.uhg.e;
import com.byazt.uhg.xs;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

@com.byazt.kj.hp(hp = {0, 1, 449, 94})
/* loaded from: classes3.dex */
public class eb extends xs {
    public HttpURLConnection hp;

    /* renamed from: l, reason: collision with root package name */
    public InputStream f23076l;

    public eb(HttpURLConnection httpURLConnection) throws IOException {
        this.hp = httpURLConnection;
        this.f23076l = new w(httpURLConnection.getInputStream(), httpURLConnection);
    }

    @Override // com.byazt.uhg.xs, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.f23076l.close();
            this.hp.disconnect();
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.uhg.xs
    public long hp() {
        try {
            return this.hp.getContentLength();
        } catch (Exception unused) {
            return 0L;
        }
    }

    @Override // com.byazt.uhg.xs
    public byte[] j() throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            byte[] bArr = new byte[1024];
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            while (true) {
                try {
                    int i2 = this.f23076l.read(bArr);
                    if (i2 == -1) {
                        break;
                    }
                    byteArrayOutputStream2.write(bArr, 0, i2);
                } catch (Exception unused) {
                    byteArrayOutputStream = byteArrayOutputStream2;
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Throwable unused2) {
                        }
                    }
                    return new byte[0];
                } catch (Throwable th) {
                    th = th;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Throwable unused3) {
                        }
                    }
                    throw th;
                }
            }
            byte[] byteArray = byteArrayOutputStream2.toByteArray();
            try {
                byteArrayOutputStream2.close();
            } catch (Throwable unused4) {
            }
            return byteArray;
        } catch (Exception unused5) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // com.byazt.uhg.xs
    public InputStream jx() {
        return this.f23076l;
    }

    @Override // com.byazt.uhg.xs
    public String l() throws IOException {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.f23076l));
            StringBuffer stringBuffer = new StringBuffer();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    String string = stringBuffer.toString();
                    close();
                    return string;
                }
                stringBuffer.append(line + "\n");
            }
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // com.byazt.uhg.xs
    public e w() {
        if (this.hp.getContentType() != null) {
            return e.hp(this.hp.getContentType());
        }
        return null;
    }
}
