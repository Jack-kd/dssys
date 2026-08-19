package com.byazt.uz;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

@com.byazt.kj.hp(hp = {0, 1, 900, 34})
/* loaded from: classes3.dex */
public class l implements a {
    @Override // com.byazt.uz.a
    public j hp(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.connect();
        return new hp(httpURLConnection);
    }
}
