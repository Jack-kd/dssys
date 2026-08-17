package com.anythink.odopt.a.a;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.anythink.core.common.f.f;

/* loaded from: classes2.dex */
public final class u {

    /* renamed from: b, reason: collision with root package name */
    private Context f10625b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f10626c = false;

    /* renamed from: a, reason: collision with root package name */
    String f10624a = null;

    public u(Context context) {
        this.f10625b = context;
    }

    public final String a() {
        try {
            Cursor cursorQuery = this.f10625b.getContentResolver().query(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), null, null, null, null);
            if (cursorQuery != null) {
                string = cursorQuery.moveToNext() ? cursorQuery.getString(cursorQuery.getColumnIndex(f.a.f3244d)) : null;
                cursorQuery.close();
            }
            return string;
        } catch (Exception e2) {
            e2.printStackTrace();
            return string;
        } catch (Throwable th) {
            th.printStackTrace();
            return string;
        }
    }
}
