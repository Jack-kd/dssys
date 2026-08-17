package com.byazt.fe;

import android.content.ContentValues;
import android.database.Cursor;
import com.anythink.core.common.f.o;
import com.byazt.fe.eb;
import com.byazt.jz.sz;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DEFAULT_VIDEO_BITRATE, 30})
/* loaded from: classes2.dex */
public class jx implements l {
    @Override // com.byazt.fe.l
    public void hp(String str, eb.l lVar, a aVar, eb.hp hpVar, hp hpVar2) {
        Cursor cursorQuery = com.byazt.jnq.hp.query(sz.getContext(), "union_meta_cache", null, "rit =?", new String[]{str}, null, null, "create_time ASC");
        if (cursorQuery != null && cursorQuery.moveToFirst()) {
            int count = (cursorQuery.getCount() - hpVar.j()) + 1;
            if (count > 0) {
                do {
                    String string = cursorQuery.getString(cursorQuery.getColumnIndex("uuid"));
                    if (hpVar2 != null) {
                        hpVar2.hp(new eb.l(cursorQuery.getString(cursorQuery.getColumnIndex("meta_data")), cursorQuery.getLong(cursorQuery.getColumnIndex("create_time")), cursorQuery.getLong(cursorQuery.getColumnIndex(o.a.f3369g)), cursorQuery.getString(cursorQuery.getColumnIndex("uuid"))));
                    }
                    com.byazt.jnq.hp.delete(sz.getContext(), "union_meta_cache", "rit=? AND uuid=?", new String[]{str, string});
                    count--;
                    if (count <= 0) {
                        break;
                    }
                } while (cursorQuery.moveToNext());
            }
            cursorQuery.close();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("rit", str);
        contentValues.put("uuid", lVar.f19706w);
        contentValues.put("create_time", Long.valueOf(lVar.hp));
        contentValues.put("save_version", Integer.valueOf(lVar.f19704j));
        contentValues.put(o.a.f3369g, Long.valueOf(lVar.f19705l));
        contentValues.put("slot_type", hpVar.hp());
        contentValues.put("is_using", Integer.valueOf(aVar.hp ? 1 : 0));
        contentValues.put("priority", Integer.valueOf(aVar.f19694l));
        contentValues.put("ad_index", Integer.valueOf(aVar.jx));
        contentValues.put("meta_data", lVar.jx);
        com.byazt.jnq.hp.insert(sz.getContext(), "union_meta_cache", contentValues);
    }

    @Override // com.byazt.fe.l
    public void l(String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("is_using", (Integer) 0);
        com.byazt.jnq.hp.update(sz.getContext(), "union_meta_cache", contentValues, "rit =?", new String[]{str});
    }

    @Override // com.byazt.fe.l
    public eb.l hp(String str, eb.hp hpVar, long j2, List<String> list) {
        Cursor cursorHp = hp(hpVar, str);
        if (cursorHp == null) {
            return null;
        }
        while (cursorHp.moveToNext()) {
            try {
                try {
                    String string = cursorHp.getString(cursorHp.getColumnIndex("uuid"));
                    if (list == null || string == null || !list.contains(string)) {
                        String string2 = cursorHp.getString(cursorHp.getColumnIndex("meta_data"));
                        long j3 = cursorHp.getLong(cursorHp.getColumnIndex("create_time"));
                        long j4 = cursorHp.getLong(cursorHp.getColumnIndex(o.a.f3369g));
                        if (j2 <= 0 || j3 >= j2) {
                            eb.l lVar = new eb.l(string2, j3, j4, string);
                            cursorHp.close();
                            return lVar;
                        }
                    }
                } catch (Exception e2) {
                    u.hp("RewardFullLoadManager-DB", "db get error", e2);
                }
            } catch (Throwable th) {
                cursorHp.close();
                throw th;
            }
        }
        cursorHp.close();
        return null;
    }

    @Override // com.byazt.fe.l
    public void hp(String str) {
        com.byazt.jnq.hp.delete(sz.getContext(), "union_meta_cache", "rit =?", new String[]{str});
    }

    @Override // com.byazt.fe.l
    public void hp(eb.hp hpVar) {
        com.byazt.jnq.hp.delete(sz.getContext(), "union_meta_cache", "slot_type =?", new String[]{hpVar.hp()});
    }

    @Override // com.byazt.fe.l
    public void hp(String str, eb.hp hpVar, hp hpVar2) {
        Cursor cursorQuery;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (hpVar2 != null && (cursorQuery = com.byazt.jnq.hp.query(sz.getContext(), "union_meta_cache", null, "expire_time <? AND rit =?", new String[]{String.valueOf(jCurrentTimeMillis), str}, null, null, null)) != null) {
            while (cursorQuery.moveToNext()) {
                hpVar2.hp(new eb.l(cursorQuery.getString(cursorQuery.getColumnIndex("meta_data")), cursorQuery.getLong(cursorQuery.getColumnIndex("create_time")), cursorQuery.getLong(cursorQuery.getColumnIndex(o.a.f3369g)), cursorQuery.getString(cursorQuery.getColumnIndex("uuid"))));
            }
            cursorQuery.close();
        }
        if (hpVar.jx()) {
            com.byazt.jnq.hp.delete(sz.getContext(), "union_meta_cache", "rit =? AND (save_version!=? OR expire_time <?)", new String[]{str, "7643", String.valueOf(jCurrentTimeMillis)});
        } else {
            com.byazt.jnq.hp.delete(sz.getContext(), "union_meta_cache", "rit =? AND expire_time <?", new String[]{str, String.valueOf(jCurrentTimeMillis)});
        }
    }

    @Override // com.byazt.fe.l
    public void hp(String str, String str2) {
        com.byazt.jnq.hp.delete(sz.getContext(), "union_meta_cache", "rit =? AND uuid =?", new String[]{str, str2});
    }

    @Override // com.byazt.fe.l
    public void hp(String str, String str2, boolean z2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("is_using", Boolean.valueOf(z2));
        com.byazt.jnq.hp.update(sz.getContext(), "union_meta_cache", contentValues, "rit =? AND uuid =?", new String[]{str, str2});
    }

    @Override // com.byazt.fe.l
    public boolean hp(String str, eb.hp hpVar) {
        Cursor cursorQuery;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (hpVar.jx()) {
            cursorQuery = com.byazt.jnq.hp.query(sz.getContext(), "union_meta_cache", null, "expire_time >? AND rit =? AND save_version =? AND is_using = 0", new String[]{String.valueOf(jCurrentTimeMillis), str, "7643"}, null, null, null);
        } else {
            cursorQuery = com.byazt.jnq.hp.query(sz.getContext(), "union_meta_cache", null, "expire_time >? AND rit =? AND is_using = 0", new String[]{String.valueOf(jCurrentTimeMillis), str}, null, null, null);
        }
        if (cursorQuery != null) {
            cursorQuery.getCount();
            z = cursorQuery.getCount() > 0;
            cursorQuery.close();
        }
        return z;
    }

    private Cursor hp(eb.hp hpVar, String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        int iW = hpVar.w();
        if (iW == 1) {
            if (hpVar.jx()) {
                return com.byazt.jnq.hp.query(sz.getContext(), "union_meta_cache", null, "expire_time >? AND rit =? AND save_version =? AND is_using = 0", new String[]{String.valueOf(jCurrentTimeMillis), str, "7643"}, null, null, "create_time DESC");
            }
            return com.byazt.jnq.hp.query(sz.getContext(), "union_meta_cache", null, "expire_time >? AND rit =? AND is_using = 0", new String[]{String.valueOf(jCurrentTimeMillis), str}, null, null, "create_time DESC");
        }
        if (iW == 2) {
            if (hpVar.jx()) {
                return com.byazt.jnq.hp.query(sz.getContext(), "union_meta_cache", null, "expire_time >? AND rit =? AND save_version =? AND is_using = 0", new String[]{String.valueOf(jCurrentTimeMillis), str, "7643"}, null, null, "priority DESC");
            }
            return com.byazt.jnq.hp.query(sz.getContext(), "union_meta_cache", null, "expire_time >? AND rit =? AND is_using = 0", new String[]{String.valueOf(jCurrentTimeMillis), str}, null, null, "priority DESC");
        }
        if (iW != 3) {
            if (hpVar.jx()) {
                return com.byazt.jnq.hp.query(sz.getContext(), "union_meta_cache", null, "expire_time >? AND rit =? AND save_version =? AND is_using = 0", new String[]{String.valueOf(jCurrentTimeMillis), str, "7643"}, null, null, null);
            }
            return com.byazt.jnq.hp.query(sz.getContext(), "union_meta_cache", null, "expire_time >? AND rit =? AND is_using = 0", new String[]{String.valueOf(jCurrentTimeMillis), str}, null, null, null);
        }
        if (hpVar.jx()) {
            return com.byazt.jnq.hp.query(sz.getContext(), "union_meta_cache", null, "expire_time >? AND rit =? AND save_version =? AND is_using = 0", new String[]{String.valueOf(jCurrentTimeMillis), str, "7643"}, null, null, "ad_index ASC, create_time DESC");
        }
        return com.byazt.jnq.hp.query(sz.getContext(), "union_meta_cache", null, "expire_time >? AND rit =? AND is_using = 0", new String[]{String.valueOf(jCurrentTimeMillis), str}, null, null, "ad_index ASC, create_time DESC");
    }
}
