package com.sigmob.sdk.downloader;

import com.sigmob.sdk.downloader.core.connection.a;
import java.io.IOException;
import java.net.ProtocolException;

/* loaded from: classes4.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public static final int f37725a = 10;

    /* renamed from: b, reason: collision with root package name */
    static final int f37726b = 307;

    /* renamed from: c, reason: collision with root package name */
    static final int f37727c = 308;

    public static String a(a.InterfaceC0769a interfaceC0769a, int i2) throws IOException {
        String strC = interfaceC0769a.c("Location");
        if (strC != null) {
            return strC;
        }
        throw new ProtocolException("Response code is " + i2 + " but can't find Location field");
    }

    public static boolean a(int i2) {
        return i2 == 301 || i2 == 302 || i2 == 303 || i2 == 300 || i2 == 307 || i2 == 308;
    }
}
