package com.byazt.wp;

import T.d;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.browser.trusted.f;
import androidx.core.app.NotificationCompat;
import androidx.core.content.FileProvider;
import com.anythink.core.common.f.g;
import com.byazt.ik.a;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 207, 30})
/* loaded from: classes3.dex */
public final class jx implements Function<SparseArray<Object>, Object> {
    public static final int CANCELED = -4;
    public static final int DOWNLOAD_COMPLETE_HANDLE = 11;
    public static final int FAILED = -1;
    public static final int START = 2;
    public static final int SUCCESSED = -3;
    public static final int TYPE_ACTIVE = 1;
    public static final int TYPE_COMPLETE = 3;
    public static final int TYPE_PREPARE = 4;
    public static final int TYPE_WAITING = 2;
    public static volatile jx hp;
    public Function<SparseArray<Object>, Object> jx;

    /* renamed from: l, reason: collision with root package name */
    public final Context f27095l;

    private jx(Context context) {
        this.f27095l = context;
    }

    public static jx getInstance() {
        return hp;
    }

    public static jx instance(Context context) {
        if (hp == null) {
            synchronized (jx.class) {
                try {
                    if (hp == null) {
                        hp = new jx(context);
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(5:(2:24|5)|(3:26|6|(3:22|8|9))|20|11|16) */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isMaterialNotification(android.content.Context r4) {
        /*
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            java.lang.String r1 = "#7f0b0198"
            int r1 = android.graphics.Color.parseColor(r1)     // Catch: java.lang.Throwable -> L2d
            int r2 = com.byazt.wp.hp.hp()     // Catch: java.lang.Throwable -> L2d
            int r3 = com.byazt.wp.hp.l()     // Catch: java.lang.Throwable -> L2d
            int[] r2 = new int[]{r2, r3}     // Catch: java.lang.Throwable -> L2d
            int r3 = com.byazt.wp.hp.jx()     // Catch: java.lang.Throwable -> L2d
            android.content.res.TypedArray r4 = r4.obtainStyledAttributes(r3, r2)     // Catch: java.lang.Throwable -> L2d
            int r2 = r4.getColor(r0, r0)     // Catch: java.lang.Throwable -> L2e
            if (r1 != r2) goto L29
            r4.recycle()     // Catch: java.lang.Throwable -> L27
        L27:
            r4 = 1
            return r4
        L29:
            r4.recycle()     // Catch: java.lang.Throwable -> L31
            goto L31
        L2d:
            r4 = 0
        L2e:
            if (r4 == 0) goto L31
            goto L29
        L31:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.wp.jx.isMaterialNotification(android.content.Context):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x04ea  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x04ec  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x04f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.Map<java.lang.String, java.lang.Object> jx(java.util.Map<java.lang.String, java.lang.Object> r27) {
        /*
            Method dump skipped, instructions count: 1357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.wp.jx.jx(java.util.Map):java.util.Map");
    }

    private Map<String, Object> l(Map<String, Object> map) {
        String strConcat;
        String str;
        String str2;
        String str3;
        if (map == null) {
            return null;
        }
        HashMap map2 = new HashMap();
        String str4 = (String) map.get("install_app_name");
        Bitmap bitmap = (Bitmap) map.get("install_icon_bitmap");
        String str5 = (String) map.get("install_action_type");
        Object obj = map.get("install_click_type");
        String str6 = (String) map.get("install_package_name");
        String str7 = (String) map.get("install_tag");
        String str8 = (String) map.get("install_value");
        String str9 = (String) map.get("install_log_extra");
        int iIntValue = obj != null ? ((Integer) obj).intValue() : -1;
        Object obj2 = map.get("install_download_id");
        int iIntValue2 = obj2 != null ? ((Integer) obj2).intValue() : -1;
        Object obj3 = map.get("install_enable_target_34");
        boolean zBooleanValue = obj3 != null ? ((Boolean) obj3).booleanValue() : false;
        RemoteViews remoteViews = new RemoteViews(this.f27095l.getPackageName(), this.f27095l.getResources().getIdentifier("tt_install_notification_layout", "layout", this.f27095l.getPackageName()));
        int iZy = hp.zy();
        int iJl = hp.jl();
        int iK = hp.k();
        int i2 = iIntValue2;
        int iV = hp.v();
        int iU = hp.u();
        if (iIntValue == 1) {
            strConcat = "打开".concat(String.valueOf(str4));
            str = "应用已安装完成";
            str2 = "去打开";
        } else {
            strConcat = "安装".concat(String.valueOf(str4));
            str = "应用已下载完成";
            str2 = "去安装";
        }
        String str10 = str;
        String str11 = strConcat;
        String str12 = str2;
        remoteViews.setTextViewText(iJl, str10);
        remoteViews.setTextViewText(iK, str11);
        remoteViews.setTextViewText(iV, str12);
        int iDi = hp.di();
        if (iDi == 0 && (iDi = hp.b()) == 0) {
            iDi = hp.ns();
        }
        int i3 = iDi;
        remoteViews.setImageViewIcon(iZy, Icon.createWithBitmap(bitmap));
        PendingIntent pendingIntentHp = hp(str5, iIntValue, i2, zBooleanValue, str6, str7, str8, str9);
        remoteViews.setOnClickPendingIntent(iU, pendingIntentHp);
        remoteViews.setOnClickPendingIntent(iV, pendingIntentHp);
        String str13 = "csj_" + this.f27095l.getPackageName();
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                d.a();
                NotificationChannel notificationChannelA = f.a(str13, "csj_install", 4);
                notificationChannelA.setShowBadge(true);
                notificationChannelA.setBypassDnd(true);
                str3 = "notification";
                try {
                    ((NotificationManager) this.f27095l.getSystemService(str3)).createNotificationChannel(notificationChannelA);
                } catch (Throwable th) {
                    th = th;
                    a.hp(th);
                    NotificationCompat.Builder builderHp = hp(str13);
                    builderHp.setStyle(new NotificationCompat.DecoratedCustomViewStyle()).setContentIntent(pendingIntentHp).setSmallIcon(i3).setContentTitle(str10).setContentText(str11).setPriority(1).setDefaults(-1).setVisibility(1).setAutoCancel(true);
                    Notification notificationBuild = builderHp.build();
                    notificationBuild.contentView = remoteViews;
                    map2.put(str3, notificationBuild);
                    return map2;
                }
            } else {
                str3 = "notification";
            }
        } catch (Throwable th2) {
            th = th2;
            str3 = "notification";
        }
        NotificationCompat.Builder builderHp2 = hp(str13);
        builderHp2.setStyle(new NotificationCompat.DecoratedCustomViewStyle()).setContentIntent(pendingIntentHp).setSmallIcon(i3).setContentTitle(str10).setContentText(str11).setPriority(1).setDefaults(-1).setVisibility(1).setAutoCancel(true);
        Notification notificationBuild2 = builderHp2.build();
        notificationBuild2.contentView = remoteViews;
        map2.put(str3, notificationBuild2);
        return map2;
    }

    public <T> T callMethod(Class<T> cls, int i2, Map<String, Object> map) {
        a.l("xgc_dl", "api:".concat(String.valueOf(i2)));
        if (i2 == 0) {
            if (this.jx == null) {
                return (T) Boolean.FALSE;
            }
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, 0);
            sparseArray.put(0, map);
            return (T) this.jx.apply(sparseArray);
        }
        if (i2 == 159) {
            if (map != null) {
                Object obj = map.get("n");
                if (obj instanceof Function) {
                    this.jx = (Function) obj;
                }
            }
            return null;
        }
        if (i2 == 161) {
            return (T) l(map);
        }
        if (i2 == 155) {
            return (T) getCustomUriForFile((String) map.get("custom_authority"), (String) map.get("custom_file_path"));
        }
        if (i2 != 156) {
            return null;
        }
        return (T) hp(map);
    }

    public Uri getCustomUriForFile(String str, String str2) {
        return !TextUtils.isEmpty(str) ? FileProvider.getUriForFile(this.f27095l, str, new File(str2)) : Uri.fromFile(new File(str2));
    }

    public void hp(Map<String, Object> map, int i2) {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, Integer.valueOf(i2));
        sparseArray.put(0, map);
        Function<SparseArray<Object>, Object> function = this.jx;
        if (function != null) {
            function.apply(sparseArray);
        }
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
        int iIntValue = valueSetL.intValue(-99999987);
        Class cls = (Class) valueSetL.objectValue(-99999985, Class.class);
        if (iIntValue == -99999986) {
            return com.byazt.xi.jx.hp().hp(10000, 3).l().sparseArray();
        }
        return callMethod(cls, iIntValue, valueSetL.objectValue(0, Map.class) != null ? (Map) valueSetL.objectValue(0, Map.class) : new HashMap<>());
    }

    private NotificationCompat.Builder hp(String str) {
        if (Build.VERSION.SDK_INT < 26) {
            return new NotificationCompat.Builder(this.f27095l);
        }
        try {
            return new NotificationCompat.Builder(this.f27095l, str);
        } catch (NoSuchMethodError unused) {
            return new NotificationCompat.Builder(this.f27095l);
        }
    }

    private Map<String, Object> hp(Map<String, Object> map) {
        Map<String, Object> map2;
        if (map == null || (map2 = (Map) map.get("params")) == null) {
            return null;
        }
        Map<String, Object> mapJx = jx(map2);
        Object obj = mapJx.get("remote_views");
        Object obj2 = mapJx.get("builder_content_type");
        int iIntValue = ((Integer) map2.get(g.a.f3276m)).intValue();
        String str = (String) map2.get("channel_id");
        int iIntValue2 = ((Integer) map2.get("download_status")).intValue();
        NotificationCompat.Builder builderHp = hp(str);
        builderHp.setWhen(((Long) map2.get("first_time")).longValue());
        Object obj3 = map2.get("notification_group");
        if (obj3 != null && (obj3 instanceof String)) {
            builderHp.setGroup((String) obj3);
            builderHp.setGroupSummary(false);
        }
        builderHp.setStyle(new NotificationCompat.DecoratedCustomViewStyle());
        if (iIntValue == 1 || iIntValue == 4 || iIntValue == 2) {
            builderHp.setContentIntent((PendingIntent) mapJx.get("apa_click_content_intent"));
            builderHp.setAutoCancel(false);
        } else if (iIntValue == 3) {
            builderHp.setAutoCancel(true);
            if (iIntValue2 == -3) {
                Object obj4 = map2.get("auto_cancel");
                if ((obj4 instanceof Boolean) && ((Boolean) obj4).booleanValue()) {
                    builderHp.setAutoCancel(false);
                }
            }
            builderHp.setContentIntent((PendingIntent) mapJx.get("complete_click_content_intent"));
            builderHp.setDeleteIntent((PendingIntent) mapJx.get("hide_click_content_intent"));
        }
        if (iIntValue == 3 && iIntValue2 == -3 && (obj2 instanceof String)) {
            builderHp.setContentText((String) obj2);
        }
        Object obj5 = mapJx.get("builder_small_icon");
        if (obj5 instanceof Integer) {
            builderHp.setSmallIcon(((Integer) obj5).intValue());
        }
        Notification notificationBuild = builderHp.build();
        notificationBuild.contentView = (RemoteViews) obj;
        mapJx.put("notification", notificationBuild);
        return mapJx;
    }

    private Pair<Intent, Boolean> hp(Context context, long j2, boolean z2) {
        if (z2) {
            return new Pair<>(new Intent(context, (Class<?>) ApiDownloadHandleNotificationActivity.class), Boolean.TRUE);
        }
        return new Pair<>(new Intent(context, (Class<?>) ApiDownloadHandlerService.class), Boolean.FALSE);
    }

    private PendingIntent hp(String str, int i2, int i3, boolean z2, String str2) {
        Pair<Intent, Boolean> pairHp = hp(this.f27095l, i3, z2);
        Intent intent = (Intent) pairHp.first;
        intent.setAction(str);
        intent.putExtra("extra_click_download_ids", i3);
        intent.putExtra("extra_click_download_type", i2);
        intent.putExtra("extra_from_notification", true);
        intent.putExtra("extra_package_name", str2);
        return hp(this.f27095l, pairHp, i3);
    }

    private PendingIntent hp(String str, int i2, int i3, boolean z2, String str2, String str3, String str4, String str5) {
        Pair<Intent, Boolean> pairHp = hp(this.f27095l, i3, z2);
        Intent intent = (Intent) pairHp.first;
        intent.setAction(str);
        intent.putExtra("extra_click_download_ids", i3);
        intent.putExtra("extra_click_download_type", i2);
        intent.putExtra("extra_from_notification", true);
        intent.putExtra("extra_package_name", str2);
        intent.putExtra("extra_tag", str3);
        intent.putExtra("extra_value", str4);
        intent.putExtra("extra_log_extra", str5);
        return hp(this.f27095l, pairHp, i3);
    }

    private boolean l(Object obj) {
        return (obj instanceof Integer) && ((Integer) obj).intValue() >= 2;
    }

    private PendingIntent hp(Context context, Pair<Intent, Boolean> pair, int i2) {
        if (((Boolean) pair.second).booleanValue()) {
            return PendingIntent.getActivity(context, i2, (Intent) pair.first, 201326592);
        }
        return PendingIntent.getService(context, i2, (Intent) pair.first, 201326592);
    }

    private boolean hp(Object obj) {
        return (obj instanceof Integer) && ((Integer) obj).intValue() > 0;
    }

    private int hp(int i2, boolean z2) {
        if (z2) {
            return hp.b();
        }
        if (i2 == 1 || i2 == 4) {
            return hp.ns();
        }
        if (i2 == 2) {
            return hp.cx();
        }
        if (i2 == 3) {
            return hp.b();
        }
        return 0;
    }
}
