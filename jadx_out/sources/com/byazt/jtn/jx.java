package com.byazt.jtn;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.byazt.ktf.j;

@com.byazt.kj.hp(hp = {0, 1, 1548, 30})
/* loaded from: classes.dex */
public class jx implements j.hp {
    public com.byazt.hf.hp hp;

    @Override // com.byazt.ktf.j.hp
    public int delete(Uri uri, String str, String[] strArr) {
        com.byazt.hf.hp hpVar = this.hp;
        if (hpVar == null) {
            return 0;
        }
        hpVar.l(str, strArr);
        return 1;
    }

    @Override // com.byazt.ktf.j.hp
    public String getTableName() {
        return "gromore_prime_rit_adn_perform";
    }

    @Override // com.byazt.ktf.j.hp
    public String getType(Uri uri) {
        return null;
    }

    @Override // com.byazt.ktf.j.hp
    public void init() {
        if (com.byazt.di.l.getContext() != null) {
            this.hp = new com.byazt.hf.hp(com.byazt.di.l.getContext());
        }
    }

    @Override // com.byazt.ktf.j.hp
    public void injectContext(Context context) {
    }

    @Override // com.byazt.ktf.j.hp
    public Uri insert(Uri uri, ContentValues contentValues) {
        com.byazt.hf.hp hpVar = this.hp;
        if (hpVar == null) {
            return null;
        }
        hpVar.hp(contentValues);
        return uri;
    }

    @Override // com.byazt.ktf.j.hp
    public Cursor query(Uri uri, String[] strArr, @Nullable String str, @Nullable String[] strArr2, String str2) {
        com.byazt.hf.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.hp(str, strArr2);
        }
        return null;
    }

    @Override // com.byazt.ktf.j.hp
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
