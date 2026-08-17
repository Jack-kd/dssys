package com.sigmob.sdk.mraid;

import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import com.sigmob.sdk.mraid.C1310b;
import com.sigmob.windad.WindAdError;
import java.net.URI;
import java.util.Map;

/* renamed from: com.sigmob.sdk.mraid.d, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public interface InterfaceC1312d {
    void a();

    void a(int i2, int i3, int i4, int i5, C1310b.a aVar, boolean z2);

    void a(WindAdError windAdError);

    void a(String str, Map<String, String> map);

    void a(URI uri);

    void a(URI uri, int i2, String str);

    void a(URI uri, boolean z2) throws C1314f;

    void a(boolean z2);

    void a(boolean z2, p pVar) throws C1314f;

    boolean a(ConsoleMessage consoleMessage);

    boolean a(String str, JsResult jsResult);

    void b();

    void b(String str, Map<String, String> map);

    void b(boolean z2);

    void c();

    void d();

    void e();

    void f();

    void g();
}
