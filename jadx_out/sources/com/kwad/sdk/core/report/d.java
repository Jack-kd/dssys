package com.kwad.sdk.core.report;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes4.dex */
public abstract class d implements l<e> {
    private static final String[] aVg = {"count(*)"};
    private static boolean aVh = false;
    protected c aVi;

    public d(c cVar) {
        a(cVar);
    }

    private void a(c cVar) {
        this.aVi = cVar;
    }

    private synchronized void c(e eVar) {
        if (aVh) {
            getTag();
            Objects.toString(eVar);
        }
        try {
            this.aVi.getReadableDatabase().delete(MW(), "actionId=?", new String[]{eVar.actionId});
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.printStackTrace(e2);
        }
    }

    @Override // com.kwad.sdk.core.report.l
    public final synchronized void H(List<e> list) {
        if (aVh) {
            getTag();
            list.size();
        }
        SQLiteDatabase readableDatabase = null;
        try {
            try {
                readableDatabase = this.aVi.getReadableDatabase();
                readableDatabase.beginTransaction();
                Iterator<e> it = list.iterator();
                while (it.hasNext()) {
                    c(it.next());
                }
                readableDatabase.setTransactionSuccessful();
                try {
                    readableDatabase.endTransaction();
                } catch (Exception e2) {
                    com.kwad.sdk.core.d.c.printStackTrace(e2);
                }
            } catch (Exception e3) {
                com.kwad.sdk.core.d.c.printStackTrace(e3);
                if (readableDatabase != null) {
                    try {
                        readableDatabase.endTransaction();
                    } catch (Exception e4) {
                        com.kwad.sdk.core.d.c.printStackTrace(e4);
                    }
                }
            }
        } finally {
        }
    }

    public abstract String MW();

    public abstract String[] MX();

    public final synchronized List<e> MY() {
        Cursor cursorQuery = null;
        try {
            try {
                String[] strArrMX = MX();
                cursorQuery = this.aVi.getReadableDatabase().query(MW(), strArrMX.length == 0 ? null : strArrMX, null, null, null, null, null);
                if (cursorQuery != null) {
                    ArrayList arrayList = new ArrayList();
                    while (cursorQuery.moveToNext()) {
                        try {
                            arrayList.add(f(cursorQuery));
                        } catch (Exception e2) {
                            com.kwad.sdk.core.d.c.printStackTrace(e2);
                        }
                    }
                    if (aVh) {
                        getTag();
                        arrayList.size();
                        int size = arrayList.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayList.get(i2);
                            i2++;
                            getTag();
                            Objects.toString((e) obj);
                        }
                    }
                    return arrayList;
                }
            } catch (Exception e3) {
                com.kwad.sdk.core.d.c.printStackTrace(e3);
            }
            return new ArrayList();
        } finally {
            com.kwad.sdk.crash.utils.b.closeQuietly(cursorQuery);
        }
    }

    @Override // com.kwad.sdk.core.report.l
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final synchronized void o(e eVar) {
        ContentValues contentValues;
        if (aVh) {
            getTag();
            Objects.toString(eVar);
        }
        try {
            contentValues = new ContentValues();
            contentValues.put("actionId", eVar.actionId);
            contentValues.put("aLog", eVar.toJson().toString());
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.printStackTrace(e2);
        }
        try {
            this.aVi.getReadableDatabase().insert(MW(), null, contentValues);
        } catch (Exception e3) {
            com.kwad.sdk.core.d.c.printStackTrace(e3);
        }
    }

    @Override // com.kwad.sdk.core.report.l
    public final synchronized List<e> eE(int i2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = this.aVi.getReadableDatabase().query(MW(), MX(), null, null, null, null, null, "0,200");
                while (cursorQuery.moveToNext()) {
                    try {
                        arrayList.add(f(cursorQuery));
                    } catch (Exception e2) {
                        com.kwad.sdk.core.d.c.printStackTrace(e2);
                    }
                }
            } catch (Exception e3) {
                com.kwad.sdk.core.d.c.printStackTrace(e3);
            }
        } finally {
            com.kwad.sdk.crash.utils.b.closeQuietly(cursorQuery);
        }
        return arrayList;
    }

    public abstract e f(@NonNull Cursor cursor);

    public abstract String getTag();

    @Override // com.kwad.sdk.core.report.l
    public final synchronized long size() {
        long j2;
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = this.aVi.getReadableDatabase().query(MW(), aVg, null, null, null, null, null);
                cursorQuery.moveToFirst();
                j2 = cursorQuery.getLong(0);
            } catch (Exception e2) {
                com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
                j2 = 0;
            }
        } finally {
            com.kwad.sdk.crash.utils.b.closeQuietly(cursorQuery);
        }
        return j2;
    }
}
