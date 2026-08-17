package com.anythink.core.common.m.b;

/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public static final String f5639a = "placement_strategy";

    /* renamed from: b, reason: collision with root package name */
    public static final String f5640b = "app_strategy";

    /* renamed from: c, reason: collision with root package name */
    public static final String f5641c = "eu_traffic";

    /* renamed from: d, reason: collision with root package name */
    public static final String f5642d = "get_area";

    /* renamed from: e, reason: collision with root package name */
    public static final String f5643e = "get_plugin";

    /* renamed from: f, reason: collision with root package name */
    public static final String f5644f = "get_cdn_domain";

    /* renamed from: g, reason: collision with root package name */
    public static final String f5645g = "tracking";

    /* renamed from: h, reason: collision with root package name */
    public static final String f5646h = "agent";

    /* renamed from: i, reason: collision with root package name */
    public static final String f5647i = "bid";

    /* renamed from: j, reason: collision with root package name */
    public static final String f5648j = "request";

    /* renamed from: k, reason: collision with root package name */
    public static final String f5649k = "smart_wf";

    /* renamed from: l, reason: collision with root package name */
    public static final String f5650l = "s2s_reward";

    /* renamed from: m, reason: collision with root package name */
    public static final String f5651m = "user_dau_strategy";

    /* renamed from: n, reason: collision with root package name */
    public static final String f5652n = "heartbeat_strategy";

    public static int a(String str) {
        str.getClass();
        switch (str) {
            case "s2s_reward":
                return 4;
            case "bid":
                return 3;
            case "placement_strategy":
                return 2;
            case "request":
                return 5;
            case "app_strategy":
                return 1;
            default:
                return 0;
        }
    }
}
