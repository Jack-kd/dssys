package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction;

import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.a;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.form.EulerAngleModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.form.ShakeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.form.SlideModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class InteractionModel extends ASNPJsonResponseModel {

    @ng(key = "autoClose")
    private int autoClose;

    @ng(key = "bindEvent")
    private String bindEvent;

    @ng(key = "clickRemoveSensor")
    private boolean clickRemoveSensor;

    @ng(key = "coolTime")
    private long coolTime;

    @ng(key = "countDownTime")
    private int countDownTime;

    @ng(key = "interactionDuration")
    private int duration;

    @ng(key = "eulerAngle")
    private EulerAngleModel eulerAngle;

    @ng(key = "execution")
    private String execution;

    @ng(key = "feedbackAnimation")
    private int feedbackAnimation;

    @ng(key = "hideRemoveSensor")
    private boolean hideRemoveSensor;

    @ng(key = "passivationTime")
    private long passivationTime;

    @ng(key = "passivationType")
    private int passivationType;

    @ng(key = "protectTime")
    private long protectTime;

    @ng(key = "shake")
    private ShakeModel shake;

    @ng(key = "slide")
    private SlideModel slideModel;

    public InteractionModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String getBindEvent() {
        ShakeModel shakeModel;
        return (TextUtils.isEmpty(this.bindEvent) || a.f10877a.equalsIgnoreCase(this.bindEvent)) ? "" : (!"shake".equals(this.bindEvent) || (shakeModel = this.shake) == null || shakeModel.getRegulatoryAngle() == null) ? this.bindEvent : "mixed";
    }

    public long getCoolTime() {
        return this.coolTime;
    }

    public int getCountDownTime() {
        return this.countDownTime;
    }

    public int getDuration() {
        return this.duration;
    }

    public EulerAngleModel getEulerAngle() {
        return this.eulerAngle;
    }

    public String getExecution() {
        return this.execution;
    }

    public int getFeedbackAnimation() {
        return this.feedbackAnimation;
    }

    public long getPassivationTime() {
        return this.passivationTime;
    }

    public int getPassivationType() {
        return this.passivationType;
    }

    public long getProtectTime() {
        return this.protectTime;
    }

    public ShakeModel getShake() {
        return this.shake;
    }

    public SlideModel getSlideModel() {
        return this.slideModel;
    }

    public boolean isAutoSkip() {
        return this.autoClose == 1;
    }

    public boolean isClickRemoveSensor() {
        return this.clickRemoveSensor;
    }

    public boolean isHideRemoveSensor() {
        return this.hideRemoveSensor;
    }
}
