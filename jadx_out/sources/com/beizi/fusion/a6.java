package com.beizi.fusion;

import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class a6 {
    public static HttpURLConnection a(me meVar) throws ProtocolException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(meVar.a()).openConnection();
        httpURLConnection.setConnectTimeout(10000);
        httpURLConnection.setReadTimeout(10000);
        String strB = meVar.b().b();
        if (strB.equalsIgnoreCase(fm.DOWNLOAD.b()) || strB.equalsIgnoreCase(fm.CACHE_IMAGE.b())) {
            strB = fm.GET.b();
        }
        if (strB.equalsIgnoreCase(fm.STREAM.b())) {
            strB = fm.POST.b();
        }
        httpURLConnection.setRequestMethod(strB);
        httpURLConnection.setInstanceFollowRedirects(false);
        n5 n5VarE = meVar.e();
        if (!n5VarE.isEmpty()) {
            Iterator it = n5VarE.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
        }
        return httpURLConnection;
    }
}
