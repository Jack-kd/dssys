package com.byazt.hk;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import com.anythink.core.common.f.f;
import com.byazt.hk.xs;

@com.byazt.kj.hp(hp = {0, 1, 227, 42})
/* loaded from: classes2.dex */
public final class k implements xs {
    public l<Boolean> hp = new l<Boolean>() { // from class: com.byazt.hk.k.1
        @Override // com.byazt.hk.l
        /* renamed from: jx, reason: merged with bridge method [inline-methods] */
        public Boolean hp(Object... objArr) {
            try {
                PackageManager packageManager = ((Context) objArr[0]).getPackageManager();
                if (packageManager != null) {
                    return Boolean.valueOf(packageManager.resolveContentProvider("com.meizu.flyme.openidsdk", 0) != null);
                }
            } catch (Exception unused) {
            }
            return Boolean.FALSE;
        }
    };

    private String hp(Cursor cursor) {
        if (cursor == null || cursor.isClosed()) {
            return null;
        }
        cursor.moveToFirst();
        int columnIndex = cursor.getColumnIndex(f.a.f3244d);
        if (columnIndex >= 0) {
            return cursor.getString(columnIndex);
        }
        return null;
    }

    @Override // com.byazt.hk.xs
    public xs.hp jx(Context context) {
        Cursor cursorQuery;
        try {
            cursorQuery = context.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{"oaid"}, null);
            if (cursorQuery == null) {
                return null;
            }
            try {
                xs.hp hpVar = new xs.hp();
                hpVar.f20732l = hp(cursorQuery);
                return hpVar;
            } catch (Throwable th) {
                th = th;
                try {
                    com.byazt.gt.e.hp(th);
                    return null;
                } finally {
                    com.byazt.gt.zy.hp(cursorQuery);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
    }

    @Override // com.byazt.hk.xs
    public boolean l(Context context) {
        if (context == null) {
            return false;
        }
        return this.hp.l(context).booleanValue();
    }
}
