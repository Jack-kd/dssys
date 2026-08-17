package com.anythink.core.common.m.a.a;

import android.os.Build;
import com.anythink.core.common.m.a.k;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

/* loaded from: classes2.dex */
public final class c extends k {

    /* renamed from: a, reason: collision with root package name */
    private final HttpURLConnection f5526a;

    /* renamed from: b, reason: collision with root package name */
    private final InputStream f5527b;

    public c(HttpURLConnection httpURLConnection, InputStream inputStream) {
        this.f5526a = httpURLConnection;
        this.f5527b = inputStream;
    }

    @Override // com.anythink.core.common.m.a.k
    public final long a() {
        try {
            if (this.f5527b == null || Build.VERSION.SDK_INT < 33) {
                return 0L;
            }
            return r0.readAllBytes().length;
        } catch (Throwable unused) {
            return 0L;
        }
    }

    @Override // com.anythink.core.common.m.a.k
    public final String b() {
        return a(false);
    }

    @Override // com.anythink.core.common.m.a.k
    public final String c() {
        return a(true);
    }

    private String a(boolean z2) throws Throwable {
        InputStreamReader inputStreamReader;
        if (this.f5527b == null) {
            try {
                HttpURLConnection httpURLConnection = this.f5526a;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                    return "";
                }
                return "";
            } catch (Throwable unused) {
                return "";
            }
        }
        BufferedReader bufferedReader = null;
        try {
            inputStreamReader = new InputStreamReader(this.f5527b);
            try {
                BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader);
                try {
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String line = bufferedReader2.readLine();
                        if (line != null) {
                            sb.append(line);
                            if (z2) {
                                sb.append('\n');
                            }
                        } else {
                            try {
                                break;
                            } catch (Throwable unused2) {
                            }
                        }
                    }
                    bufferedReader2.close();
                    try {
                        inputStreamReader.close();
                    } catch (Throwable unused3) {
                    }
                    try {
                        InputStream inputStream = this.f5527b;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        HttpURLConnection httpURLConnection2 = this.f5526a;
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                    } catch (Throwable unused4) {
                    }
                    return sb.toString();
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable unused5) {
                        }
                    }
                    if (inputStreamReader != null) {
                        try {
                            inputStreamReader.close();
                        } catch (Throwable unused6) {
                        }
                    }
                    try {
                        InputStream inputStream2 = this.f5527b;
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                        HttpURLConnection httpURLConnection3 = this.f5526a;
                        if (httpURLConnection3 != null) {
                            httpURLConnection3.disconnect();
                            throw th;
                        }
                        throw th;
                    } catch (Throwable unused7) {
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStreamReader = null;
        }
    }
}
