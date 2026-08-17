package com.byazt.jtn;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.ktf.j;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.fourthline.cling.model.ServiceReference;

@com.byazt.kj.hp(hp = {0, 1, 1548, 28})
/* loaded from: classes.dex */
public class hp {
    public final com.byazt.ton.hp hp = new com.byazt.ton.hp(new com.byazt.tnk.hp("csj_mediation"));

    /* renamed from: l, reason: collision with root package name */
    public j.hp f21687l;

    private j.hp hp(Uri uri) {
        if (uri == null) {
            return null;
        }
        String[] strArrSplit = uri.getPath().split(ServiceReference.DELIMITER);
        if (strArrSplit.length < 2) {
            com.byazt.aw.l.hp(MediationConstant.TAG, "uri is error2");
            return null;
        }
        String str = strArrSplit[1];
        if (TextUtils.isEmpty(str)) {
            com.byazt.aw.l.hp(MediationConstant.TAG, "uri is error3");
            return null;
        }
        if (this.f21687l == null) {
            jx jxVar = new jx();
            this.f21687l = jxVar;
            jxVar.init();
        }
        if (str.equals(this.f21687l.getTableName())) {
            return this.f21687l;
        }
        if (str.equals(this.hp.getTableName())) {
            return this.hp;
        }
        com.byazt.aw.l.hp(MediationConstant.TAG, "uri is error4");
        return null;
    }

    public int delete(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        j.hp hpVarHp = hp(uri);
        if (hpVarHp != null) {
            return hpVarHp.delete(uri, str, strArr);
        }
        return 0;
    }

    @Nullable
    public String getType(@NonNull Uri uri) {
        j.hp hpVarHp = hp(uri);
        if (hpVarHp != null) {
            return hpVarHp.getType(uri);
        }
        return null;
    }

    @Nullable
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        j.hp hpVarHp = hp(uri);
        if (hpVarHp != null) {
            return hpVarHp.insert(uri, contentValues);
        }
        return null;
    }

    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        j.hp hpVarHp = hp(uri);
        if (hpVarHp != null) {
            return hpVarHp.query(uri, strArr, str, strArr2, str2);
        }
        return null;
    }

    public int update(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        j.hp hpVarHp = hp(uri);
        if (hpVarHp != null) {
            return hpVarHp.update(uri, contentValues, str, strArr);
        }
        return 0;
    }
}
