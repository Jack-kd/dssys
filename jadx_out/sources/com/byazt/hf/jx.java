package com.byazt.hf;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.anythink.core.common.f.a;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.LinkedList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 751, 30})
/* loaded from: classes2.dex */
public class jx {
    public static volatile jx hp;

    /* renamed from: l, reason: collision with root package name */
    public Uri f20691l;

    private jx() {
        if (com.byazt.di.l.getContext() != null) {
            this.f20691l = com.byazt.jnq.hp.hp(Uri.parse("content://" + com.byazt.di.l.getContext().getPackageName() + ".TTMultiProvider/gromore_prime_rit_adn_perform"), "gromore_prime_rit_adn_perform");
        }
    }

    public static jx hp() {
        if (hp == null) {
            synchronized (jx.class) {
                try {
                    if (hp == null) {
                        hp = new jx();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public void insert(String str, String str2, String str3, String str4) {
        if (com.byazt.di.l.getContext() == null || this.f20691l == null) {
            return;
        }
        ContentResolver contentResolver = com.byazt.di.l.getContext().getContentResolver();
        ContentValues contentValues = new ContentValues();
        contentValues.put(MediationConstant.EXTRA_ADN_NAME, str);
        contentValues.put(MediationConstant.KEY_GM_PRIME_RIT, str2);
        contentValues.put("adn_rit", str3);
        contentValues.put("ad_action", str4);
        contentValues.put(a.C0051a.f3216m, Long.valueOf(System.currentTimeMillis()));
        contentResolver.insert(this.f20691l, contentValues);
    }

    public List<l> query(String str, String str2, long j2, long j3) {
        String str3;
        if (com.byazt.di.l.getContext() == null || this.f20691l == null) {
            return null;
        }
        ContentResolver contentResolver = com.byazt.di.l.getContext().getContentResolver();
        String[] strArr = {str, str2, String.valueOf(j2), String.valueOf(j3)};
        if (TextUtils.isEmpty(str)) {
            strArr = new String[]{str2, String.valueOf(j2), String.valueOf(j3)};
            str3 = "prime_rit=? AND time_stamp>=? AND time_stamp<?";
        } else {
            str3 = "adn_name=? AND prime_rit=? AND time_stamp>=? AND time_stamp<?";
        }
        Cursor cursorQuery = contentResolver.query(this.f20691l, null, str3, strArr, null);
        if (cursorQuery == null) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        while (cursorQuery.moveToNext()) {
            try {
                String string = cursorQuery.getString(cursorQuery.getColumnIndex(MediationConstant.EXTRA_ADN_NAME));
                String string2 = cursorQuery.getString(cursorQuery.getColumnIndex(MediationConstant.KEY_GM_PRIME_RIT));
                String string3 = cursorQuery.getString(cursorQuery.getColumnIndex("adn_rit"));
                String string4 = cursorQuery.getString(cursorQuery.getColumnIndex("ad_action"));
                long j4 = cursorQuery.getLong(cursorQuery.getColumnIndex(a.C0051a.f3216m));
                l lVar = new l();
                lVar.jx(string);
                lVar.hp(string2);
                lVar.l(string3);
                lVar.j(string4);
                lVar.hp(j4);
                linkedList.add(lVar);
            } finally {
                cursorQuery.close();
            }
        }
        return linkedList;
    }

    public void hp(String str, long j2) {
        if (com.byazt.di.l.getContext() == null || this.f20691l == null || j2 <= 0) {
            return;
        }
        try {
            com.byazt.di.l.getContext().getContentResolver().delete(this.f20691l, "prime_rit=? AND time_stamp<?", new String[]{str, String.valueOf(j2)});
        } catch (IllegalStateException unused) {
        }
    }
}
