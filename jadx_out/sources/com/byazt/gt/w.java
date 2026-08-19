package com.byazt.gt;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.work.PeriodicWorkRequest;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.bv;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_MIN_JITTER_BUFFER, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w {
    public static String hp(Context context) {
        if (context == null) {
            return null;
        }
        SharedPreferences sharedPreferencesL = com.byazt.rz.l.l(context, "applog_net_cache.dat", 0);
        if (System.currentTimeMillis() - sharedPreferencesL.getLong("start_mills", 0L) < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
            String string = sharedPreferencesL.getString(bv.f48890Q, null);
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
        }
        String strL = l(context);
        SharedPreferences.Editor editorEdit = sharedPreferencesL.edit();
        if (!TextUtils.isEmpty(strL)) {
            editorEdit.putString(bv.f48890Q, strL);
        }
        editorEdit.putLong("start_mills", System.currentTimeMillis());
        editorEdit.apply();
        return strL;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String l(android.content.Context r3) {
        /*
            r0 = 0
            java.lang.String r1 = "connectivity"
            java.lang.Object r1 = r3.getSystemService(r1)     // Catch: java.lang.SecurityException -> Le java.lang.Throwable -> L12
            android.net.ConnectivityManager r1 = (android.net.ConnectivityManager) r1     // Catch: java.lang.SecurityException -> Le java.lang.Throwable -> L12
            android.net.NetworkInfo r1 = r1.getActiveNetworkInfo()     // Catch: java.lang.SecurityException -> Le java.lang.Throwable -> L12
            goto L13
        Le:
            r1 = move-exception
            com.byazt.gt.e.l(r1)
        L12:
            r1 = r0
        L13:
            if (r1 == 0) goto L41
            boolean r2 = r1.isAvailable()
            if (r2 == 0) goto L41
            int r1 = r1.getType()
            r2 = 1
            if (r2 != r1) goto L25
            java.lang.String r0 = "wifi"
            goto L41
        L25:
            if (r1 != 0) goto L41
            java.lang.String r0 = "phone"
            java.lang.Object r3 = r3.getSystemService(r0)
            android.telephony.TelephonyManager r3 = (android.telephony.TelephonyManager) r3
            int r3 = r3.getNetworkType()
            switch(r3) {
                case 1: goto L3f;
                case 2: goto L3f;
                case 3: goto L3c;
                case 4: goto L3f;
                case 5: goto L3c;
                case 6: goto L3c;
                case 7: goto L3f;
                case 8: goto L3c;
                case 9: goto L3c;
                case 10: goto L3c;
                case 11: goto L3f;
                case 12: goto L3c;
                case 13: goto L39;
                case 14: goto L3c;
                case 15: goto L3c;
                case 16: goto L3f;
                case 17: goto L3c;
                case 18: goto L39;
                case 19: goto L39;
                default: goto L36;
            }
        L36:
            java.lang.String r0 = "mobile"
            goto L41
        L39:
            java.lang.String r0 = "4g"
            goto L41
        L3c:
            java.lang.String r0 = "3g"
            goto L41
        L3f:
            java.lang.String r0 = "2g"
        L41:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.gt.w.l(android.content.Context):java.lang.String");
    }
}
