package com.beizi.fusion;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.anythink.core.common.f.f;

/* loaded from: classes2.dex */
public class gq {

    /* renamed from: a, reason: collision with root package name */
    private Context f14138a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f14139b = false;

    /* renamed from: c, reason: collision with root package name */
    String f14140c = null;

    public gq(Context context) {
        this.f14138a = context;
    }

    public String a() {
        Cursor cursorQuery = this.f14138a.getContentResolver().query(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), null, null, null, null);
        if (cursorQuery != null) {
            string = cursorQuery.moveToNext() ? cursorQuery.getString(cursorQuery.getColumnIndex(f.a.f3244d)) : null;
            cursorQuery.close();
        }
        return string;
    }
}
