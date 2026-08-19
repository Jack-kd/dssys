package com.byazt.ff;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.jz.sz;
import com.byazt.nke.b;
import com.byazt.nke.u;
import com.byazt.rx.BaseConstants;
import com.byazt.ymw.e;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w implements j {
    public jx hp;

    public w(jx jxVar) {
        this.hp = jxVar;
    }

    private String j(com.byazt.hy.hp hpVar) {
        ApplicationInfo applicationInfo;
        if (!this.hp.l()) {
            return "enable_action_notification=0";
        }
        if (hpVar.a() == 0) {
            return "enable_notification=0";
        }
        Context context = sz.getContext();
        if (context != null && (applicationInfo = context.getApplicationInfo()) != null && applicationInfo.targetSdkVersion >= 33 && Build.VERSION.SDK_INT >= 33 && !com.byazt.sii.w.hp().l(sz.getContext(), "android.permission.POST_NOTIFICATIONS")) {
            return "post_notifications_deny";
        }
        if (hp(1440L, this.hp.a(), 1000 * this.hp.w())) {
            return null;
        }
        return "max_times_limit";
    }

    private String jx(com.byazt.hy.hp hpVar) {
        ApplicationInfo applicationInfo;
        if (!this.hp.hp()) {
            return "enable_install_notification";
        }
        com.byazt.sii.eb ebVarXs = com.byazt.jz.s.u().xs();
        if (ebVarXs != null && !ebVarXs.isCanUseMessage()) {
            return "isCanUseMessage";
        }
        if (hpVar.a() == 0) {
            return "enable_notification=0";
        }
        Context context = sz.getContext();
        if (context != null && (applicationInfo = context.getApplicationInfo()) != null && applicationInfo.targetSdkVersion >= 33 && Build.VERSION.SDK_INT >= 33 && !com.byazt.sii.w.hp().l(sz.getContext(), "android.permission.POST_NOTIFICATIONS")) {
            return "post_notifications_deny";
        }
        if (hp(1440L, this.hp.a(), 1000 * this.hp.w())) {
            return null;
        }
        return "max_times_limit";
    }

    @Override // com.byazt.ff.j
    public boolean l(com.byazt.hy.hp hpVar) {
        String strJ = j(hpVar);
        if (TextUtils.isEmpty(strJ)) {
            hp(hpVar, "pushUnActiveFromMarketMessage");
            return true;
        }
        hp("notification", hpVar, "open", "othershow", strJ, "failure");
        return false;
    }

    @Override // com.byazt.ff.j
    public boolean hp(final com.byazt.hy.hp hpVar) {
        String strJx = jx(hpVar);
        if (TextUtils.isEmpty(strJx)) {
            e.hp().postDelayed(new Runnable() { // from class: com.byazt.ff.w.1
                @Override // java.lang.Runnable
                public void run() {
                    w.this.hp(hpVar, "startUnInstallNotification");
                }
            }, this.hp.j() * 1000);
            return true;
        }
        hp("notification", hpVar, "install", "othershow", strJx, "failure");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final com.byazt.hy.hp hpVar, final String str) {
        if (hpVar == null) {
            return;
        }
        com.byazt.ws.l.hp(hpVar.l()).config(Bitmap.Config.ARGB_4444).type(2).to(new b<Bitmap>() { // from class: com.byazt.ff.w.2
            @Override // com.byazt.nke.b
            public void onFailed(int i2, String str2, Throwable th) {
            }

            @Override // com.byazt.nke.b
            public void onSuccess(u<Bitmap> uVar) {
                if (uVar != null) {
                    Bitmap result = uVar.getResult();
                    final Bitmap bitmapHp = w.hp(result, 10.0f);
                    if (result != null) {
                        final boolean zL = ky.l(hpVar.jx());
                        w.hp("notification", hpVar, zL ? "open" : "install", "othershow", str + "_" + hpVar.jx(), cb.f11292o);
                        com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.ff.w.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                com.byazt.hy.jx.hp(hpVar, "com.csj.install", zL ? 1 : 2, bitmapHp);
                            }
                        });
                    }
                }
            }
        }, 4);
    }

    public static void hp(String str, final com.byazt.hy.hp hpVar, final String str2, String str3, final String str4, final String str5) {
        com.byazt.jdb.j.hp(str, str3, hpVar.s(), hpVar.w(), new com.byazt.dhy.hp() { // from class: com.byazt.ff.w.3
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("type", str2);
                jSONObject2.put("installer_package_name", hpVar.jx());
                if (!TextUtils.isEmpty(str4)) {
                    jSONObject2.put("error_message", str4);
                }
                if (!TextUtils.isEmpty(str5)) {
                    jSONObject2.put("status", str5);
                }
                if (jSONObject != null) {
                    jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2);
                }
            }
        });
    }

    public static Bitmap hp(Bitmap bitmap, float f2) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectF = new RectF(rect);
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawRoundRect(rectF, f2, f2, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return bitmapCreateBitmap;
    }

    public boolean hp(long j2, int i2, long j3) throws NumberFormatException {
        int i3;
        try {
            Long lValueOf = -1L;
            try {
                lValueOf = Long.valueOf(60000 * j2);
                i3 = i2;
            } catch (Exception e2) {
                e2.getMessage();
                i3 = -1;
            }
            if (lValueOf.longValue() >= 0 && i3 >= 0 && lValueOf.longValue() != 0 && i3 != 0) {
                String strHp = hp();
                StringBuilder sb = new StringBuilder();
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (TextUtils.isEmpty(strHp)) {
                    sb.append(jCurrentTimeMillis);
                    hp(sb.toString());
                    return true;
                }
                String[] strArrSplit = strHp.split("_");
                int length = strArrSplit.length;
                if (length < i3) {
                    if (jCurrentTimeMillis - Long.parseLong(strArrSplit[length - 1]) <= j3) {
                        return false;
                    }
                    for (String str : strArrSplit) {
                        sb.append(str);
                        sb.append("_");
                    }
                    sb.append(jCurrentTimeMillis);
                    hp(sb.toString());
                    return true;
                }
                int i4 = length - i3;
                long j4 = Long.parseLong(strArrSplit[i4]);
                if (jCurrentTimeMillis - Long.parseLong(strArrSplit[length - 1]) > j3 && jCurrentTimeMillis - j4 > lValueOf.longValue()) {
                    for (int i5 = i4; i5 < length; i5++) {
                        String str2 = strArrSplit[i5];
                        if (i5 != i4 && !TextUtils.isEmpty(str2)) {
                            sb.append(str2);
                            sb.append("_");
                        }
                    }
                    sb.append(jCurrentTimeMillis);
                    hp(sb.toString());
                    return true;
                }
            }
            return false;
        } catch (Exception e3) {
            e3.getMessage();
            return false;
        }
    }

    public static String hp() {
        return com.byazt.jz.l.hp().get("notification_a", "");
    }

    public static void hp(String str) {
        com.byazt.jz.l.hp().put("notification_a", str);
    }
}
