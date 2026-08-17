package com.byazt.mb;

import android.content.ContentValues;
import android.database.Cursor;
import com.byazt.jz.sz;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsIsChecksumLevel, 34})
/* loaded from: classes3.dex */
public class l {
    public static final l hp = new l();

    public List<hp> hp(long j2) {
        ArrayList arrayList;
        long j3 = j2 - 518400000;
        ArrayList arrayList2 = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = com.byazt.jnq.hp.query(sz.getContext(), "sdk_launch", null, "dev1 > ?", new String[]{String.valueOf(j3)}, null, null, "dev1 DESC");
                if (cursorQuery != null) {
                    while (cursorQuery.moveToNext()) {
                        long j4 = cursorQuery.getLong(cursorQuery.getColumnIndex("dev1"));
                        long j5 = cursorQuery.getLong(cursorQuery.getColumnIndex("dev2"));
                        long j6 = cursorQuery.getLong(cursorQuery.getColumnIndex("dev3"));
                        long j7 = cursorQuery.getLong(cursorQuery.getColumnIndex("dev4"));
                        long j8 = cursorQuery.getLong(cursorQuery.getColumnIndex("dev5"));
                        long j9 = cursorQuery.getLong(cursorQuery.getColumnIndex("dev6"));
                        long j10 = cursorQuery.getLong(cursorQuery.getColumnIndex("dev7"));
                        ArrayList arrayList3 = arrayList2;
                        try {
                            long j11 = cursorQuery.getLong(cursorQuery.getColumnIndex("dev8"));
                            hp hpVar = new hp();
                            hpVar.j(j4);
                            hpVar.w(j5);
                            hpVar.a(j6);
                            hpVar.eb(j7);
                            hpVar.l((int) j8);
                            hpVar.jx(j9);
                            hpVar.hp(j10);
                            hpVar.l(j11);
                            arrayList = arrayList3;
                            try {
                                arrayList.add(hpVar);
                                arrayList2 = arrayList;
                            } catch (Exception unused) {
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                return arrayList;
                            }
                        } catch (Exception unused2) {
                            arrayList = arrayList3;
                        }
                    }
                }
                arrayList = arrayList2;
                if (cursorQuery != null) {
                    return arrayList;
                }
            } catch (Exception unused3) {
                arrayList = arrayList2;
            }
            return arrayList;
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }

    public void insert(hp hpVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("dev1", Long.valueOf(hpVar.q()));
        contentValues.put("dev2", Long.valueOf(hpVar.e()));
        contentValues.put("dev3", Long.valueOf(hpVar.gu()));
        contentValues.put("dev4", Long.valueOf(hpVar.jl()));
        contentValues.put("dev5", Integer.valueOf(hpVar.zy()));
        contentValues.put("dev6", Long.valueOf(hpVar.s()));
        contentValues.put("dev7", Long.valueOf(hpVar.hp()));
        contentValues.put("dev8", Long.valueOf(hpVar.l()));
        com.byazt.jnq.hp.insert(sz.getContext(), "sdk_launch", contentValues);
    }

    public void hp() {
        com.byazt.jnq.hp.delete(sz.getContext(), "sdk_launch", "dev1 < ?", new String[]{String.valueOf(jx.jx().eb() - 2592000000L)});
    }
}
