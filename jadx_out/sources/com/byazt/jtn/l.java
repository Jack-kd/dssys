package com.byazt.jtn;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.byazt.ktf.j;

@com.byazt.kj.hp(hp = {0, 1, 1548, 34})
/* loaded from: classes.dex */
public class l implements j.hp {
    public static volatile l hp;

    /* renamed from: l, reason: collision with root package name */
    public hp f21688l = new hp();

    private l() {
    }

    public static l hp() {
        if (hp == null) {
            synchronized (l.class) {
                try {
                    if (hp == null) {
                        hp = new l();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    @Override // com.byazt.ktf.j.hp
    public int delete(Uri uri, String str, String[] strArr) {
        return this.f21688l.delete(uri, str, strArr);
    }

    @Override // com.byazt.ktf.j.hp
    public String getTableName() {
        return "";
    }

    @Override // com.byazt.ktf.j.hp
    public String getType(Uri uri) {
        return this.f21688l.getType(uri);
    }

    @Override // com.byazt.ktf.j.hp
    public void init() {
    }

    @Override // com.byazt.ktf.j.hp
    public void injectContext(Context context) {
    }

    @Override // com.byazt.ktf.j.hp
    public Uri insert(Uri uri, ContentValues contentValues) {
        return this.f21688l.insert(uri, contentValues);
    }

    @Override // com.byazt.ktf.j.hp
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return this.f21688l.query(uri, strArr, str, strArr2, str2);
    }

    @Override // com.byazt.ktf.j.hp
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return this.f21688l.update(uri, contentValues, str, strArr);
    }
}
