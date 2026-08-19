package com.byazt.uz;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

@com.byazt.kj.hp(hp = {0, 1, 900, 28})
/* loaded from: classes3.dex */
public class hp implements j {
    public final HttpURLConnection hp;

    public hp(HttpURLConnection httpURLConnection) {
        this.hp = httpURLConnection;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.hp.disconnect();
    }

    @Override // com.byazt.uz.j
    public boolean hp() {
        try {
            return this.hp.getResponseCode() / 100 == 2;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // com.byazt.uz.j
    public String j() {
        try {
            if (hp()) {
                return null;
            }
            return "Unable to fetch " + this.hp.getURL() + ". Failed with " + this.hp.getResponseCode() + "\n" + hp(this.hp);
        } catch (IOException e2) {
            com.byazt.ze.a.hp("get error failed ", e2);
            return e2.getMessage();
        }
    }

    @Override // com.byazt.uz.j
    public String jx() {
        return this.hp.getContentType();
    }

    @Override // com.byazt.uz.j
    public InputStream l() throws IOException {
        return this.hp.getInputStream();
    }

    private String hp(HttpURLConnection httpURLConnection) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line != null) {
                    sb.append(line);
                    sb.append('\n');
                } else {
                    try {
                        break;
                    } catch (Exception unused) {
                    }
                }
            } finally {
                try {
                    bufferedReader.close();
                } catch (Exception unused2) {
                }
            }
        }
        return sb.toString();
    }
}
