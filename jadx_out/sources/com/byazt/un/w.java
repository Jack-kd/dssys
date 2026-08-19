package com.byazt.un;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.byazt.jz.sz;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1167, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public static void hp(ContentValues contentValues) {
        if (contentValues == null) {
            return;
        }
        String asString = contentValues.getAsString("load_id");
        if (!TextUtils.isEmpty(asString) && com.byazt.jnq.hp.update(sz.getContext(), "union_tmax_record", contentValues, "load_id=?", new String[]{asString}) <= 0) {
            com.byazt.jnq.hp.insert(sz.getContext(), "union_tmax_record", contentValues);
        }
    }

    public static void insert(ContentValues contentValues) {
        if (contentValues == null) {
            return;
        }
        com.byazt.jnq.hp.insert(sz.getContext(), "union_tmax_record", contentValues);
    }

    public static Cursor hp(int i2, String str, long j2, String str2) {
        if (TextUtils.isEmpty(str) || j2 <= 0) {
            return null;
        }
        return com.byazt.jnq.hp.query(sz.getContext(), "union_tmax_record", null, "ad_slot_type=? AND ad_slot_id=? AND record_time>=?", new String[]{String.valueOf(i2), str, String.valueOf(j2)}, null, null, str2);
    }

    public static Cursor hp(int i2, long j2, String str) {
        if (j2 <= 0) {
            return null;
        }
        return com.byazt.jnq.hp.query(sz.getContext(), "union_tmax_record", null, "ad_slot_type=? AND record_time>=?", new String[]{String.valueOf(i2), String.valueOf(j2)}, null, null, str);
    }

    public static int hp(long j2) {
        return com.byazt.jnq.hp.delete(sz.getContext(), "union_tmax_record", "record_time<?", new String[]{String.valueOf(j2)});
    }
}
