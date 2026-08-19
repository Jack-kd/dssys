package com.byazt.tnk;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.byazt.jw.q;
import com.byazt.jw.w;
import com.byazt.mdk.jx;
import com.byazt.yv.j;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1996, 34})
/* loaded from: classes3.dex */
public class l {
    public static jx hp;

    /* renamed from: j, reason: collision with root package name */
    public q f25899j;
    public w jx;

    /* renamed from: l, reason: collision with root package name */
    public String f25900l;

    private w hp() {
        if (this.jx == null) {
            this.jx = com.byazt.mdk.hp.l(this.f25900l).l();
        }
        return this.jx;
    }

    private q l() {
        if (this.f25899j == null) {
            this.f25899j = com.byazt.mdk.hp.l(this.f25900l).jx();
        }
        return this.f25899j;
    }

    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getType(android.net.Uri r13) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.tnk.l.getType(android.net.Uri):java.lang.String");
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

    public static jx hp(w wVar) {
        try {
            if (hp == null) {
                hp = wVar.j().gu();
            }
        } catch (Exception unused) {
        }
        return hp;
    }

    private static String l(w wVar) {
        return j.hp(wVar) + "/ad_log_event/";
    }

    public static void hp(w wVar, boolean z2) {
        if (wVar == null) {
            return;
        }
        try {
            jx jxVarHp = hp(wVar);
            if (jxVarHp != null) {
                jxVarHp.getType(Uri.parse(l(wVar) + "adLogStart?is_flush=" + z2));
            }
        } catch (Throwable unused) {
        }
    }

    public static void hp(com.byazt.jw.l lVar, w wVar) {
        if (lVar == null || wVar == null) {
            return;
        }
        try {
            jx jxVarHp = hp(wVar);
            if (jxVarHp != null) {
                jxVarHp.getType(Uri.parse(l(wVar) + "adLogDispatch?event=" + com.byazt.yv.jx.hp(lVar.a())));
            }
        } catch (Throwable th) {
            com.byazt.giz.jx.hp("dispatch event Throwable:" + th.toString(), wVar);
        }
    }

    public static void hp(String str, List<String> list, boolean z2, w wVar) {
        if (list == null || list.isEmpty() || wVar == null) {
            return;
        }
        try {
            StringBuilder sb = new StringBuilder();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                sb.append(com.byazt.yv.jx.hp(it.next()));
                sb.append(",");
            }
            String str2 = "?did=" + String.valueOf(str) + "&track=" + String.valueOf(com.byazt.yv.jx.hp(sb.toString())) + "&replace=" + String.valueOf(z2);
            jx jxVarHp = hp(wVar);
            if (jxVarHp != null) {
                jxVarHp.getType(Uri.parse(l(wVar) + "trackAdUrl" + str2));
            }
        } catch (Throwable unused) {
        }
    }

    public static void hp(String str, w wVar) {
        if (TextUtils.isEmpty(str) || wVar == null) {
            return;
        }
        try {
            jx jxVarHp = hp(wVar);
            if (jxVarHp != null) {
                jxVarHp.getType(Uri.parse(l(wVar) + "trackAdFailed?did=" + String.valueOf(str)));
            }
        } catch (Throwable unused) {
        }
    }
}
