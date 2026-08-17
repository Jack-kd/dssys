package com.byazt.oda;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.anythink.core.common.f.f;
import com.byazt.pg.r;
import com.byazt.ykc.SSWebView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_RES_HEADERS, 45})
/* loaded from: classes3.dex */
public class e {
    public static volatile String hp = "";

    /* renamed from: l, reason: collision with root package name */
    public static final AtomicBoolean f23980l = new AtomicBoolean(false);

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_RES_HEADERS, 1252})
    /* renamed from: com.byazt.oda.e$2, reason: invalid class name */
    public static class AnonymousClass2 implements Runnable {
        public final /* synthetic */ Context hp;
        public final /* synthetic */ int jx;

        /* renamed from: l, reason: collision with root package name */
        public final /* synthetic */ com.byazt.pg.hp f23982l;

        public AnonymousClass2(Context context, com.byazt.pg.hp hpVar, int i2) {
            this.hp = context;
            this.f23982l = hpVar;
            this.jx = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                String unused = e.hp = e.jx(new SSWebView(this.hp).getUserAgentString());
                s.hp("sdk_local_web_ua", e.hp, this.f23982l, this.jx);
            } catch (Exception unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void jx(Context context, com.byazt.pg.hp hpVar, int i2) {
        try {
            hp = jx(WebSettings.getDefaultUserAgent(context));
            s.hp("sdk_local_web_ua", hp, hpVar, i2);
            f23980l.set(false);
        } catch (Throwable unused) {
        }
    }

    public static String hp() {
        String strConcat;
        try {
            strConcat = System.getProperty("http.agent");
        } catch (Exception unused) {
            strConcat = "unKnow";
        }
        StringBuilder sb = new StringBuilder();
        if (strConcat == null) {
            return "";
        }
        int iLastIndexOf = strConcat.lastIndexOf(";");
        if (iLastIndexOf != -1 && strConcat.length() > iLastIndexOf) {
            int i2 = iLastIndexOf + 1;
            String strSubstring = strConcat.substring(0, i2);
            strConcat = strSubstring.concat(" " + Locale.getDefault().getLanguage() + "-" + Locale.getDefault().getCountry() + ";").concat(strConcat.substring(i2));
        }
        int length = strConcat.length();
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = strConcat.charAt(i3);
            if (cCharAt > 31 && cCharAt < 127) {
                sb.append(cCharAt);
            } else {
                sb.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
            }
        }
        return sb.toString();
    }

    private static void l(final Context context, final com.byazt.pg.hp hpVar, final int i2) {
        ((r) com.byazt.ym.j.getService("thread_service")).getIoExecutor().execute(new com.byazt.uid.eb("tt-webua") { // from class: com.byazt.oda.e.1
            @Override // java.lang.Runnable
            public void run() {
                e.jx(context, hpVar, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String jx(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt > 31 && cCharAt < 127) {
                sb.append(cCharAt);
            } else {
                sb.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
            }
        }
        return sb.toString();
    }

    public static String hp(Context context, com.byazt.pg.hp hpVar, boolean z2, boolean z3, int i2) {
        if (!TextUtils.isEmpty(hp)) {
            return hp;
        }
        return hp(z2, context, hpVar, z3, i2);
    }

    private static String hp(boolean z2, Context context, com.byazt.pg.hp hpVar, boolean z3, int i2) {
        String string;
        long j2;
        try {
            String strL = s.l("sdk_local_web_ua", "", hpVar);
            if (TextUtils.isEmpty(strL)) {
                string = null;
                j2 = 0;
            } else {
                JSONObject jSONObject = new JSONObject(strL);
                string = jSONObject.getString(f.a.f3244d);
                j2 = jSONObject.getLong("time");
                hp = string;
            }
        } catch (Throwable unused) {
        }
        if (!z2 && z3) {
            return hp;
        }
        if (TextUtils.isEmpty(string)) {
            jx(context, hpVar, i2);
        } else if (System.currentTimeMillis() - j2 > 259200000 && f23980l.compareAndSet(false, true)) {
            l(context, hpVar, i2);
        }
        return hp;
    }
}
