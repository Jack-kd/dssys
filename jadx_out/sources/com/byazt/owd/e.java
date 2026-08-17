package com.byazt.owd;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.byazt.ktf.j;
import com.ubix.ssp.open.UBiXWinPlatform;
import org.fourthline.cling.model.ServiceReference;

@com.byazt.kj.hp(hp = {0, 1, 1061, 45})
/* loaded from: classes3.dex */
public class e implements j.hp {
    public j.hp hp;

    /* renamed from: l, reason: collision with root package name */
    public j.hp f24205l = com.byazt.jtn.l.hp();

    public e(j.hp hpVar) {
        this.hp = hpVar;
    }

    private boolean hp(Uri uri) {
        if (uri == null) {
            return false;
        }
        String[] strArrSplit = uri.getPath().split(ServiceReference.DELIMITER);
        if (strArrSplit.length < 2) {
            return false;
        }
        String str = strArrSplit[1];
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains(UBiXWinPlatform.PLATFORM_GM);
    }

    @Override // com.byazt.ktf.j.hp
    public int delete(Uri uri, String str, String[] strArr) {
        return hp(uri) ? this.f24205l.delete(uri, str, strArr) : this.hp.delete(uri, str, strArr);
    }

    @Override // com.byazt.ktf.j.hp
    public String getTableName() {
        return "";
    }

    @Override // com.byazt.ktf.j.hp
    public String getType(Uri uri) {
        return (hp(uri) ? this.f24205l : this.hp).getType(uri);
    }

    @Override // com.byazt.ktf.j.hp
    public void init() {
    }

    @Override // com.byazt.ktf.j.hp
    public void injectContext(Context context) {
        j.hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.injectContext(context);
        }
        j.hp hpVar2 = this.f24205l;
        if (hpVar2 != null) {
            hpVar2.injectContext(context);
        }
    }

    @Override // com.byazt.ktf.j.hp
    public Uri insert(Uri uri, ContentValues contentValues) {
        return hp(uri) ? this.f24205l.insert(uri, contentValues) : this.hp.insert(uri, contentValues);
    }

    @Override // com.byazt.ktf.j.hp
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return hp(uri) ? this.f24205l.query(uri, strArr, str, strArr2, str2) : this.hp.query(uri, strArr, str, strArr2, str2);
    }

    @Override // com.byazt.ktf.j.hp
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return hp(uri) ? this.f24205l.update(uri, contentValues, str, strArr) : this.hp.update(uri, contentValues, str, strArr);
    }
}
