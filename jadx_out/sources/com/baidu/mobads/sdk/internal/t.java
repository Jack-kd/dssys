package com.baidu.mobads.sdk.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import com.anythink.core.common.f.g;
import com.baidu.mobads.sdk.api.CustomNotification;
import com.baidu.mobads.sdk.api.ICommonModuleObj;
import com.kwad.sdk.core.scene.URLPackage;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class t implements ICommonModuleObj {

    /* renamed from: a, reason: collision with root package name */
    private static volatile t f11596a;

    /* renamed from: b, reason: collision with root package name */
    private CustomNotification f11597b = new CustomNotification();

    /* renamed from: c, reason: collision with root package name */
    private com.baidu.mobads.sdk.internal.b.a f11598c = new com.baidu.mobads.sdk.internal.b.a();

    private t() {
    }

    public static t a() {
        if (f11596a == null) {
            synchronized (t.class) {
                try {
                    if (f11596a == null) {
                        f11596a = new t();
                    }
                } finally {
                }
            }
        }
        return f11596a;
    }

    @Override // com.baidu.mobads.sdk.api.ICommonModuleObj
    public Object createModuleObj(String str, JSONObject jSONObject) {
        if (!ICommonModuleObj.KEY_NOTIFICATION.equals(str)) {
            if (ICommonModuleObj.KEY_RESOURCES.equals(str)) {
                return this.f11598c;
            }
            return null;
        }
        if (jSONObject == null) {
            return null;
        }
        Context context = (Context) jSONObject.opt(com.umeng.analytics.pro.g.f49337X);
        int iOptInt = jSONObject.optInt(com.umeng.analytics.pro.cl.f49059n, 0);
        String strOptString = jSONObject.optString(URLPackage.KEY_CHANNEL_ID);
        String strOptString2 = jSONObject.optString("ticker");
        Bitmap bitmap = (Bitmap) jSONObject.opt("icon");
        String strOptString3 = jSONObject.optString(g.a.f3271h);
        String strOptString4 = jSONObject.optString("content");
        String strOptString5 = jSONObject.optString("status");
        boolean zOptBoolean = jSONObject.optBoolean("autoCancel");
        int iOptInt2 = jSONObject.optInt("progress");
        boolean zOptBoolean2 = jSONObject.optBoolean("indeterminate", false);
        int iOptInt3 = jSONObject.optInt("smallIcon");
        String strOptString6 = jSONObject.optString(com.umeng.ccg.a.f49772z);
        PendingIntent pendingIntent = (PendingIntent) jSONObject.opt("pendingIntent");
        return iOptInt == 1 ? this.f11597b.getNewNotification(context, strOptString2, zOptBoolean, bitmap, strOptString3, strOptString4, iOptInt2, zOptBoolean2, strOptString6, pendingIntent, jSONObject.optString("action2"), (PendingIntent) jSONObject.opt("pendingIntent2")) : this.f11597b.getCustomNotification(context, strOptString, strOptString2, bitmap, strOptString3, strOptString4, strOptString5, zOptBoolean, iOptInt2, iOptInt3, strOptString6, pendingIntent);
    }
}
