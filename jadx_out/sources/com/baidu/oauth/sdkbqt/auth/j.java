package com.baidu.oauth.sdkbqt.auth;

import android.os.AsyncTask;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;

/* loaded from: classes2.dex */
public class j extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public a f11824a;

    public interface a {
        void a(long j2);
    }

    public j(a aVar) {
        this.f11824a = aVar;
    }

    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Long doInBackground(String... strArr) throws IOException {
        try {
            URLConnection uRLConnectionOpenConnection = new URL(strArr[0]).openConnection();
            uRLConnectionOpenConnection.setConnectTimeout(3000);
            uRLConnectionOpenConnection.connect();
            return Long.valueOf(uRLConnectionOpenConnection.getDate() / 1000);
        } catch (Exception e2) {
            o.d.c(e2);
            return 0L;
        }
    }

    @Override // android.os.AsyncTask
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(Long l2) {
        a aVar = this.f11824a;
        if (aVar != null) {
            aVar.a(l2.longValue());
        }
    }
}
