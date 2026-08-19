package com.byazt.pp;

import android.content.Context;
import android.net.Uri;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.rx.BaseConstants;
import com.byazt.t.jl;
import com.byazt.wm.w;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1041, 28})
/* loaded from: classes3.dex */
public class hp {
    public static boolean hp(Uri uri) {
        if (uri == null) {
            return false;
        }
        String scheme = uri.getScheme();
        if (TextUtils.isEmpty(scheme)) {
            return false;
        }
        return jl.q().optInt("market_url_opt", 1) == 0 ? "market".equals(scheme) : "market".equals(scheme) || "appmarket".equals(scheme) || "oaps".equals(scheme) || "oppomarket".equals(scheme) || "mimarket".equals(scheme) || "vivomarket".equals(scheme) || "vivoMarket".equals(scheme) || "gomarket".equals(scheme) || "goMarket".equals(scheme) || "mstore".equals(scheme) || BaseConstants.MARKET_SCHEME_SAMSUNG.equals(scheme) || "honormarket".equals(scheme) || "prizeappcenter".equals(scheme);
    }

    public static String l(@NonNull Uri uri) {
        String scheme = uri.getScheme();
        List<String> pathSegments = uri.getPathSegments();
        return (jl.q().optInt("market_scheme_opt") == 1 && w.eb() && BaseConstants.MARKET_SCHEME_SAMSUNG.equals(scheme) && pathSegments != null && pathSegments.size() == 1) ? pathSegments.get(0) : l.hp(uri.getQueryParameter("id"), uri.getQueryParameter("packagename"), uri.getQueryParameter("pkg"), uri.getQueryParameter("package_name"), uri.getQueryParameter("appId"));
    }

    public static Uri hp(Context context, String str) {
        String string = Settings.System.getString(context.getContentResolver(), "persit.sys.tid");
        Uri.Builder builder = new Uri.Builder();
        if (w.xs() && jl.q().optInt("enable_honor_market_scheme_opt", 1) == 1) {
            return builder.scheme("honormarket").authority(BaseConstants.MARKET_URI_AUTHORITY_DETAIL).appendQueryParameter("id", str).build();
        }
        if (!TextUtils.isEmpty(string) && jl.q().optInt("enable_persit_market_scheme_opt", 1) == 1) {
            return builder.scheme("prizeappcenter").authority(BaseConstants.MARKET_URI_AUTHORITY_DETAIL).appendQueryParameter("pkg", str).build();
        }
        return Uri.parse(BaseConstants.MARKET_PREFIX.concat(String.valueOf(str)));
    }
}
