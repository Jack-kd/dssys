package com.umeng.commonsdk.vchannel;

/* loaded from: classes5.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static String f50517a = "https://pslog.umeng.com";

    /* renamed from: b, reason: collision with root package name */
    public static String f50518b = "https://pslog.umeng.com/";

    /* renamed from: c, reason: collision with root package name */
    public static String f50519c = "explog";

    /* renamed from: d, reason: collision with root package name */
    public static final String f50520d = "analytics";

    /* renamed from: e, reason: collision with root package name */
    public static final String f50521e = "ekv";

    /* renamed from: f, reason: collision with root package name */
    public static final String f50522f = "id";

    /* renamed from: g, reason: collision with root package name */
    public static final String f50523g = "ts";

    /* renamed from: h, reason: collision with root package name */
    public static final String f50524h = "ds";

    /* renamed from: i, reason: collision with root package name */
    public static final String f50525i = "pn";

    /* renamed from: j, reason: collision with root package name */
    public static String f50526j = "";

    static {
        String str = "SUB" + System.currentTimeMillis();
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(String.format("%0" + (32 - str.length()) + "d", 0));
        f50526j = sb.toString();
    }
}
