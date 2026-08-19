package com.czhj.sdk.common.network;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import java.net.InetAddress;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class SigmobRequestUtil {

    public static class DNSResolver implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private String f29413a;

        /* renamed from: b, reason: collision with root package name */
        private InetAddress f29414b;

        public DNSResolver(String str) {
            this.f29413a = str;
        }

        public synchronized InetAddress get() {
            return this.f29414b;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                set(InetAddress.getByName(this.f29413a));
            } catch (Throwable unused) {
            }
        }

        public synchronized void set(InetAddress inetAddress) {
            this.f29414b = inetAddress;
        }
    }

    private SigmobRequestUtil() {
    }

    public static boolean a(String str) {
        try {
            HashSet sigmobServerURLS = Networking.getSigmobServerURLS();
            if (sigmobServerURLS != null) {
                if (sigmobServerURLS.contains(str)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return false;
        }
    }

    public static Map<String, String> convertQueryToMap(Context context, String str) {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(str);
        HashMap map = new HashMap();
        Uri uri = Uri.parse(Networking.getUrlRewriter().rewriteUrl(str));
        for (String str2 : uri.getQueryParameterNames()) {
            map.put(str2, TextUtils.join(",", uri.getQueryParameters(str2)));
        }
        return map;
    }

    public static String generateBodyFromParams(Map<String, String> map, String str) {
        Preconditions.NoThrow.checkNotNull(str);
        if (map == null || map.isEmpty()) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        for (String str2 : map.keySet()) {
            try {
                jSONObject.put(str2, map.get(str2));
            } catch (Throwable unused) {
                SigmobLog.d("Unable to add " + str2 + " to JSON body.");
            }
        }
        return jSONObject.toString();
    }

    public static boolean isConnection(String str) {
        return true;
    }

    public static String truncateQueryParamsIfPost(String str) {
        Preconditions.NoThrow.checkNotNull(str);
        int iIndexOf = str.indexOf(63);
        return iIndexOf == -1 ? str : str.substring(0, iIndexOf);
    }
}
