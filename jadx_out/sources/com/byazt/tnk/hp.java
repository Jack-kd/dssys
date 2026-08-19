package com.byazt.tnk;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.byazt.jw.eb;
import com.byazt.jw.q;
import com.byazt.jw.w;
import com.byazt.yv.j;
import com.byazt.yv.jx;
import java.util.Iterator;
import java.util.List;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1996, 28})
/* loaded from: classes3.dex */
public class hp {
    public static String hp = "layerType";

    /* renamed from: j, reason: collision with root package name */
    public w f25896j;
    public Context jx;

    /* renamed from: l, reason: collision with root package name */
    public String f25897l;

    /* renamed from: w, reason: collision with root package name */
    public q f25898w;

    public hp(String str) {
        this.f25897l = str;
        eb ebVarL = com.byazt.mdk.hp.l(str);
        this.f25896j = ebVarL.l();
        this.f25898w = ebVarL.jx();
    }

    private static ContentResolver hp(w wVar) {
        try {
            if (wVar.getContext() != null) {
                return wVar.getContext().getContentResolver();
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    private q jx() {
        if (this.f25898w == null) {
            this.f25898w = com.byazt.mdk.hp.l(this.f25897l).jx();
        }
        return this.f25898w;
    }

    private w l() {
        if (this.f25896j == null) {
            this.f25896j = com.byazt.mdk.hp.l(this.f25897l).l();
        }
        return this.f25896j;
    }

    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getType(android.net.Uri r13) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.tnk.hp.getType(android.net.Uri):java.lang.String");
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    public static void hp(w wVar, boolean z2) {
        if (wVar == null) {
            return;
        }
        try {
            ContentResolver contentResolverHp = hp(wVar);
            if (contentResolverHp != null) {
                contentResolverHp.getType(hp(Uri.parse(l(wVar) + "adLogStart?is_flush=" + z2), wVar));
            }
        } catch (Throwable unused) {
        }
    }

    private static String l(w wVar) {
        String strHp = j.hp(wVar);
        StringBuilder sb = new StringBuilder();
        sb.append(strHp);
        sb.append(ServiceReference.DELIMITER);
        sb.append("csj_mediation".equals(wVar.w()) ? "gromore_ad_log_event" : "ad_log_event");
        sb.append(ServiceReference.DELIMITER);
        return sb.toString();
    }

    public static void hp(com.byazt.jw.l lVar, w wVar) {
        if (lVar == null) {
            return;
        }
        try {
            ContentResolver contentResolverHp = hp(wVar);
            if (contentResolverHp != null) {
                contentResolverHp.getType(hp(Uri.parse(l(wVar) + "adLogDispatch?event=" + jx.hp(lVar.a())), wVar));
            }
        } catch (Throwable th) {
            com.byazt.giz.jx.hp("dispatch event Throwable:" + th.toString(), wVar);
        }
    }

    public static void hp(String str, List<String> list, boolean z2, w wVar, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str) || list == null || list.isEmpty()) {
            return;
        }
        try {
            StringBuilder sb = new StringBuilder();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                sb.append(jx.hp(it.next()));
                sb.append(",");
            }
            String strHp = jx.hp(sb.toString());
            String str2 = "?did=" + String.valueOf(str) + "&track=" + String.valueOf(strHp) + "&replace=" + String.valueOf(z2) + "&extraMate=" + jx.hp(jSONObject.toString());
            ContentResolver contentResolverHp = hp(wVar);
            if (contentResolverHp != null) {
                contentResolverHp.getType(hp(Uri.parse(l(wVar) + "trackAdUrl" + str2), wVar));
            }
        } catch (Throwable unused) {
        }
    }

    public static void hp(String str, w wVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            ContentResolver contentResolverHp = hp(wVar);
            if (contentResolverHp != null) {
                contentResolverHp.getType(hp(Uri.parse(l(wVar) + "trackAdFailed?did=" + String.valueOf(str)), wVar));
            }
        } catch (Throwable unused) {
        }
    }

    public void hp(Context context) {
        this.jx = context;
    }

    public String hp() {
        return "csj_mediation".equals(this.f25897l) ? "gromore_ad_log_event" : "ad_log_event";
    }

    private static Uri hp(Uri uri, w wVar) {
        if (uri == null || wVar == null) {
            return uri;
        }
        try {
            Uri.Builder builderBuildUpon = uri.buildUpon();
            builderBuildUpon.appendQueryParameter(hp, String.valueOf(wVar.zy()));
            return builderBuildUpon.build();
        } catch (Throwable unused) {
            return uri;
        }
    }
}
