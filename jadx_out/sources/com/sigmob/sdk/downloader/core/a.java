package com.sigmob.sdk.downloader.core;

import java.io.File;

/* loaded from: classes4.dex */
public abstract class a {

    /* renamed from: f, reason: collision with root package name */
    public static final String f37279f = "";

    /* renamed from: g, reason: collision with root package name */
    public static final File f37280g = new File("");

    public boolean a(a aVar) {
        if (i().equals(aVar.i()) && !i().equals("") && !l().equals(f37280g)) {
            if (k().equals(aVar.k())) {
                return true;
            }
            if (!l().equals(aVar.l())) {
                return false;
            }
            String strD = d();
            String strD2 = aVar.d();
            if (strD2 != null && strD != null && strD2.equals(strD)) {
                return true;
            }
        }
        return false;
    }

    public abstract int c();

    public abstract String d();

    public abstract String i();

    public abstract File k();

    public abstract File l();
}
