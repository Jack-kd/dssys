package com.byazt.bs;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.anythink.core.common.f.f;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_JX_CODEC_LOW_LATENCY, 94})
/* loaded from: classes2.dex */
public class eb extends l {

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.yc.hp f18660j;
    public List<String> jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.jw.w f18661l;

    public eb(Context context, com.byazt.yc.hp hpVar, com.byazt.jw.w wVar) {
        super(context, wVar, hpVar == null ? com.byazt.yc.hp.jx() : hpVar);
        this.jx = new ArrayList();
        this.f18660j = hpVar;
        this.f18661l = wVar;
        if (hpVar == null) {
            this.f18660j = com.byazt.yc.hp.jx();
        }
    }

    public static String w(String str) {
        return "ALTER TABLE " + str + " ADD COLUMN encrypt INTEGER default 0";
    }

    @Override // com.byazt.bs.jx
    public String delete(List<com.byazt.jw.l> list) {
        if (list == null || list.size() == 0) {
            return "list is empty";
        }
        LinkedList linkedList = new LinkedList();
        Iterator<com.byazt.jw.l> it = list.iterator();
        while (it.hasNext()) {
            linkedList.add(it.next().jx());
        }
        com.byazt.giz.hp.hp(list, this.f18661l, hp());
        String strHp = com.byazt.yv.l.hp(getContext(), "DELETE FROM " + hp() + " WHERE " + hp("id", (List<?>) linkedList, 1000, true), this.f18661l);
        hp(linkedList);
        return strHp;
    }

    @Override // com.byazt.cmm.hp
    public boolean hp(com.byazt.jw.l lVar) {
        return com.byazt.giz.hp.a(lVar);
    }

    @Override // com.byazt.bs.l
    public com.byazt.jw.w j() {
        return this.f18661l;
    }

    public byte jx() {
        return (byte) 2;
    }

    public byte l() {
        return (byte) 1;
    }

    private void j(List<com.byazt.jw.l> list) {
        LinkedList linkedList = new LinkedList();
        Iterator<com.byazt.jw.l> it = list.iterator();
        while (it.hasNext()) {
            linkedList.add(it.next().jx());
        }
        com.byazt.yv.l.hp(getContext(), "UPDATE " + hp() + " SET retry = retry+1 WHERE " + hp("id", (List<?>) linkedList, 1000, true), this.f18661l);
    }

    @Override // com.byazt.bs.l
    public String hp() {
        return this.f18661l.l().j();
    }

    public void jx(List<String> list) {
        hp();
        list.size();
        com.byazt.yv.l.hp(getContext(), "DELETE FROM " + hp() + " WHERE " + hp("id", (List<?>) list, 1000, true), this.f18661l);
        com.byazt.giz.l.hp(com.byazt.fxy.l.hp.v(), list.size(), this.f18661l);
        hp(list);
    }

    @Override // com.byazt.bs.jx
    public List<com.byazt.jw.l> hp(int i2, String str, int i3, boolean z2) {
        long jHp = com.byazt.fxy.hp.hp(i2, getContext(), this.f18661l);
        if (jHp <= 0) {
            jHp = 1;
        } else if (jHp > 100) {
            jHp = 100;
        }
        String str2 = str + " DESC limit " + jHp;
        ArrayList arrayList = new ArrayList();
        this.jx.clear();
        Cursor cursorQuery = com.byazt.yv.l.query(getContext(), hp(), new String[]{"id", f.a.f3244d, "encrypt", "retry"}, null, null, null, null, str2, this.f18661l);
        if (cursorQuery != null) {
            while (true) {
                try {
                    if (cursorQuery.moveToNext()) {
                        try {
                            String string = cursorQuery.getString(cursorQuery.getColumnIndex("id"));
                            String string2 = cursorQuery.getString(cursorQuery.getColumnIndex(f.a.f3244d));
                            int i4 = cursorQuery.getInt(cursorQuery.getColumnIndex("encrypt"));
                            int i5 = cursorQuery.getInt(cursorQuery.getColumnIndex("retry"));
                            if (i4 == 1) {
                                string2 = this.f18661l.j().hp(string2);
                            }
                            if (TextUtils.isEmpty(string2)) {
                                this.jx.add(string);
                            } else {
                                if (arrayList.size() > 100) {
                                    break;
                                }
                                com.byazt.ai.hp hpVar = new com.byazt.ai.hp(string, new JSONObject(string2));
                                hpVar.l(i5 + 1);
                                hpVar.l(jx());
                                hpVar.hp(l());
                                arrayList.add(hpVar);
                            }
                        } catch (Throwable unused) {
                        }
                    }
                } finally {
                    try {
                        cursorQuery.close();
                        if (!this.jx.isEmpty()) {
                            jx(this.jx);
                            this.jx.clear();
                        }
                        if (com.byazt.giz.hp.hp(i3) && !z2) {
                            hp(arrayList, 10, 604800000L);
                        }
                    } catch (Exception unused2) {
                    }
                }
            }
        }
        return arrayList;
    }

    public static String j(String str) {
        return "CREATE TABLE IF NOT EXISTS " + str + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)";
    }

    @Override // com.byazt.bs.jx
    public List<com.byazt.jw.l> hp(String str, int i2, boolean z2) {
        com.byazt.yc.hp hpVar = this.f18660j;
        if (hpVar == null) {
            return new ArrayList();
        }
        return hp(hpVar.l(), str, i2, z2);
    }

    private void hp(int i2, long j2) {
        long jCurrentTimeMillis = System.currentTimeMillis() - j2;
        Context context = getContext();
        String strHp = hp();
        StringBuilder sb = new StringBuilder();
        sb.append(jCurrentTimeMillis);
        String string = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i2);
        com.byazt.yv.l.delete(context, strHp, "gen_time <? OR retry >?", new String[]{string, sb2.toString()}, this.f18661l);
    }

    public void hp(List<com.byazt.jw.l> list, int i2, long j2) {
        if (list == null || list.size() == 0) {
            return;
        }
        try {
            j(list);
            hp(i2, j2);
        } catch (Exception unused) {
        }
    }

    private static String hp(String str, List<?> list, int i2, boolean z2) {
        int i3;
        String str2 = z2 ? " IN " : " NOT IN ";
        String str3 = z2 ? " OR " : " AND ";
        int iMin = Math.min(i2, 1000);
        int size = list.size();
        if (size % iMin == 0) {
            i3 = size / iMin;
        } else {
            i3 = (size / iMin) + 1;
        }
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i4 * iMin;
            String strHp = hp(TextUtils.join("','", list.subList(i5, Math.min(i5 + iMin, size))), "");
            if (i4 != 0) {
                sb.append(str3);
            }
            sb.append(str);
            sb.append(str2);
            sb.append("('");
            sb.append(strHp);
            sb.append("')");
        }
        return hp(sb.toString(), str + str2 + "('')");
    }

    private static String hp(String str, String str2) {
        return !TextUtils.isEmpty(str) ? str : str2;
    }
}
