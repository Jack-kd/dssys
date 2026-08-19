package com.kwad.components.ad.reward.l;

import androidx.annotation.Nullable;
import com.kwad.sdk.utils.ac;
import java.util.Observable;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public abstract class b extends Observable implements c, com.kwad.sdk.core.b {
    private boolean Ct = false;
    protected String Cu;
    protected String Cv;

    private boolean lc() {
        return this.Ct;
    }

    private void ld() {
        setChanged();
        notifyObservers(Boolean.valueOf(this.Ct));
    }

    public boolean isCompleted() {
        return lc();
    }

    public final void kY() {
        if (this.Ct) {
            return;
        }
        this.Ct = true;
        ld();
    }

    public final void kZ() {
        if (this.Ct) {
            this.Ct = false;
            ld();
        }
    }

    @Override // com.kwad.components.ad.reward.l.c
    public final String la() {
        return this.Cu;
    }

    @Override // com.kwad.components.ad.reward.l.c
    public final String lb() {
        return this.Cv;
    }

    public void parseJson(@Nullable JSONObject jSONObject) {
        try {
            this.Ct = jSONObject.optBoolean("selfCompleted");
        } catch (Throwable unused) {
        }
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        ac.putValue(jSONObject, "selfCompleted", this.Ct);
        return jSONObject;
    }
}
