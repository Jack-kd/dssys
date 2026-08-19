package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.view;

import com.anythink.core.common.f.g;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.view.status.StatusTextModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.view.status.StatusTitleModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class ViewModel extends ASNPJsonResponseModel {

    @ng(key = "animationType")
    private String animationType;

    @ng(key = "assetId")
    private String assetsId;

    @ng(key = "bgColor")
    private String bgColor;

    @ng(key = "borderColor")
    private String borderColor;

    @ng(key = "borderRadius")
    private String borderRadius;

    @ng(key = "borderSize")
    private String borderSize;
    private String cmd5;

    @ng(key = "controlType")
    private String controlType;

    @ng(key = "fontSize")
    private int fontSize;

    @ng(key = "fontWeight")
    private float fontWeight;

    @ng(key = "imageUrl")
    private String imgUrl;

    @ng(key = "interactiveSubTitle")
    private StatusTitleModel interactiveSubTitle;

    @ng(key = "interactiveTitle")
    private StatusTitleModel interactiveTitle;

    @ng(key = "lineCount")
    private int lineCount;

    @ng(key = "lineHeight")
    private float lineHeight;

    @ng(key = "replay")
    private int replay;

    @ng(key = "scrollInterval")
    private int scrollInterval;

    @ng(key = "textAlign")
    private String textAlign;

    @ng(key = "textColor")
    private String textColor;

    @ng(key = g.a.f3271h)
    private String title;

    @ng(key = "titleInfo")
    private StatusTextModel titleInfo;

    @ng(key = "isBlur")
    private boolean useGaussianBlur;

    @ng(key = "voiceOn")
    private int voiceOn;

    public ViewModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String getAnimationType() {
        return this.animationType;
    }

    public String getAssetsId() {
        return this.assetsId;
    }

    public String getBgColor() {
        return this.bgColor;
    }

    public String getBorderColor() {
        return this.borderColor;
    }

    public String getBorderRadius() {
        return this.borderRadius;
    }

    public String getBorderSize() {
        return this.borderSize;
    }

    public String getCMD5() {
        return this.cmd5;
    }

    public String getControlType() {
        return this.controlType;
    }

    public int getFontSize() {
        return this.fontSize;
    }

    public float getFontWeight() {
        return this.fontWeight;
    }

    public String getImageURL() {
        return this.imgUrl;
    }

    public StatusTitleModel getInteractiveSubTitle() {
        return this.interactiveSubTitle;
    }

    public StatusTitleModel getInteractiveTitle() {
        return this.interactiveTitle;
    }

    public int getLineCount() {
        int i2 = this.lineCount;
        if (i2 > 0) {
            return i2;
        }
        return 1;
    }

    public float getLineHeight() {
        return this.lineHeight;
    }

    public int getReplay() {
        return this.replay;
    }

    public int getScrollInterval() {
        return this.scrollInterval;
    }

    public String getTextAlign() {
        return this.textAlign;
    }

    public String getTextColor() {
        return this.textColor;
    }

    public String getTitle() {
        return this.title;
    }

    public StatusTextModel getTitleInfo() {
        return this.titleInfo;
    }

    public boolean isMute() {
        return this.voiceOn <= 0;
    }

    public void setCMD5(String str) {
        this.cmd5 = str;
    }

    public boolean useGaussianBlur() {
        return this.useGaussianBlur;
    }
}
