package com.kwad.framework.filedownloader.a;

import java.io.InputStream;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public interface b {
    Map<String, List<String>> BO();

    Map<String, List<String>> BP();

    void BQ();

    void addHeader(String str, String str2);

    String bW(String str);

    void execute();

    InputStream getInputStream();

    int getResponseCode();
}
