package com.sigmob.sdk.downloader.core.connection;

import java.io.IOException;
import java.io.InputStream;
import java.net.ProtocolException;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public interface a {

    /* renamed from: a, reason: collision with root package name */
    public static final int f37394a = 0;

    /* renamed from: com.sigmob.sdk.downloader.core.connection.a$a, reason: collision with other inner class name */
    public interface InterfaceC0769a {
        String c(String str);

        int d() throws IOException;

        InputStream e() throws IOException;

        Map<String, List<String>> f();

        String g();
    }

    public interface b {
        a a(String str) throws IOException;
    }

    InterfaceC0769a a() throws IOException;

    void a(String str, String str2);

    boolean a(String str) throws ProtocolException;

    String b(String str);

    void b();

    Map<String, List<String>> c();
}
