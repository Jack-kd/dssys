package com.kwad.components.core.request.model;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.components.core.request.j;
import com.kwad.sdk.commercial.convert.e;
import com.kwad.sdk.core.response.model.AdResultData;
import com.kwad.sdk.internal.api.SceneImpl;
import java.util.List;

/* loaded from: classes4.dex */
public final class a {

    @NonNull
    public final ImpInfo abn;

    @NonNull
    public final com.kwad.components.core.request.c ajK;

    @Nullable
    public j ajL;

    @Nullable
    public List<String> ajM;
    public boolean ajN;
    public boolean ajO;

    @Nullable
    public c ajP;
    private String ajQ;

    /* renamed from: com.kwad.components.core.request.model.a$a, reason: collision with other inner class name */
    public static class C0558a {
        public ImpInfo abn;
        public com.kwad.components.core.request.c ajK;
        public boolean ajN;
        public boolean ajO;
        public j ajR;

        public final C0558a a(@NonNull com.kwad.components.core.request.c cVar) {
            this.ajK = cVar;
            return this;
        }

        public final C0558a aY(boolean z2) {
            this.ajN = true;
            return this;
        }

        public final C0558a aZ(boolean z2) {
            this.ajO = z2;
            return this;
        }

        public final C0558a e(ImpInfo impInfo) {
            this.abn = impInfo;
            return this;
        }

        public final a wd() {
            if (com.kwad.components.ad.f.a.pe.booleanValue() && (this.abn == null || this.ajK == null)) {
                throw new IllegalStateException("AdRequestParams build Illegal");
            }
            return new a(this, (byte) 0);
        }

        public final C0558a a(j jVar) {
            this.ajR = jVar;
            return this;
        }
    }

    public /* synthetic */ a(C0558a c0558a, byte b3) {
        this(c0558a);
    }

    public static void a(@NonNull a aVar, AdResultData adResultData, boolean z2) {
        e.a(aVar.abn.adScene, aVar.wc(), adResultData.getAdSource());
        if (adResultData.isAdResultDataEmpty()) {
            aVar.ajK.a(com.kwad.sdk.core.network.e.aTe.errorCode, TextUtils.isEmpty(adResultData.testErrorMsg) ? com.kwad.sdk.core.network.e.aTe.msg : adResultData.testErrorMsg, z2);
        } else {
            aVar.ajK.a(adResultData, z2);
        }
    }

    public final void bi(String str) {
        this.ajQ = str;
    }

    public final int getAdNum() {
        SceneImpl sceneImpl = this.abn.adScene;
        if (sceneImpl != null) {
            return sceneImpl.getAdNum();
        }
        return 1;
    }

    public final int getAdStyle() {
        SceneImpl sceneImpl = this.abn.adScene;
        if (sceneImpl != null) {
            return sceneImpl.adStyle;
        }
        return 0;
    }

    public final long getPosId() {
        SceneImpl sceneImpl = this.abn.adScene;
        if (sceneImpl != null) {
            return sceneImpl.getPosId();
        }
        return -1L;
    }

    @Nullable
    public final j wb() {
        return this.ajL;
    }

    public final String wc() {
        return !TextUtils.isEmpty(this.ajQ) ? this.ajQ : "network_only";
    }

    private a(C0558a c0558a) {
        this.abn = c0558a.abn;
        this.ajK = c0558a.ajK;
        this.ajN = c0558a.ajN;
        this.ajO = c0558a.ajO;
        this.ajL = c0558a.ajR;
    }

    public static void a(@NonNull a aVar, int i2, String str, boolean z2) {
        aVar.ajK.a(i2, str, z2);
        e.a(aVar.getAdStyle(), i2, str, aVar.wc());
    }
}
