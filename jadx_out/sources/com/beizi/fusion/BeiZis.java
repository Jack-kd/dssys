package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.RequiresPermission;
import java.util.Map;

/* loaded from: classes2.dex */
public class BeiZis {

    /* renamed from: a, reason: collision with root package name */
    private static BeiZiCustomController f12515a = null;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f12516b = false;

    /* renamed from: c, reason: collision with root package name */
    private static String f12517c = "1.0.25";

    /* renamed from: d, reason: collision with root package name */
    private static boolean f12518d = true;

    /* renamed from: e, reason: collision with root package name */
    private static boolean f12519e = false;

    /* renamed from: f, reason: collision with root package name */
    private static boolean f12520f = false;

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public static void asyncInit(Context context, String str) {
        f12518d = false;
        q1.i().a(context, str, null, null);
    }

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public static void asyncInitWithDomain(Context context, String str, String str2) {
        f12518d = false;
        if (TextUtils.isEmpty(str2)) {
            q1.i().a(context, str, null, null);
        } else {
            q1.i().b(str2).a(context, str, null, null);
        }
    }

    public static void closeShakeAd() {
        f12520f = true;
    }

    public static String getBidToken(String str) {
        return q1.i().a(str);
    }

    public static BeiZiCustomController getCustomController() {
        return f12515a;
    }

    public static String getOaidVersion() {
        return f12517c;
    }

    public static String getSdkVersion() {
        return "5.5.0.3";
    }

    public static boolean getTransferProtocol() {
        return f12519e;
    }

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public static void init(Context context, String str) {
        q1.i().a(context, str, null, null);
    }

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public static void initWithDomain(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            q1.i().a(context, str, null, null);
        } else {
            q1.i().b(str2).a(context, str, null, null);
        }
    }

    public static boolean isCloseShakeAd() {
        return f12520f;
    }

    public static boolean isIsSyncInit() {
        return f12518d;
    }

    public static boolean isLimitPersonalAds() {
        return f12516b;
    }

    public static void setAnyCustomExt(Map<String, Object> map) {
        q1.i().a(map);
    }

    public static void setLimitPersonalAds(boolean z2) {
        f12516b = z2;
    }

    public static void setOaidVersion(String str) {
        f12517c = str;
    }

    public static void setSupportPersonalized(boolean z2) {
        dl.a(z2);
    }

    public static void setTransferProtocol(boolean z2) {
        f12519e = z2;
    }

    public static void setUserAgent(String str) {
        uf.a().a(str);
    }

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public static void init(Context context, String str, BeiZiCustomController beiZiCustomController) {
        f12515a = beiZiCustomController;
        q1.i().a(context, str, null, null);
    }

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public static void asyncInit(Context context, String str, BeiZiInitCallBack beiZiInitCallBack) {
        f12518d = false;
        q1.i().b(beiZiInitCallBack);
        q1.i().a(context, str, null, null);
    }

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public static void init(Context context, String str, BeiZiCustomController beiZiCustomController, String str2) {
        f12515a = beiZiCustomController;
        q1.i().a(context, str, str2, null);
    }

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public static void asyncInitWithDomain(Context context, String str, String str2, BeiZiInitCallBack beiZiInitCallBack) {
        f12518d = false;
        q1.i().b(beiZiInitCallBack);
        if (!TextUtils.isEmpty(str2)) {
            q1.i().b(str2).a(context, str, null, null);
        } else {
            q1.i().a(context, str, null, null);
        }
    }

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public static void asyncInit(Context context, String str, BeiZiCustomController beiZiCustomController) {
        f12515a = beiZiCustomController;
        f12518d = false;
        q1.i().a(context, str, null, null);
    }

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public static void init(Context context, String str, BeiZiCustomController beiZiCustomController, String str2, String str3) {
        f12515a = beiZiCustomController;
        q1.i().a(context, str, str2, str3);
    }

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public static void asyncInit(Context context, String str, BeiZiCustomController beiZiCustomController, BeiZiInitCallBack beiZiInitCallBack) {
        f12515a = beiZiCustomController;
        f12518d = false;
        q1.i().b(beiZiInitCallBack);
        q1.i().a(context, str, null, null);
    }

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public static void asyncInit(Context context, String str, BeiZiCustomController beiZiCustomController, String str2) {
        f12515a = beiZiCustomController;
        f12518d = false;
        q1.i().a(context, str, str2, null);
    }

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public static void asyncInit(Context context, String str, BeiZiCustomController beiZiCustomController, String str2, BeiZiInitCallBack beiZiInitCallBack) {
        f12515a = beiZiCustomController;
        f12518d = false;
        q1.i().b(beiZiInitCallBack);
        q1.i().a(context, str, str2, null);
    }

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public static void asyncInit(Context context, String str, BeiZiCustomController beiZiCustomController, String str2, String str3) {
        f12515a = beiZiCustomController;
        f12518d = false;
        q1.i().a(context, str, str2, str3);
    }

    @RequiresPermission(com.kuaishou.weapon.p0.g.f31159a)
    public static void asyncInit(Context context, String str, BeiZiCustomController beiZiCustomController, String str2, String str3, BeiZiInitCallBack beiZiInitCallBack) {
        f12515a = beiZiCustomController;
        f12518d = false;
        q1.i().b(beiZiInitCallBack);
        q1.i().a(context, str, str2, str3);
    }
}
