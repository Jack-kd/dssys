package com.byazt.ton;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.byazt.ktf.j;

@com.byazt.kj.hp(hp = {0, 1, 1140, 30})
/* loaded from: classes3.dex */
public class jx implements j.hp {
    public com.byazt.fgx.j hp = new com.byazt.fgx.j();

    @Override // com.byazt.ktf.j.hp
    public int delete(Uri uri, String str, String[] strArr) {
        return this.hp.delete(uri, str, strArr);
    }

    @Override // com.byazt.ktf.j.hp
    public String getTableName() {
        return this.hp.hp();
    }

    @Override // com.byazt.ktf.j.hp
    public String getType(Uri uri) {
        return this.hp.getType(uri);
    }

    @Override // com.byazt.ktf.j.hp
    public void init() {
    }

    @Override // com.byazt.ktf.j.hp
    public void injectContext(Context context) {
    }

    @Override // com.byazt.ktf.j.hp
    public Uri insert(Uri uri, ContentValues contentValues) {
        return this.hp.insert(uri, contentValues);
    }

    @Override // com.byazt.ktf.j.hp
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return this.hp.query(uri, strArr, str, strArr2, str2);
    }

    @Override // com.byazt.ktf.j.hp
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return this.hp.update(uri, contentValues, str, strArr);
    }
}
