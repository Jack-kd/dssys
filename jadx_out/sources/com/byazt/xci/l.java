package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 34})
/* loaded from: classes3.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.jt.l f27334a;

    /* renamed from: e, reason: collision with root package name */
    public long f27335e;
    public int eb;
    public long gu;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public String f27336j;
    public JSONObject jl;
    public int jx = 1;

    /* renamed from: l, reason: collision with root package name */
    public int f27337l;

    /* renamed from: q, reason: collision with root package name */
    public long f27338q;

    /* renamed from: s, reason: collision with root package name */
    public long f27339s;

    /* renamed from: w, reason: collision with root package name */
    public ArrayList<Integer> f27340w;

    public int a() {
        return this.jx;
    }

    public long e() {
        return this.f27338q;
    }

    public com.byazt.jt.l eb() {
        return this.f27334a;
    }

    public long gu() {
        return this.f27335e;
    }

    public String hp() {
        return this.hp;
    }

    public String j() {
        return this.f27336j;
    }

    public long jl() {
        return this.gu;
    }

    public int jx() {
        return this.eb;
    }

    public int l() {
        return this.f27337l;
    }

    public long q() {
        return this.f27339s;
    }

    public ArrayList<Integer> s() {
        return this.f27340w;
    }

    public JSONObject w() {
        return this.jl;
    }

    public void hp(String str) {
        this.hp = str;
    }

    public void j(long j2) {
        this.gu = j2;
    }

    public void jx(int i2) {
        this.jx = i2;
    }

    public void l(int i2) {
        this.eb = i2;
    }

    public void hp(int i2) {
        this.f27337l = i2;
    }

    public void jx(long j2) {
        this.f27335e = j2;
    }

    public void l(String str) {
        this.f27336j = str;
    }

    public void hp(JSONObject jSONObject) {
        this.jl = jSONObject;
    }

    public void l(long j2) {
        this.f27338q = j2;
    }

    public void hp(com.byazt.jt.l lVar) {
        this.f27334a = lVar;
    }

    public void hp(ArrayList<Integer> arrayList) {
        this.f27340w = arrayList;
    }

    public static void hp(l lVar) {
        int iL;
        if (lVar == null || lVar.eb() == null || (iL = lVar.l()) >= 0 || iL == -8) {
            return;
        }
        com.byazt.lf.k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.xci.l.1
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObjectW = l.this.w();
                if (jSONObjectW == null) {
                    jSONObjectW = new JSONObject();
                }
                jSONObjectW.put("from", l.this.a());
                jSONObjectW.put("err_code", l.this.l());
                jSONObjectW.put("err_msg", l.this.j());
                jSONObjectW.put("server_res_str", l.this.hp());
                if (l.this.s() != null && l.this.s().size() > 0) {
                    jSONObjectW.put("mate_unavailable_code_list", new JSONArray((Collection) l.this.s()).toString());
                }
                return com.byazt.jlb.l.l().hp("rd_client_custom_error").hp(l.this.eb().sz()).l(jSONObjectW.toString());
            }
        }, "rd_client_custom_error");
    }

    public void hp(long j2) {
        this.f27339s = j2;
    }
}
