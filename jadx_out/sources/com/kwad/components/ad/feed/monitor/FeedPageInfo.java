package com.kwad.components.ad.feed.monitor;

import com.ksad.json.annotation.KsJson;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@KsJson
/* loaded from: classes4.dex */
public class FeedPageInfo extends com.kwad.sdk.commercial.c.a implements Serializable {
    private static final long serialVersionUID = -1423277713849754339L;
    public String abParams;
    public int adNum;
    public int callbackType;
    public long convertDuration;
    public int expectedRenderType;
    public String extMsg;
    public long loadDataDuration;
    public int loadStatus;
    public long loadType;
    public List<a> materialInfoList = new ArrayList();
    public int materialType;
    public String materialUrl;
    public long renderDuration;
    public int renderType;
    public long resourceLoadDuration;
    public int status;
    public int type;

    @KsJson
    public static class a extends com.kwad.sdk.core.response.a.a {
        public long creativeId;
        public int materialType;
        public String materialUrl;

        public final a O(int i2) {
            this.materialType = i2;
            return this;
        }

        public final a l(long j2) {
            this.creativeId = j2;
            return this;
        }

        public final a v(String str) {
            this.materialUrl = str;
            return this;
        }
    }

    public FeedPageInfo setAbParams(String str) {
        this.abParams = str;
        return this;
    }

    public FeedPageInfo setAdNum(int i2) {
        this.adNum = i2;
        return this;
    }

    public FeedPageInfo setCallbackType(int i2) {
        this.callbackType = i2;
        return this;
    }

    public FeedPageInfo setConvertDuration(long j2) {
        this.convertDuration = j2;
        return this;
    }

    public FeedPageInfo setExpectedRenderType(int i2) {
        this.expectedRenderType = i2;
        return this;
    }

    public FeedPageInfo setExtMsg(String str) {
        this.extMsg = str;
        return this;
    }

    public FeedPageInfo setLoadDataDuration(long j2) {
        this.loadDataDuration = j2;
        return this;
    }

    public FeedPageInfo setLoadStatus(int i2) {
        this.loadStatus = i2;
        return this;
    }

    public FeedPageInfo setLoadType(long j2) {
        this.loadType = j2;
        return this;
    }

    public FeedPageInfo setMaterialInfoList(List<a> list) {
        this.materialInfoList = list;
        return this;
    }

    public FeedPageInfo setMaterialType(int i2) {
        this.materialType = i2;
        return this;
    }

    public FeedPageInfo setMaterialUrl(String str) {
        this.materialUrl = str;
        return this;
    }

    public FeedPageInfo setRenderDuration(long j2) {
        this.renderDuration = j2;
        return this;
    }

    public FeedPageInfo setRenderType(int i2) {
        this.renderType = i2;
        return this;
    }

    public FeedPageInfo setResourceLoadDuration(long j2) {
        this.resourceLoadDuration = j2;
        return this;
    }

    public FeedPageInfo setStatus(int i2) {
        this.status = i2;
        return this;
    }

    public FeedPageInfo setType(int i2) {
        this.type = i2;
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    public FeedPageInfo setErrorCode(int i2) {
        super.setErrorCode(i2);
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    public FeedPageInfo setErrorMsg(String str) {
        super.setErrorMsg(str);
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    public FeedPageInfo setPosId(long j2) {
        return (FeedPageInfo) super.setPosId(j2);
    }
}
