package com.sigmob.sdk.base;

import com.czhj.sdk.common.ClientMetadata;

/* loaded from: classes4.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    private static final String f36278a = "sig_ad";

    /* renamed from: b, reason: collision with root package name */
    private static final String f36279b = "sig_close";

    /* renamed from: c, reason: collision with root package name */
    private static final String f36280c = "sig_back";

    /* renamed from: d, reason: collision with root package name */
    private static final String f36281d = "sig_skip_args_1";

    /* renamed from: e, reason: collision with root package name */
    private static final String f36282e = "sig_skip_args_2";

    /* renamed from: f, reason: collision with root package name */
    private static final String f36283f = "sig_skip_ad_args";

    /* renamed from: g, reason: collision with root package name */
    private static final String f36284g = "sig_close_args";

    /* renamed from: h, reason: collision with root package name */
    private static final String f36285h = "sig_close_ad_title";

    /* renamed from: i, reason: collision with root package name */
    private static final String f36286i = "sig_close_ad_message";

    /* renamed from: j, reason: collision with root package name */
    private static final String f36287j = "sig_close_ad_cancel";

    /* renamed from: k, reason: collision with root package name */
    private static final String f36288k = "sig_close_ad_ok";

    /* renamed from: l, reason: collision with root package name */
    private static final String f36289l = "sig_custom_dialog";

    /* renamed from: m, reason: collision with root package name */
    private static final String f36290m = "sig_dialog_window_anim";

    /* renamed from: n, reason: collision with root package name */
    private static final String f36291n = "sig_transparent_style";

    /* renamed from: o, reason: collision with root package name */
    private static final String f36292o = "sig_base_theme";

    /* renamed from: p, reason: collision with root package name */
    private static final String f36293p = "sig_land_theme";

    /* renamed from: q, reason: collision with root package name */
    private static final String f36294q = "sig_transparent_lang";

    /* renamed from: r, reason: collision with root package name */
    private static final String f36295r = "sig_custom_fullscreen_dialog";

    public static int a() {
        return ClientMetadata.getInstance().getStyleResources(f36294q);
    }

    public static int b() {
        return ClientMetadata.getInstance().getStyleResources(f36292o);
    }

    public static int c() {
        return ClientMetadata.getInstance().getStyleResources(f36293p);
    }

    public static int d() {
        return ClientMetadata.getInstance().getStyleResources(f36291n);
    }

    public static int e() {
        return ClientMetadata.getInstance().getStyleResources(f36289l);
    }

    public static int f() {
        ClientMetadata clientMetadata = ClientMetadata.getInstance();
        return clientMetadata.getStyleResources(clientMetadata.getDisplayMetrics().widthPixels > clientMetadata.getDisplayMetrics().heightPixels ? f36295r : f36289l);
    }

    public static int g() {
        return ClientMetadata.getInstance().getStyleResources(f36290m);
    }

    public static String h() {
        return ClientMetadata.getInstance().getStringResources(f36278a, "广告");
    }

    public static String i() {
        return ClientMetadata.getInstance().getStringResources(f36279b, "跳过");
    }

    public static String j() {
        return ClientMetadata.getInstance().getStringResources(f36280c, "返回");
    }

    public static String k() {
        return ClientMetadata.getInstance().getStringResources(f36286i, "仅需再浏览 _SEC_ 秒广告，即可领取奖励");
    }

    public static String l() {
        return ClientMetadata.getInstance().getStringResources(f36285h, "要放弃领取奖励吗?");
    }

    public static String m() {
        return ClientMetadata.getInstance().getStringResources(f36287j, "继续观看");
    }

    public static String n() {
        return ClientMetadata.getInstance().getStringResources(f36288k, "关闭广告");
    }

    public static String a(Object... objArr) {
        return ClientMetadata.getInstance().getStringResources(f36281d, "跳过 %d", objArr);
    }

    public static String b(Object... objArr) {
        return ClientMetadata.getInstance().getStringResources(f36282e, "%d 跳过", objArr);
    }

    public static String c(Object... objArr) {
        return ClientMetadata.getInstance().getStringResources(f36283f, "跳过广告 %d", objArr);
    }

    public static String d(Object... objArr) {
        return ClientMetadata.getInstance().getStringResources(f36284g, "%s 跳过", objArr);
    }
}
