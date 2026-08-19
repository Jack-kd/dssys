package com.smartdigimkt.w2;

import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.regex.Pattern;

/* loaded from: classes5.dex */
public abstract class h {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f44887a = {"atwt:"};

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f44888b = Pattern.compile("atwt://(.+?)#(.+?)/(.+?)(\\?(.*?))?");

    /* renamed from: c, reason: collision with root package name */
    public static final HashMap f44889c = new HashMap();

    static {
        for (int i2 : com.smartdigimkt.k.u.b(9)) {
            f44889c.put(com.smartdigimkt.g1.b.b(i2), com.smartdigimkt.g1.b.a(i2));
        }
    }

    public static String a(String str) {
        String path;
        int iLastIndexOf;
        String str2 = (String) f44889c.get((TextUtils.isEmpty(str) || (path = Uri.parse(str).getPath()) == null || (iLastIndexOf = path.lastIndexOf(com.anythink.core.common.d.i.f2495E)) == -1) ? "" : path.substring(iLastIndexOf + 1));
        return str2 == null ? "" : str2;
    }
}
