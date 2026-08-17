package com.byazt.jnq;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.byazt.jz.sz;
import com.byazt.ton.w;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.fourthline.cling.model.ServiceReference;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TRAN_CONNECT_TIME, 28})
/* loaded from: classes.dex */
public class hp {
    public static int delete(Context context, String str, String str2, String[] strArr) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            ContentResolver contentResolverHp = hp(context);
            if (contentResolverHp != null) {
                return contentResolverHp.delete(hp(Uri.parse(hp(str) + str), str), str2, strArr);
            }
        } catch (Throwable unused) {
        }
        return 0;
    }

    private static ContentResolver hp(Context context) {
        if (context == null) {
            try {
                context = sz.getContext();
            } catch (Throwable unused) {
                return null;
            }
        }
        return context.getContentResolver();
    }

    public static void insert(Context context, String str, ContentValues contentValues) {
        if (contentValues == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            ContentResolver contentResolverHp = hp(context);
            if (contentResolverHp != null) {
                contentResolverHp.insert(hp(Uri.parse(hp(str) + str), str), contentValues);
            }
        } catch (Throwable unused) {
        }
    }

    private static boolean l(String str) {
        return TextUtils.equals(str, "setting_global_info") || TextUtils.equals(str, "setting_base_info") || TextUtils.equals(str, "setting_rit");
    }

    public static Cursor query(Context context, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            ContentResolver contentResolverHp = hp(context);
            if (contentResolverHp != null) {
                return contentResolverHp.query(hp(Uri.parse(hp(str) + str), str), strArr, str2, strArr2, str5);
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static int update(Context context, String str, ContentValues contentValues, String str2, String[] strArr) {
        if (contentValues != null && !TextUtils.isEmpty(str)) {
            try {
                ContentResolver contentResolverHp = hp(context);
                if (contentResolverHp != null) {
                    return contentResolverHp.update(hp(Uri.parse(hp(str) + str), str), contentValues, str2, strArr);
                }
            } catch (Throwable unused) {
            }
        }
        return 0;
    }

    private static String hp(String str) {
        String str2;
        if (com.byazt.pd.l.hp(str)) {
            str2 = "ttopensdk2.db";
        } else {
            str2 = "ttopensdk.db";
        }
        return w.f25971l + "/t_db/" + str2 + ServiceReference.DELIMITER;
    }

    public static void hp(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            ContentResolver contentResolverHp = hp(context);
            if (contentResolverHp != null) {
                contentResolverHp.getType(hp(Uri.parse(hp(str2) + "unknown/execSQL?sql=" + Uri.encode(str)), str2));
            }
        } catch (Throwable unused) {
        }
    }

    public static Uri hp(Uri uri, String str) {
        String strValueOf;
        if (uri == null) {
            return uri;
        }
        try {
            Uri.Builder builderBuildUpon = uri.buildUpon();
            if (l(str)) {
                strValueOf = "1";
            } else {
                strValueOf = String.valueOf(com.byazt.wu.hp.w());
            }
            builderBuildUpon.appendQueryParameter("layerType", strValueOf);
            return builderBuildUpon.build();
        } catch (Throwable unused) {
            return uri;
        }
    }
}
