package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.czhj.sdk.common.Database.SQLiteMTAHelper;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes3.dex */
public class u {
    public double hp;

    /* renamed from: j, reason: collision with root package name */
    public double f27553j;
    public double jx;

    /* renamed from: l, reason: collision with root package name */
    public double f27554l;

    public u(double d2, double d3, double d4, double d5) {
        this.hp = d2;
        this.f27554l = d3;
        this.jx = d4;
        this.f27553j = d5;
    }

    public static u l(u uVar, u uVar2) {
        if (uVar == null) {
            return uVar2;
        }
        if (uVar2 == null) {
            return null;
        }
        double d2 = uVar.hp;
        double d3 = uVar.f27554l;
        double d4 = uVar.jx + d2;
        double d5 = uVar.f27553j + d3;
        double d6 = uVar2.hp;
        double d7 = uVar2.f27554l;
        double d8 = uVar2.jx + d6;
        double d9 = uVar2.f27553j + d7;
        double dMin = Math.min(d2, d6);
        double dMin2 = Math.min(d3, d7);
        return new u(dMin, dMin2, Math.abs(Math.max(d4, d8) - dMin), Math.abs(Math.max(d5, d9) - dMin2));
    }

    public boolean hp(double d2, double d3) {
        double d4 = this.jx;
        if (d4 <= 0.0d) {
            return false;
        }
        double d5 = this.f27553j;
        if (d5 <= 0.0d) {
            return false;
        }
        double d6 = this.hp;
        if (d2 <= d6 || d2 >= d6 + d4) {
            return false;
        }
        double d7 = this.f27554l;
        return d3 > d7 && d3 < d7 + d5;
    }

    public static u hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(SQLiteMTAHelper.TABLE_POINT);
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("size");
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() != 2 || jSONArrayOptJSONArray2 == null || jSONArrayOptJSONArray2.length() != 2) {
            return null;
        }
        return new u(jSONArrayOptJSONArray.optDouble(0), jSONArrayOptJSONArray.optDouble(1), jSONArrayOptJSONArray2.optInt(0), jSONArrayOptJSONArray2.optInt(1));
    }

    public static JSONObject hp(u uVar) throws JSONException {
        if (uVar == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(0, uVar.hp);
            jSONArray.put(1, uVar.f27554l);
            jSONObject.put(SQLiteMTAHelper.TABLE_POINT, jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(0, uVar.jx);
            jSONArray2.put(1, uVar.f27553j);
            jSONObject.put("size", jSONArray2);
            return jSONObject;
        } catch (Exception e2) {
            e2.getMessage();
            return null;
        }
    }

    public static double hp(u uVar, u uVar2) {
        if (uVar == null || uVar2 == null) {
            return 0.0d;
        }
        double d2 = uVar.hp;
        double d3 = uVar.f27554l;
        double d4 = uVar.jx + d2;
        double d5 = uVar.f27553j + d3;
        double d6 = uVar2.hp;
        double d7 = uVar2.f27554l;
        double d8 = uVar2.jx + d6;
        double d9 = uVar2.f27553j + d7;
        double dMax = Math.max(d2, d6);
        double dMax2 = Math.max(d3, d7);
        double dMin = (Math.min(d4, d8) - dMax) * (Math.min(d5, d9) - dMax2);
        if (d3 >= d9 || d4 <= d6 || d5 <= d7 || d2 >= d8) {
            return 0.0d;
        }
        return dMin;
    }
}
