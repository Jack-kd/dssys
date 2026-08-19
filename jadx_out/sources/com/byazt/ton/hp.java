package com.byazt.ton;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.byazt.ktf.j;

@com.byazt.kj.hp(hp = {0, 1, 1140, 28})
/* loaded from: classes3.dex */
public class hp implements j.hp {
    public com.byazt.tnk.hp hp;

    public hp(com.byazt.tnk.hp hpVar) {
        this.hp = hpVar;
    }

    @Override // com.byazt.ktf.j.hp
    public int delete(Uri uri, String str, String[] strArr) {
        com.byazt.tnk.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.delete(uri, str, strArr);
        }
        return 0;
    }

    @Override // com.byazt.ktf.j.hp
    public String getTableName() {
        com.byazt.tnk.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.hp();
        }
        return null;
    }

    @Override // com.byazt.ktf.j.hp
    public String getType(Uri uri) {
        com.byazt.tnk.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.getType(uri);
        }
        return null;
    }

    @Override // com.byazt.ktf.j.hp
    public void init() {
    }

    @Override // com.byazt.ktf.j.hp
    public void injectContext(Context context) {
        com.byazt.tnk.hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.hp(context);
        }
    }

    @Override // com.byazt.ktf.j.hp
    public Uri insert(Uri uri, ContentValues contentValues) {
        com.byazt.tnk.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.insert(uri, contentValues);
        }
        return null;
    }

    @Override // com.byazt.ktf.j.hp
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        com.byazt.tnk.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.query(uri, strArr, str, strArr2, str2);
        }
        return null;
    }

    @Override // com.byazt.ktf.j.hp
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        com.byazt.tnk.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.update(uri, contentValues, str, strArr);
        }
        return 0;
    }
}
