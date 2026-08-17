package com.kwad.sdk.core.e.a;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.anythink.core.common.f.f;

/* loaded from: classes4.dex */
public final class l {
    private Context mContext;

    public l(Context context) {
        this.mContext = context;
    }

    public final String getOAID() {
        String string = "";
        Cursor cursorQuery = null;
        try {
            cursorQuery = this.mContext.getContentResolver().query(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), null, null, null, null);
            if (cursorQuery != null && cursorQuery.moveToNext()) {
                string = cursorQuery.getString(cursorQuery.getColumnIndex(f.a.f3244d));
                com.kwad.sdk.core.d.c.i("VivoDeviceIDHelper", "getOAID oaid:" + string);
            }
            return string;
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.i("VivoDeviceIDHelper", "getOAID fail");
            com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
            return string;
        } finally {
            h.closeQuietly(cursorQuery);
        }
    }
}
