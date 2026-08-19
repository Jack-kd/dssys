package com.byazt.bs;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.anythink.core.common.f.f;
import com.anythink.core.common.f.n;
import com.byazt.rx.BaseConstants;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_JX_CODEC_LOW_LATENCY, 54})
/* loaded from: classes2.dex */
public class a extends l {

    /* renamed from: j, reason: collision with root package name */
    public final Context f18657j;
    public List<String> jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.jw.w f18658l;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.yc.hp f18659w;

    public a(Context context, com.byazt.yc.hp hpVar, com.byazt.jw.w wVar) {
        super(context, wVar, hpVar == null ? com.byazt.yc.hp.jx() : hpVar);
        this.jx = new ArrayList();
        this.f18657j = context;
        this.f18659w = hpVar;
        this.f18658l = wVar;
        if (hpVar == null) {
            this.f18659w = com.byazt.yc.hp.jx();
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
        com.byazt.giz.hp.hp(list, this.f18658l, hp());
        String strHp = com.byazt.yv.l.hp(getContext(), "DELETE FROM " + hp() + " WHERE " + hp("id", (List<?>) linkedList, 1000, true), this.f18658l);
        hp(linkedList);
        return strHp;
    }

    @Override // com.byazt.cmm.hp
    public boolean hp(com.byazt.jw.l lVar) {
        return com.byazt.giz.hp.w(lVar);
    }

    @Override // com.byazt.bs.l
    public com.byazt.jw.w j() {
        return this.f18658l;
    }

    public byte jx() {
        return (byte) 0;
    }

    public byte l() {
        return (byte) 2;
    }

    private void j(List<com.byazt.jw.l> list) {
        LinkedList linkedList = new LinkedList();
        Iterator<com.byazt.jw.l> it = list.iterator();
        while (it.hasNext()) {
            linkedList.add(it.next().jx());
        }
        com.byazt.yv.l.hp(getContext(), "UPDATE " + hp() + " SET retry = retry+1 WHERE " + hp("id", (List<?>) linkedList, 1000, true), this.f18658l);
    }

    @Override // com.byazt.bs.l
    public String hp() {
        com.byazt.jw.a aVarL = this.f18658l.l();
        if (aVarL != null) {
            return aVarL.l();
        }
        return null;
    }

    public String jx(List<String> list) {
        hp();
        list.size();
        String strHp = com.byazt.yv.l.hp(getContext(), "DELETE FROM " + hp() + " WHERE " + hp("id", (List<?>) list, 1000, true), this.f18658l);
        com.byazt.giz.l.hp(com.byazt.fxy.l.hp.v(), list.size(), this.f18658l);
        hp(list);
        return strHp;
    }

    @Override // com.byazt.bs.jx
    public List<com.byazt.jw.l> hp(int i2, String str, int i3, boolean z2) throws Throwable {
        List<com.byazt.jw.l> list;
        List<com.byazt.jw.l> list2;
        String string;
        String string2;
        int i4;
        long jHp = com.byazt.fxy.hp.hp(i2, getContext(), this.f18658l);
        hp();
        if (jHp <= 0) {
            jHp = 1;
        } else if (jHp > 100) {
            jHp = 100;
        }
        String str2 = str + " DESC limit " + jHp;
        List<com.byazt.jw.l> arrayList = new ArrayList<>();
        this.jx.clear();
        List<com.byazt.jw.l> list3 = arrayList;
        Cursor cursorQuery = com.byazt.yv.l.query(getContext(), hp(), new String[]{"id", f.a.f3244d, "encrypt", "retry"}, null, null, null, null, str2, this.f18658l);
        if (cursorQuery != null) {
            try {
                com.byazt.jw.j jVarJ = this.f18658l.j();
                while (cursorQuery.moveToNext()) {
                    try {
                        string = cursorQuery.getString(cursorQuery.getColumnIndex("id"));
                        string2 = cursorQuery.getString(cursorQuery.getColumnIndex(f.a.f3244d));
                        int i5 = cursorQuery.getInt(cursorQuery.getColumnIndex("encrypt"));
                        i4 = cursorQuery.getInt(cursorQuery.getColumnIndex("retry"));
                        if (i5 == 1) {
                            string2 = jVarJ.hp(string2);
                        }
                    } catch (Throwable th) {
                        th = th;
                        list2 = list3;
                    }
                    if (TextUtils.isEmpty(string2)) {
                        this.jx.add(string);
                    } else {
                        if (list3.size() > 100) {
                            break;
                        }
                        JSONObject jSONObject = new JSONObject(string2);
                        String strOptString = jSONObject.optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA);
                        if (!TextUtils.isEmpty(strOptString)) {
                            JSONObject jSONObject2 = new JSONObject(strOptString);
                            jSONObject2.put(n.b.f3359h, i4);
                            jSONObject2.put("db_rd", System.currentTimeMillis());
                            jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
                        }
                        com.byazt.ai.hp hpVar = new com.byazt.ai.hp(string, jSONObject);
                        hpVar.l(i4 + 1);
                        hpVar.hp(jx());
                        hpVar.l(l());
                        com.byazt.giz.hp.hp(jSONObject, hpVar, this.f18658l, i4);
                        list2 = list3;
                        try {
                            list2.add(hpVar);
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                com.byazt.giz.jx.hp(th.getMessage(), this.f18658l);
                                list3 = list2;
                            } catch (Throwable th3) {
                                th = th3;
                                try {
                                    cursorQuery.close();
                                    if (!this.jx.isEmpty()) {
                                        jx(this.jx);
                                        this.jx.clear();
                                    }
                                    if (com.byazt.giz.hp.hp(i3) && !z2) {
                                        hp(list2, 10, 604800000L);
                                    }
                                } catch (Exception unused) {
                                }
                                throw th;
                            }
                        }
                        list3 = list2;
                    }
                }
                list = list3;
                try {
                    cursorQuery.close();
                    if (!this.jx.isEmpty()) {
                        jx(this.jx);
                        this.jx.clear();
                    }
                    if (com.byazt.giz.hp.hp(i3) && !z2) {
                        hp(list, 10, 604800000L);
                    }
                } catch (Exception unused2) {
                }
            } catch (Throwable th4) {
                th = th4;
                list2 = list3;
            }
        } else {
            list = list3;
        }
        hp();
        list.size();
        return list;
    }

    public static String j(String str) {
        return "CREATE TABLE IF NOT EXISTS " + str + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)";
    }

    @Override // com.byazt.bs.jx
    public List<com.byazt.jw.l> hp(String str, int i2, boolean z2) {
        com.byazt.yc.hp hpVar = this.f18659w;
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
        com.byazt.yv.l.delete(context, strHp, "gen_time <? OR retry >?", new String[]{string, sb2.toString()}, this.f18658l);
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
