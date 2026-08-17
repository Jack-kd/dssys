package com.umeng.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.analytics.pro.be;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.utils.UMUtils;

/* loaded from: classes5.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static String f49840a = null;

    /* renamed from: b, reason: collision with root package name */
    private static final String f49841b = "umeng+";

    /* renamed from: c, reason: collision with root package name */
    private static final String f49842c = "ek__id";

    /* renamed from: d, reason: collision with root package name */
    private static final String f49843d = "ek_key";

    /* renamed from: e, reason: collision with root package name */
    private static String f49844e = "";

    /* renamed from: f, reason: collision with root package name */
    private static final String f49845f = be.b().b(be.f48811n);

    /* renamed from: g, reason: collision with root package name */
    private static String f49846g = "";

    /* renamed from: h, reason: collision with root package name */
    private static a f49847h;

    private a() {
    }

    public static a a() {
        if (f49847h == null) {
            synchronized (a.class) {
                try {
                    if (f49847h == null) {
                        f49847h = new a();
                    }
                } finally {
                }
            }
        }
        return f49847h;
    }

    private String c(String str) {
        String string = "";
        try {
            String strSubstring = str.substring(1, 9);
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < strSubstring.length(); i2++) {
                char cCharAt = strSubstring.charAt(i2);
                if (!Character.isDigit(cCharAt)) {
                    sb.append(cCharAt);
                } else if (Integer.parseInt(Character.toString(cCharAt)) == 0) {
                    sb.append(0);
                } else {
                    sb.append(10 - Integer.parseInt(Character.toString(cCharAt)));
                }
            }
            string = sb.toString();
            return string + new StringBuilder(string).reverse().toString();
        } catch (Throwable unused) {
            return string;
        }
    }

    public String b(String str) {
        String str2;
        try {
            return TextUtils.isEmpty(f49840a) ? str : new String(DataHelper.decrypt(Base64.decode(str.getBytes(), 0), f49840a.getBytes()));
        } catch (Exception unused) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败!");
            String str3 = null;
            if (TextUtils.isEmpty(f49844e)) {
                return null;
            }
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败，换老秘钥重试");
            try {
                str2 = new String(DataHelper.decrypt(Base64.decode(str.getBytes(), 0), f49844e.getBytes()));
            } catch (Exception unused2) {
            }
            try {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败，换老秘钥重试成功。");
                return str2;
            } catch (Exception unused3) {
                str3 = str2;
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败，换老秘钥重试失败。换子进程备份key重试。");
                try {
                    String str4 = new String(DataHelper.decrypt(Base64.decode(str.getBytes(), 0), f49846g.getBytes()));
                    try {
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败，子进程备份key重试成功。");
                        return str4;
                    } catch (Throwable unused4) {
                        str3 = str4;
                        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败，子进程备份key重试失败。");
                        return str3;
                    }
                } catch (Throwable unused5) {
                }
            }
        }
    }

    public void a(Context context) {
        try {
            if (TextUtils.isEmpty(f49840a)) {
                String multiProcessSP = UMUtils.getMultiProcessSP(context, f49842c);
                if (!TextUtils.isEmpty(multiProcessSP)) {
                    f49844e = c(multiProcessSP);
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>> primaryKey: " + f49844e);
                }
                SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f49845f, 0);
                if (sharedPreferences != null) {
                    f49846g = sharedPreferences.getString(f49842c, null);
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 子进程备份秘钥：主进程key: " + f49846g);
                }
                f49840a = c(UMUtils.genId());
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>> 正式秘钥：key: " + f49840a);
            }
        } catch (Throwable unused) {
        }
    }

    public String a(String str) {
        try {
            return TextUtils.isEmpty(f49840a) ? str : Base64.encodeToString(DataHelper.encrypt(str.getBytes(), f49840a.getBytes()), 0);
        } catch (Exception unused) {
            return null;
        }
    }
}
