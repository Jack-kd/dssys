package com.kwai.adclient.kscommerciallogger.snapshot;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class c {
    private final String bvd;
    private final LinkedList<d> bve;
    private int bvf;
    private final int bvg;
    private long bvh;

    public c(String str) {
        this(str, 10);
    }

    public final synchronized long Ys() {
        return this.bvh;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.bvd.equals(((c) obj).bvd);
    }

    public final String getName() {
        return this.bvd;
    }

    public int hashCode() {
        return Objects.hash(this.bvd);
    }

    public synchronized d iM(String str) {
        d dVar;
        try {
            if (this.bve.size() >= this.bvg) {
                this.bve.removeFirst();
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("_");
            int i2 = this.bvf;
            this.bvf = i2 + 1;
            sb.append(i2);
            dVar = new d(sb.toString());
            this.bve.addLast(dVar);
            this.bvh = System.currentTimeMillis();
        } catch (Throwable th) {
            throw th;
        }
        return dVar;
    }

    public synchronized JSONObject iN(String str) {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject();
            try {
                JSONArray jSONArray = new JSONArray();
                Iterator<d> it = this.bve.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next().Yr());
                }
                jSONObject.put("session_id", str);
                jSONObject.put("segment_name", this.bvd);
                jSONObject.put("spans", jSONArray);
                this.bvh = System.currentTimeMillis();
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        } catch (Throwable th) {
            throw th;
        }
        return jSONObject;
    }

    public c(String str, int i2) {
        this.bvd = str == null ? "" : str;
        this.bve = new LinkedList<>();
        this.bvg = Math.min(i2, 30);
        this.bvh = System.currentTimeMillis();
    }
}
